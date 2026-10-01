.class public Lcom/umeng/analytics/b/m;
.super Ljava/lang/Object;
.source "PreferenceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "umeng_general_config"

.field private static final b:Lcom/umeng/analytics/b/m;


# instance fields
.field private c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/umeng/analytics/b/m;

    invoke-direct {v0}, Lcom/umeng/analytics/b/m;-><init>()V

    sput-object v0, Lcom/umeng/analytics/b/m;->b:Lcom/umeng/analytics/b/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/b/m;
    .locals 2

    .line 37
    const-string/jumbo v0, "umeng_general_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 38
    sget-object v0, Lcom/umeng/analytics/b/m;->b:Lcom/umeng/analytics/b/m;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b/m;->a(Landroid/content/SharedPreferences;)V

    .line 39
    sget-object p0, Lcom/umeng/analytics/b/m;->b:Lcom/umeng/analytics/b/m;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/b/m;
    .locals 2

    .line 33
    new-instance v0, Lcom/umeng/analytics/b/m;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/b/m;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/umeng/analytics/b/m$a;
    .locals 2

    .line 91
    new-instance v0, Lcom/umeng/analytics/b/m$a;

    iget-object v1, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/b/m$a;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    return-object v1
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)[B
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-static {p1}, Lcom/umeng/analytics/b/j;->b(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    return-object v1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/umeng/analytics/b/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

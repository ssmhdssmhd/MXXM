.class public final enum Lcom/umeng/analytics/d/n$e;
.super Ljava/lang/Enum;
.source "Imprint.java"

# interfaces
.implements Lcom/umeng/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/d/n$e;",
        ">;",
        "Lcom/umeng/a/a/a/k;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/d/n$e;

.field public static final enum b:Lcom/umeng/analytics/d/n$e;

.field public static final enum c:Lcom/umeng/analytics/d/n$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/n$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/umeng/analytics/d/n$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/umeng/analytics/d/n$e;

    const-string v1, "property"

    const-string v2, "PROPERTY"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/umeng/analytics/d/n$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/n$e;->a:Lcom/umeng/analytics/d/n$e;

    .line 51
    new-instance v0, Lcom/umeng/analytics/d/n$e;

    const-string/jumbo v1, "version"

    const-string v2, "VERSION"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/umeng/analytics/d/n$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/n$e;->b:Lcom/umeng/analytics/d/n$e;

    .line 52
    new-instance v0, Lcom/umeng/analytics/d/n$e;

    const-string v1, "checksum"

    const-string v2, "CHECKSUM"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v5, v6, v1}, Lcom/umeng/analytics/d/n$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/d/n$e;->c:Lcom/umeng/analytics/d/n$e;

    .line 49
    new-array v0, v6, [Lcom/umeng/analytics/d/n$e;

    sget-object v1, Lcom/umeng/analytics/d/n$e;->a:Lcom/umeng/analytics/d/n$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/d/n$e;->b:Lcom/umeng/analytics/d/n$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/d/n$e;->c:Lcom/umeng/analytics/d/n$e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/umeng/analytics/d/n$e;->g:[Lcom/umeng/analytics/d/n$e;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/d/n$e;->d:Ljava/util/Map;

    .line 57
    const-class v0, Lcom/umeng/analytics/d/n$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/n$e;

    .line 58
    sget-object v2, Lcom/umeng/analytics/d/n$e;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/d/n$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-short p3, p0, Lcom/umeng/analytics/d/n$e;->e:S

    .line 100
    iput-object p4, p0, Lcom/umeng/analytics/d/n$e;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/d/n$e;
    .locals 0

    .line 66
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 72
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/d/n$e;->c:Lcom/umeng/analytics/d/n$e;

    return-object p0

    .line 70
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/d/n$e;->b:Lcom/umeng/analytics/d/n$e;

    return-object p0

    .line 68
    :pswitch_2
    sget-object p0, Lcom/umeng/analytics/d/n$e;->a:Lcom/umeng/analytics/d/n$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/d/n$e;
    .locals 1

    .line 92
    sget-object v0, Lcom/umeng/analytics/d/n$e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/n$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/d/n$e;
    .locals 3

    .line 83
    invoke-static {p0}, Lcom/umeng/analytics/d/n$e;->a(I)Lcom/umeng/analytics/d/n$e;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " doesn\'t exist!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/d/n$e;
    .locals 1

    .line 49
    const-class v0, Lcom/umeng/analytics/d/n$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/d/n$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/d/n$e;
    .locals 1

    .line 49
    sget-object v0, Lcom/umeng/analytics/d/n$e;->g:[Lcom/umeng/analytics/d/n$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/d/n$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/d/n$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 104
    iget-short v0, p0, Lcom/umeng/analytics/d/n$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/umeng/analytics/d/n$e;->f:Ljava/lang/String;

    return-object v0
.end method

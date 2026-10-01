.class public final Lcom/baidu/cyberplayer/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/cyberplayer/utils/r;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/baidu/cyberplayer/utils/p;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/baidu/cyberplayer/utils/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/r;->e:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/utils/r;->a:Lcom/baidu/cyberplayer/utils/r;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/baidu/cyberplayer/utils/r;->a:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/baidu/cyberplayer/utils/r;->b:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/baidu/cyberplayer/utils/r;->c:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/baidu/cyberplayer/utils/r;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/r;->a:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/r;->a:Lcom/baidu/cyberplayer/utils/p;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/r;->a:Ljava/util/List;

    .line 67
    if-nez p1, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/r;->a:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/r;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/baidu/cyberplayer/utils/r;->e:Ljava/lang/String;

    const-string v1, "Error occurs with mContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/p;->a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/p;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/r;->a:Lcom/baidu/cyberplayer/utils/p;

    .line 75
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/r;
    .locals 1

    .line 85
    sget-object v0, Lcom/baidu/cyberplayer/utils/r;->a:Lcom/baidu/cyberplayer/utils/r;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/baidu/cyberplayer/utils/r;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/r;->a:Lcom/baidu/cyberplayer/utils/r;

    .line 91
    :cond_0
    sget-object p0, Lcom/baidu/cyberplayer/utils/r;->a:Lcom/baidu/cyberplayer/utils/r;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 286
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 98
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 99
    return-void

    .line 100
    :cond_0
    sput-object p0, Lcom/baidu/cyberplayer/utils/r;->a:Ljava/lang/String;

    .line 101
    sget-object p0, Lcom/baidu/cyberplayer/utils/r;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/p;->a(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 108
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 109
    return-void

    .line 110
    :cond_0
    sput-object p0, Lcom/baidu/cyberplayer/utils/r;->b:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 117
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 118
    return-void

    .line 119
    :cond_0
    sput-object p0, Lcom/baidu/cyberplayer/utils/r;->c:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 126
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 127
    return-void

    .line 128
    :cond_0
    sput-object p0, Lcom/baidu/cyberplayer/utils/r;->d:Ljava/lang/String;

    .line 129
    return-void
.end method

.class public final Lcom/baidu/cyberplayer/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/cyberplayer/utils/q;

.field public static a:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/baidu/cyberplayer/utils/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/baidu/cyberplayer/utils/q;->a:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/utils/q;->a:Lcom/baidu/cyberplayer/utils/q;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/q;->a:Landroid/content/Context;

    .line 61
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/q;->a:Lcom/baidu/cyberplayer/utils/r;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/q;->a:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/r;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/q;->a:Lcom/baidu/cyberplayer/utils/r;

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/q;
    .locals 1

    .line 129
    sget-object v0, Lcom/baidu/cyberplayer/utils/q;->a:Lcom/baidu/cyberplayer/utils/q;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/baidu/cyberplayer/utils/q;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/q;->a:Lcom/baidu/cyberplayer/utils/q;

    .line 135
    :cond_0
    sget-object p0, Lcom/baidu/cyberplayer/utils/q;->a:Lcom/baidu/cyberplayer/utils/q;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 85
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    sput-object p0, Lcom/baidu/cyberplayer/utils/q;->a:Ljava/lang/String;

    .line 92
    sget-object p0, Lcom/baidu/cyberplayer/utils/q;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/r;->a(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 99
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 100
    return-void

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/r;->b(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 108
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 109
    return-void

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/r;->c(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 117
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 118
    return-void

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/r;->d(Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 205
    return-void
.end method

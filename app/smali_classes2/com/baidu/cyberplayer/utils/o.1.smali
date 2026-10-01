.class public Lcom/baidu/cyberplayer/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/baidu/cyberplayer/utils/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Lcom/baidu/cyberplayer/utils/d;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/d;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/d;->a(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "connectionless"

    if-nez p0, :cond_0

    .line 87
    return-object v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/d;->c()Ljava/lang/String;

    move-result-object p0

    .line 89
    if-nez p0, :cond_1

    .line 90
    return-object v1

    .line 92
    :cond_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/d;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

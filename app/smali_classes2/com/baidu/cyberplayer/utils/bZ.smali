.class public Lcom/baidu/cyberplayer/utils/bZ;
.super Lcom/baidu/cyberplayer/utils/bX;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/an;

.field private a:Lcom/baidu/cyberplayer/utils/ap;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bX;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bZ;->a:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bZ;->a:Lcom/baidu/cyberplayer/utils/an;

    .line 60
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bZ;->a:Lcom/baidu/cyberplayer/utils/ap;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/an;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bZ;->a:Lcom/baidu/cyberplayer/utils/an;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bZ;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/an;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bZ;->a:Lcom/baidu/cyberplayer/utils/an;

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bZ;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

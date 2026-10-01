.class public Lcom/baidu/cyberplayer/utils/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    const-string v1, "allowedValueRange"

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/W;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/W;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/W;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/W;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "minimum"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/W;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "maximum"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/baidu/cyberplayer/utils/bf;
.super Lcom/baidu/cyberplayer/utils/bB;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/be;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bB;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bf;->a(Lcom/baidu/cyberplayer/utils/be;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/bf;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bf;-><init>(Lcom/baidu/cyberplayer/utils/be;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bf;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bf;->b()I

    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bf;->d(I)V

    .line 63
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bf;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/be;->a()V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bf;->d(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public abstract a()Z
.end method

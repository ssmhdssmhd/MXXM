.class public Lcom/baidu/cyberplayer/utils/ao;
.super Lcom/baidu/cyberplayer/utils/al;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/al;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/al;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ao;->a(Lcom/baidu/cyberplayer/utils/G;)V

    .line 40
    return-void
.end method

.method private c()Lcom/baidu/cyberplayer/utils/cj;
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ao;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    return-object v1

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    return-object v1

    .line 53
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    return-object v1

    .line 56
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    return-object v1

    .line 58
    :cond_3
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public q()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ao;->c()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    const-string v0, ""

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

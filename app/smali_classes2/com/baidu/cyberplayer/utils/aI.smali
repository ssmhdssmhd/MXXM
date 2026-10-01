.class public Lcom/baidu/cyberplayer/utils/aI;
.super Lcom/baidu/cyberplayer/utils/I;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/I;-><init>()V

    .line 29
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aI;->e(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/I;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/I;-><init>(Lcom/baidu/cyberplayer/utils/I;)V

    .line 35
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 1

    .line 77
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/utils/aG;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aI;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aI;->b(I)V

    .line 54
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aI;->a(J)V

    .line 55
    return-void
.end method

.method public d()J
    .locals 2

    .line 82
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aI;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aG;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 63
    const-string v0, "SID"

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/aG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aI;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aI;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aG;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

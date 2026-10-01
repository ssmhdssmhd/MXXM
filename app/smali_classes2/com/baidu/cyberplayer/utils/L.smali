.class public Lcom/baidu/cyberplayer/utils/L;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/J;

.field private a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/J;Ljava/net/Socket;)V
    .locals 1

    .line 31
    const-string v0, "Cyber.HTTPServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/L;->a:Lcom/baidu/cyberplayer/utils/J;

    .line 33
    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/L;->a:Ljava/net/Socket;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 42
    new-instance v0, Lcom/baidu/cyberplayer/utils/M;

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/L;->a:Ljava/net/Socket;

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/M;-><init>(Ljava/net/Socket;)V

    .line 43
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/M;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    return-void

    .line 45
    :cond_0
    new-instance v1, Lcom/baidu/cyberplayer/utils/G;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/G;-><init>()V

    .line 46
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/M;)V

    .line 47
    :cond_1
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/G;->r()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 48
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/L;->a:Lcom/baidu/cyberplayer/utils/J;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/J;->a(Lcom/baidu/cyberplayer/utils/G;)V

    .line 49
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/G;->q()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    nop

    .line 52
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/M;->b()Z

    .line 53
    return-void
.end method

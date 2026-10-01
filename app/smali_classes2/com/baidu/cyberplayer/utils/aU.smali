.class public Lcom/baidu/cyberplayer/utils/aU;
.super Lcom/baidu/cyberplayer/utils/aK;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/Z;

.field private a:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aK;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Lcom/baidu/cyberplayer/utils/Z;

    .line 64
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Ljava/lang/Thread;

    .line 35
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aU;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/aK;-><init>(Ljava/lang/String;I)V

    .line 48
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Lcom/baidu/cyberplayer/utils/Z;

    .line 64
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Ljava/lang/Thread;

    .line 41
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aU;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/Z;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Lcom/baidu/cyberplayer/utils/Z;

    return-object v0
.end method

.method public a()V
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.SSDPSearchResponseSocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aU;->a()Ljava/net/DatagramSocket;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Ljava/lang/Thread;

    .line 93
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/Z;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Lcom/baidu/cyberplayer/utils/Z;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/baidu/cyberplayer/utils/aS;)Z
    .locals 0

    .line 116
    invoke-virtual {p3}, Lcom/baidu/cyberplayer/utils/aS;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/cyberplayer/utils/aU;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILcom/baidu/cyberplayer/utils/aT;)Z
    .locals 0

    .line 107
    invoke-virtual {p3}, Lcom/baidu/cyberplayer/utils/aT;->j()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/cyberplayer/utils/aU;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Ljava/lang/Thread;

    .line 99
    return-void
.end method

.method public run()V
    .locals 3

    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aU;->a()Lcom/baidu/cyberplayer/utils/Z;

    move-result-object v1

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/aU;->a:Ljava/lang/Thread;

    if-ne v2, v0, :cond_2

    .line 73
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 74
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aU;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/Z;->b(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 79
    :cond_1
    goto :goto_0

    .line 80
    :cond_2
    :goto_1
    return-void
.end method

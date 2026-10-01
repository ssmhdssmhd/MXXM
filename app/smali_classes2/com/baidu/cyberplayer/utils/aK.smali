.class public Lcom/baidu/cyberplayer/utils/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private a:Ljava/lang/String;

.field private a:Ljava/net/DatagramSocket;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aK;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/aK;->a(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Z

    .line 64
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/aP;
    .locals 3

    .line 244
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 245
    new-instance v2, Lcom/baidu/cyberplayer/utils/aP;

    invoke-direct {v2, v1, v0}, Lcom/baidu/cyberplayer/utils/aP;-><init>([BI)V

    .line 246
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aP;->a(Ljava/lang/String;)V

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/baidu/cyberplayer/utils/aP;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    nop

    .line 255
    return-object v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/lang/String;

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/DatagramSocket;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public a()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Z

    return v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 6

    .line 128
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aK;->c()Z

    .line 132
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v5, p2, 0x1

    :try_start_1
    invoke-direct {v3, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 137
    new-instance p2, Ljava/net/DatagramSocket;

    invoke-direct {p2, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    nop

    .line 172
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aK;->a(Ljava/lang/String;)V

    .line 174
    return v2

    .line 143
    :catch_0
    move-exception p2

    move p2, v5

    goto :goto_1

    .line 150
    :catch_1
    move-exception p1

    .line 153
    return v0

    .line 143
    :catch_2
    move-exception v3

    .line 146
    :goto_1
    add-int/2addr v1, v2

    .line 147
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 148
    return v0

    .line 154
    :cond_0
    goto :goto_0

    .line 139
    :catch_3
    move-exception p1

    .line 142
    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 223
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 224
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-direct {v0, v1, p3, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 225
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    nop

    .line 235
    const/4 p1, 0x1

    return p1

    .line 227
    :catch_0
    move-exception p1

    .line 228
    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    if-eqz p2, :cond_0

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addr = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    invoke-virtual {p3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/ca;->b(Ljava/lang/String;)V

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "port = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    invoke-virtual {p3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/ca;->b(Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 233
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aK;->c()Z

    .line 116
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    nop

    .line 123
    const/4 v0, 0x1

    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 202
    return v1

    .line 205
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aK;->a:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    nop

    .line 213
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aK;->c()Z

    .line 78
    return-void
.end method

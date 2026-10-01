.class public Lcom/baidu/cyberplayer/utils/aJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/net/InetSocketAddress;

.field private a:Ljava/net/MulticastSocket;

.field private a:Ljava/net/NetworkInterface;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    .line 56
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    .line 57
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/NetworkInterface;

    .line 66
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aP;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 253
    new-instance v2, Lcom/baidu/cyberplayer/utils/aP;

    invoke-direct {v2, v1, v0}, Lcom/baidu/cyberplayer/utils/aP;-><init>([BI)V

    .line 254
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aJ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aP;->a(Ljava/lang/String;)V

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    nop

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/baidu/cyberplayer/utils/aP;->a(J)V

    .line 265
    return-object v2

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    const-string v1, ""

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/NetworkInterface;

    if-nez v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 88
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 90
    instance-of v4, v0, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_2
    goto :goto_0

    .line 95
    :cond_3
    return-object v1

    .line 85
    :cond_4
    :goto_1
    return-object v1
.end method

.method public a()Ljava/net/InetAddress;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Z

    return v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/G;)Z
    .locals 2

    .line 243
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/cyberplayer/utils/aJ;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 170
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/cyberplayer/utils/aJ;->a(Ljava/lang/String;ILjava/net/InetAddress;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 171
    :catch_0
    move-exception p1

    .line 172
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Z

    .line 174
    return p1
.end method

.method public a(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 3

    .line 148
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    .line 149
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 150
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 151
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 152
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    .line 153
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/NetworkInterface;

    .line 154
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    iget-object p2, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    iget-object p3, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/NetworkInterface;

    invoke-virtual {p1, p2, p3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    nop

    .line 163
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Z

    .line 164
    return v1

    .line 156
    :catch_0
    move-exception p1

    .line 157
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Z

    .line 160
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 208
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 209
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 210
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V

    .line 214
    :goto_0
    new-instance p2, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    invoke-direct {p2, p3, p1, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 216
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 217
    invoke-virtual {v0, p2}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 218
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    nop

    .line 224
    const/4 p1, 0x1

    return p1

    .line 220
    :catch_0
    move-exception p1

    .line 221
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 222
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aJ;->a()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 185
    return v1

    .line 188
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/NetworkInterface;

    invoke-virtual {v0, v2, v3}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 189
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aJ;->a:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    nop

    .line 197
    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aJ;->b()Z

    .line 76
    return-void
.end method

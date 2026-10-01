.class public Lcom/baidu/cyberplayer/utils/aP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private a:Ljava/lang/String;

.field private a:Ljava/net/DatagramPacket;

.field public a:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:Ljava/net/DatagramPacket;

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/aP;->a:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:[B

    .line 44
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:Ljava/net/DatagramPacket;

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public a()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/net/DatagramPacket;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public a()Ljava/net/InetAddress;
    .locals 5

    .line 190
    nop

    .line 191
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->c()Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 193
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 194
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_2

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, "127.0.0.1"

    .line 200
    :cond_2
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 201
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/baidu/cyberplayer/utils/aP;->a:J

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aP;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public a()Z
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public a()[B
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:[B

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:[B

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 124
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:[B

    .line 127
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aP;->a:[B

    return-object v0
.end method

.method public b()I
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "MX"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aL;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "HOST"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/av;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aw;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "Location"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aw;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "MAN"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "ST"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "NT"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "NTS"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v0

    const-string v1, "USN"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aP;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

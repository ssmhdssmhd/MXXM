.class public Lcom/baidu/cyberplayer/utils/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field public static a:Z

.field private static b:Ljava/lang/String;

.field public static b:Z

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->a:Z

    .line 47
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/cyberplayer/utils/Q;->b:Z

    .line 48
    sput-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->c:Z

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/baidu/cyberplayer/utils/Q;->a:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/baidu/cyberplayer/utils/Q;->b:Ljava/lang/String;

    return-void
.end method

.method public static final a()I
    .locals 4

    .line 117
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    nop

    .line 122
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 123
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 125
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 126
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 128
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/net/InetAddress;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    goto :goto_0

    .line 136
    :cond_3
    goto :goto_2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 137
    :goto_2
    return v0
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/baidu/cyberplayer/utils/Q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 5

    .line 192
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :cond_0
    nop

    .line 197
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 200
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 201
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 203
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/net/InetAddress;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    goto :goto_1

    .line 205
    :cond_1
    if-ge v1, p0, :cond_2

    .line 206
    add-int/lit8 v1, v1, 0x1

    .line 207
    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-object p0

    .line 214
    :cond_3
    goto :goto_0

    .line 216
    :catch_0
    move-exception p0

    :cond_4
    nop

    .line 217
    const-string p0, ""

    return-object p0
.end method

.method public static final a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 306
    nop

    .line 307
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 1

    .line 63
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sput-object p0, Lcom/baidu/cyberplayer/utils/Q;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 69
    :goto_0
    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 86
    sget-object v0, Lcom/baidu/cyberplayer/utils/Q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 228
    instance-of p0, p0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 229
    const/4 p0, 0x1

    return p0

    .line 230
    :cond_0
    return v0

    .line 232
    :catch_0
    move-exception p0

    .line 233
    return v0
.end method

.method private static final a(Ljava/net/InetAddress;)Z
    .locals 3

    .line 97
    sget-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 99
    return v1

    .line 101
    :cond_0
    sget-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->b:Z

    if-ne v0, v2, :cond_1

    .line 102
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 103
    return v1

    .line 105
    :cond_1
    sget-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->c:Z

    if-ne v0, v2, :cond_2

    .line 106
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    .line 107
    return v1

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p0

    if-nez p0, :cond_3

    .line 110
    return v1

    .line 112
    :cond_3
    return v2
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/baidu/cyberplayer/utils/Q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/baidu/cyberplayer/utils/Q;->b:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    .line 239
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 240
    instance-of p0, p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 241
    const/4 p0, 0x1

    return p0

    .line 242
    :cond_0
    return v0

    .line 244
    :catch_0
    move-exception p0

    .line 245
    return v0
.end method

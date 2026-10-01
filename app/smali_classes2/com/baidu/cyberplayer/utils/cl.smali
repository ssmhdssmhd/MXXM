.class public abstract Lcom/baidu/cyberplayer/utils/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-object p1

    .line 106
    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Lcom/baidu/cyberplayer/utils/cm;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/cm;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public abstract a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 118
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object p1

    .line 121
    :catch_0
    move-exception p1

    .line 122
    new-instance v0, Lcom/baidu/cyberplayer/utils/cm;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/cm;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public a(Ljava/net/URL;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    .line 57
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 61
    const/16 v1, 0x1388

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 62
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 63
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 64
    const-string v1, "Content-Length"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "HOST"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object v1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Lcom/baidu/cyberplayer/utils/cm;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/cm;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

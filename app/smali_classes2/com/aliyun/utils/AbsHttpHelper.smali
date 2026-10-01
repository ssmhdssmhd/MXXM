.class public abstract Lcom/aliyun/utils/AbsHttpHelper;
.super Ljava/lang/Object;
.source "AbsHttpHelper.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doHttpGet(Ljava/lang/String;)V
    .locals 6
    .param p1, "serverURL"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 38
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 40
    .local v3, "urlConnection":Ljava/net/URLConnection;
    instance-of v4, v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 62
    if-eqz v1, :cond_0

    .line 64
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v4

    .line 70
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 41
    :cond_1
    return-void

    .line 44
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    .line 45
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 46
    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 48
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 50
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 51
    .local v4, "responseCode":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 52
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 53
    invoke-virtual {p0, v1}, Lcom/aliyun/utils/AbsHttpHelper;->handleOKInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 56
    invoke-virtual {p0, v1}, Lcom/aliyun/utils/AbsHttpHelper;->handleErrorInputStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .end local v4    # "responseCode":I
    :goto_1
    if-eqz v1, :cond_4

    .line 64
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    goto :goto_2

    .line 65
    :catch_1
    move-exception v2

    .line 70
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 71
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 62
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 58
    :catch_2
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "HttpClientUtil"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 64
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 67
    goto :goto_4

    .line 65
    :catch_3
    move-exception v2

    .line 70
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 71
    goto :goto_3

    .line 74
    :cond_6
    :goto_5
    return-void

    .line 62
    :goto_6
    if-eqz v1, :cond_7

    .line 64
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 67
    goto :goto_7

    .line 65
    :catch_4
    move-exception v3

    .line 70
    :cond_7
    :goto_7
    if-eqz v0, :cond_8

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    goto :goto_9

    :goto_8
    throw v2

    :goto_9
    goto :goto_8
.end method

.method private doHttpsGet(Ljava/lang/String;)V
    .locals 6
    .param p1, "serverURL"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v1, 0x0

    .line 80
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 82
    .local v3, "urlConnection":Ljava/net/URLConnection;
    instance-of v4, v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 104
    if-eqz v1, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v4

    .line 112
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 83
    :cond_1
    return-void

    .line 86
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    move-object v0, v4

    .line 87
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 88
    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 89
    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 90
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 92
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    .line 93
    .local v4, "responseCode":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 95
    invoke-virtual {p0, v1}, Lcom/aliyun/utils/AbsHttpHelper;->handleOKInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 98
    invoke-virtual {p0, v1}, Lcom/aliyun/utils/AbsHttpHelper;->handleErrorInputStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .end local v4    # "responseCode":I
    :goto_1
    if-eqz v1, :cond_4

    .line 106
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 109
    goto :goto_2

    .line 107
    :catch_1
    move-exception v2

    .line 112
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 113
    :goto_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_5

    .line 104
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 100
    :catch_2
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "HttpClientUtil"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 106
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    goto :goto_4

    .line 107
    :catch_3
    move-exception v2

    .line 112
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 113
    goto :goto_3

    .line 116
    :cond_6
    :goto_5
    return-void

    .line 104
    :goto_6
    if-eqz v1, :cond_7

    .line 106
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 109
    goto :goto_7

    .line 107
    :catch_4
    move-exception v3

    .line 112
    :cond_7
    :goto_7
    if-eqz v0, :cond_8

    .line 113
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    goto :goto_9

    :goto_8
    throw v2

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 21
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lcom/aliyun/utils/AbsHttpHelper;->doHttpsGet(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-direct {p0, p1}, Lcom/aliyun/utils/AbsHttpHelper;->doHttpGet(Ljava/lang/String;)V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract handleErrorInputStream(Ljava/io/InputStream;)V
.end method

.method protected abstract handleOKInputStream(Ljava/io/InputStream;)V
.end method

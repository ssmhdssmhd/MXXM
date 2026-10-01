.class public Lcom/aliyun/utils/HttpClientHelper;
.super Ljava/lang/Object;
.source "HttpClientHelper.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static sThreadCachePool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCustomHeaders:[Ljava/lang/String;

.field private mHttpProxy:Ljava/lang/String;

.field private mNetworkTimeout:I

.field private mReferer:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private urlConnection:Ljava/net/URLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/aliyun/utils/HttpClientHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 32
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    .line 34
    const/16 v1, 0x2710

    iput v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 35
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/utils/HttpClientHelper;

    .line 24
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorStream()Ljava/io/InputStream;
    .locals 2

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 171
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 7
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "urlConnection":Ljava/net/URLConnection;
    const/4 v1, 0x0

    .line 214
    .local v1, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 215
    .local v2, "proxy":Ljava/net/Proxy;
    :try_start_0
    iget-object v3, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 217
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, "proxyUrl":Ljava/net/URL;
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 219
    .local v4, "sa":Ljava/net/SocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v5

    .line 222
    .end local v3    # "proxyUrl":Ljava/net/URL;
    .end local v4    # "sa":Ljava/net/SocketAddress;
    goto :goto_0

    .line 220
    :catch_0
    move-exception v3

    .line 225
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 226
    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {v1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "urlConnection":Ljava/net/URLConnection;
    .local v3, "urlConnection":Ljava/net/URLConnection;
    goto :goto_1

    .line 229
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .restart local v0    # "urlConnection":Ljava/net/URLConnection;
    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .end local v0    # "urlConnection":Ljava/net/URLConnection;
    .restart local v3    # "urlConnection":Ljava/net/URLConnection;
    move-object v0, v3

    .line 231
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .restart local v0    # "urlConnection":Ljava/net/URLConnection;
    :goto_1
    nop

    instance-of v3, v0, Ljava/net/HttpURLConnection;

    if-nez v3, :cond_2

    .line 232
    const/4 v3, 0x0

    return-object v3

    .line 235
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 236
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 237
    iget v4, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 238
    iget v4, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    .end local v2    # "proxy":Ljava/net/Proxy;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_2

    .line 239
    :catch_1
    move-exception v2

    .line 243
    :goto_2
    return-object v0
.end method

.method private getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 7
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "urlConnection":Ljava/net/URLConnection;
    const/4 v1, 0x0

    .line 251
    .local v1, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 252
    .local v2, "proxy":Ljava/net/Proxy;
    :try_start_0
    iget-object v3, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 254
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 255
    .local v3, "proxyUrl":Ljava/net/URL;
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 256
    .local v4, "sa":Ljava/net/SocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v5

    .line 259
    .end local v3    # "proxyUrl":Ljava/net/URL;
    .end local v4    # "sa":Ljava/net/SocketAddress;
    goto :goto_0

    .line 257
    :catch_0
    move-exception v3

    .line 262
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 263
    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "urlConnection":Ljava/net/URLConnection;
    .local v3, "urlConnection":Ljava/net/URLConnection;
    goto :goto_1

    .line 266
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .restart local v0    # "urlConnection":Ljava/net/URLConnection;
    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .end local v0    # "urlConnection":Ljava/net/URLConnection;
    .restart local v3    # "urlConnection":Ljava/net/URLConnection;
    move-object v0, v3

    .line 268
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .restart local v0    # "urlConnection":Ljava/net/URLConnection;
    :goto_1
    nop

    instance-of v3, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v3, :cond_2

    .line 269
    const/4 v3, 0x0

    return-object v3

    .line 272
    :cond_2
    move-object v3, v0

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 273
    .local v3, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 274
    iget v4, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 275
    iget v4, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 278
    .end local v2    # "proxy":Ljava/net/Proxy;
    .end local v3    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    goto :goto_2

    .line 276
    :catch_1
    move-exception v2

    .line 280
    :goto_2
    return-object v0
.end method

.method private getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "responseCode":I
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v1, v1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 181
    :cond_1
    :goto_0
    return v0
.end method

.method public static post(Ljava/lang/String;[B)[B
    .locals 10
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "body"    # [B

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "urlConnection":Ljava/net/URLConnection;
    const/4 v1, 0x0

    .line 287
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 289
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    .line 291
    move-object v4, v0

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 292
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 293
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 294
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 295
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 296
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 297
    if-eqz p1, :cond_1

    .line 298
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 299
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 300
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 301
    .local v5, "os":Ljava/io/OutputStream;
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V

    .line 302
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 303
    .end local v5    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .line 304
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 307
    :goto_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_5

    .line 308
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 309
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 310
    .local v5, "buffer":[B
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v7

    .line 312
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "bytesRead":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 313
    invoke-virtual {v2, v5, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 315
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .local v6, "bytes":[B
    nop

    .line 323
    if-eqz v1, :cond_3

    .line 324
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 331
    :catch_0
    move-exception v7

    goto :goto_4

    .line 327
    :cond_3
    :goto_3
    nop

    .line 328
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    nop

    .line 334
    :goto_4
    if-eqz v0, :cond_4

    .line 335
    move-object v7, v0

    check-cast v7, Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v6

    .line 323
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "buffer":[B
    .end local v6    # "bytes":[B
    .end local v8    # "bytesRead":I
    :cond_5
    if-eqz v1, :cond_6

    .line 324
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 331
    :catch_1
    move-exception v3

    goto :goto_6

    .line 327
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 328
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 333
    :cond_7
    nop

    .line 334
    :goto_6
    if-eqz v0, :cond_d

    .line 335
    :goto_7
    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c

    .line 322
    :catchall_0
    move-exception v3

    .line 323
    if-eqz v1, :cond_8

    .line 324
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_8

    .line 331
    :catch_2
    move-exception v4

    goto :goto_9

    .line 327
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 328
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 333
    :cond_9
    nop

    .line 334
    :goto_9
    if-eqz v0, :cond_a

    .line 335
    move-object v4, v0

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v3

    .line 319
    :catch_3
    move-exception v3

    .line 323
    if-eqz v1, :cond_b

    .line 324
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_a

    .line 331
    :catch_4
    move-exception v3

    goto :goto_b

    .line 327
    :cond_b
    :goto_a
    if-eqz v2, :cond_c

    .line 328
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 333
    :cond_c
    nop

    .line 334
    :goto_b
    if-eqz v0, :cond_d

    .line 335
    goto :goto_7

    .line 338
    :cond_d
    :goto_c
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public doGet()Ljava/lang/String;
    .locals 10

    .line 65
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aliyun/utils/HttpClientHelper;->getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aliyun/utils/HttpClientHelper;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    goto :goto_0

    .line 70
    :cond_1
    iput-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-nez v0, :cond_2

    .line 74
    return-object v1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    const-string v2, "Referer"

    iget-object v3, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    .line 87
    .local v5, "header":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 88
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "splitHeaders":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 90
    iget-object v7, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    aget-object v8, v6, v3

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v5    # "header":Ljava/lang/String;
    .end local v6    # "splitHeaders":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    :cond_6
    const/4 v0, 0x0

    .line 96
    .local v0, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 97
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 100
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 102
    .local v4, "response":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/utils/HttpClientHelper;->getResponseCode()I

    move-result v5

    .line 104
    .local v5, "responseCode":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_b

    .line 105
    iget-object v6, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v0, v6

    .line 107
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v6

    .line 108
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .end local v4    # "response":Ljava/lang/StringBuilder;
    .local v6, "response":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 111
    .local v4, "line":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    if-eqz v7, :cond_7

    .line 112
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 115
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 150
    :catch_0
    move-exception v7

    goto :goto_4

    .line 143
    :cond_8
    :goto_3
    nop

    .line 144
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 147
    nop

    .line 148
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    nop

    .line 153
    :goto_4
    iget-object v7, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v7, :cond_a

    .line 154
    iget-object v7, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v7, v7, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_9

    .line 155
    iget-object v7, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v7, Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 156
    :cond_9
    iget-object v7, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v7, v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_a

    .line 157
    iget-object v7, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_a
    :goto_5
    return-object v1

    .line 118
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .local v4, "response":Ljava/lang/StringBuilder;
    :cond_b
    :try_start_2
    invoke-direct {p0}, Lcom/aliyun/utils/HttpClientHelper;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v0, v6

    .line 121
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v6

    .line 122
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .end local v4    # "response":Ljava/lang/StringBuilder;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 125
    .local v4, "line":Ljava/lang/String;
    :goto_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    if-eqz v7, :cond_c

    .line 126
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 128
    :cond_c
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "StatusCode"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string v8, "ResponseStr"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    if-eqz v0, :cond_d

    .line 140
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 150
    :catch_1
    move-exception v8

    goto :goto_8

    .line 143
    :cond_d
    :goto_7
    nop

    .line 144
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 147
    nop

    .line 148
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 152
    nop

    .line 153
    :goto_8
    iget-object v8, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v8, :cond_f

    .line 154
    iget-object v8, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v8, v8, Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_e

    .line 155
    iget-object v8, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v8, Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    .line 156
    :cond_e
    iget-object v8, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v8, v8, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_f

    .line 157
    iget-object v8, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_f
    :goto_9
    return-object v1

    .line 138
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "responseCode":I
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    goto :goto_d

    .line 135
    :catch_2
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "HttpClientUtil"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_10

    .line 140
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_a

    .line 150
    :catch_3
    move-exception v4

    goto :goto_b

    .line 143
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 144
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 147
    :cond_11
    if-eqz v3, :cond_12

    .line 148
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 152
    :cond_12
    nop

    .line 153
    :goto_b
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v4, :cond_14

    .line 154
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v4, v4, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_13

    .line 155
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c

    .line 156
    :cond_13
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v4, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_14

    .line 157
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 161
    :cond_14
    :goto_c
    return-object v1

    .line 139
    :goto_d
    if-eqz v0, :cond_15

    .line 140
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_e

    .line 150
    :catch_4
    move-exception v4

    goto :goto_f

    .line 143
    :cond_15
    :goto_e
    if-eqz v2, :cond_16

    .line 144
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 147
    :cond_16
    if-eqz v3, :cond_17

    .line 148
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 152
    :cond_17
    nop

    .line 153
    :goto_f
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v4, :cond_19

    .line 154
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v4, v4, Ljava/net/HttpURLConnection;

    if-nez v4, :cond_18

    .line 156
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    instance-of v4, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_19

    .line 157
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_10

    .line 155
    :cond_18
    iget-object v4, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 157
    :cond_19
    :goto_10
    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0
    .param p1, "customHeaders"    # [Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0
    .param p1, "refer"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 48
    iput p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 49
    return-void
.end method

.method public setUerAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "ua"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public stop()V
    .locals 3

    .line 186
    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpClientHelper stop().... urlConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/utils/HttpClientHelper$1;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/HttpClientHelper$1;-><init>(Lcom/aliyun/utils/HttpClientHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 207
    :cond_0
    return-void
.end method

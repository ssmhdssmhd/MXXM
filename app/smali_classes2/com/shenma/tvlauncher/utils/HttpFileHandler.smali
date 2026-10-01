.class public Lcom/shenma/tvlauncher/utils/HttpFileHandler;
.super Ljava/lang/Object;
.source "HttpFileHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/HttpFileHandler;->assetManager:Landroid/content/res/AssetManager;

    .line 37
    return-void
.end method

.method private response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 51
    const-string v0, "?"

    const-string/jumbo v1, "text/html; charset=UTF-8"

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "target":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/utils/HttpFileHandler;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "url":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/index.html"

    if-nez v4, :cond_0

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    :cond_0
    move-object v3, v5

    .line 57
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 59
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .end local v3    # "url":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/HttpFileHandler;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 61
    .local v3, "in":Ljava/io/InputStream;
    const/16 v4, 0xc8

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 62
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v5, -0x1

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 63
    .local v4, "body":Lorg/apache/http/entity/InputStreamEntity;
    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "url":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "body":Lorg/apache/http/entity/InputStreamEntity;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    const/16 v3, 0x193

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 83
    new-instance v3, Lorg/apache/http/entity/EntityTemplate;

    new-instance v4, Lcom/shenma/tvlauncher/utils/HttpFileHandler$2;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/utils/HttpFileHandler$2;-><init>(Lcom/shenma/tvlauncher/utils/HttpFileHandler;)V

    invoke-direct {v3, v4}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 94
    .local v3, "body":Lorg/apache/http/entity/EntityTemplate;
    invoke-virtual {v3, v1}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 95
    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_1

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "body":Lorg/apache/http/entity/EntityTemplate;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/16 v3, 0x194

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 66
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/entity/EntityTemplate;

    new-instance v5, Lcom/shenma/tvlauncher/utils/HttpFileHandler$1;

    invoke-direct {v5, p0, v3}, Lcom/shenma/tvlauncher/utils/HttpFileHandler$1;-><init>(Lcom/shenma/tvlauncher/utils/HttpFileHandler;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 79
    .local v4, "body":Lorg/apache/http/entity/EntityTemplate;
    invoke-virtual {v4, v1}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 96
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "body":Lorg/apache/http/entity/EntityTemplate;
    :goto_0
    nop

    .line 97
    :goto_1
    return-void
.end method

.method private sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 107
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local p1    # "uri":Ljava/lang/String;
    .local v0, "uri":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0    # "uri":Ljava/lang/String;
    .restart local p1    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    const-string v1, "ISO-8859-1"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .end local p1    # "uri":Ljava/lang/String;
    .local v1, "uri":Ljava/lang/String;
    move-object v0, v1

    .line 115
    .end local v1    # "uri":Ljava/lang/String;
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 111
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "method":Ljava/lang/String;
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Lorg/apache/http/MethodNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/utils/HttpFileHandler;->response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 48
    return-void
.end method

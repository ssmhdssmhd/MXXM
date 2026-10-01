.class public Lnet/tsz/afinal/http/SyncRequestHandler;
.super Ljava/lang/Object;
.source "SyncRequestHandler.java"


# instance fields
.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private final entityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

.field private executionCount:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "charset"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    invoke-direct {v0}, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->entityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->executionCount:I

    .line 40
    iput-object p1, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 41
    iput-object p2, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 42
    iput-object p3, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->charset:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private makeRequestWithRetries(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;
    .locals 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, "retry":Z
    const/4 v1, 0x0

    .line 48
    .local v1, "cause":Ljava/io/IOException;
    iget-object v2, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    .line 49
    .local v2, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    nop

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    :try_start_0
    iget-object v4, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v5, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v4, p1, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 52
    .local v4, "response":Lorg/apache/http/HttpResponse;
    iget-object v5, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->entityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    iget-object v7, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->charset:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v7}, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 59
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/NullPointerException;
    iget v4, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->executionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->executionCount:I

    iget-object v5, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0

    .line 56
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 57
    .local v3, "e":Ljava/io/IOException;
    move-object v1, v3

    .line 58
    iget v4, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->executionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->executionCount:I

    iget-object v5, p0, Lnet/tsz/afinal/http/SyncRequestHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 53
    :catch_2
    move-exception v4

    .line 54
    .local v4, "e":Ljava/net/UnknownHostException;
    move-object v1, v4

    .line 55
    nop

    .line 65
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :goto_1
    return-object v3
.end method


# virtual methods
.method public varargs sendRequest([Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Lorg/apache/http/client/methods/HttpUriRequest;

    .line 71
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/http/SyncRequestHandler;->makeRequestWithRetries(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/net/ConnectException;
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/net/ConnectException;
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lnet/tsz/afinal/http/HttpHandler;
.super Lnet/tsz/afinal/core/AsyncTask;
.source "HttpHandler.java"

# interfaces
.implements Lnet/tsz/afinal/http/entityhandler/EntityCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/tsz/afinal/core/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lnet/tsz/afinal/http/entityhandler/EntityCallBack;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4


# instance fields
.field private final callback:Lnet/tsz/afinal/http/AjaxCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/tsz/afinal/http/AjaxCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isResume:Z

.field private final mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

.field private final mStrEntityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

.field private targetUrl:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lnet/tsz/afinal/http/AjaxCallBack;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lnet/tsz/afinal/http/AjaxCallBack<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    .local p3, "callback":Lnet/tsz/afinal/http/AjaxCallBack;, "Lnet/tsz/afinal/http/AjaxCallBack<TT;>;"
    invoke-direct {p0}, Lnet/tsz/afinal/core/AsyncTask;-><init>()V

    .line 44
    new-instance v0, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    invoke-direct {v0}, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mStrEntityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    .line 45
    new-instance v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    invoke-direct {v0}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    .line 51
    iput-boolean v0, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    .line 55
    iput-object p1, p0, Lnet/tsz/afinal/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 56
    iput-object p2, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 57
    iput-object p3, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    .line 58
    iput-object p4, p0, Lnet/tsz/afinal/http/HttpHandler;->charset:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)V
    .locals 11
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .line 169
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 170
    .local v0, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 175
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 170
    if-lt v1, v2, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response status error code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v8, 0x1a0

    if-ne v2, v8, :cond_0

    iget-boolean v2, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    if-eqz v2, :cond_0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " \n maybe you have download complete."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_0
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    aput-object v2, v6, v4

    aput-object v1, v6, v3

    invoke-virtual {p0, v6}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 178
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 179
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 180
    .local v2, "responseBody":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lnet/tsz/afinal/http/HttpHandler;->time:J

    .line 182
    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 183
    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    iget-object v9, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    iget-boolean v10, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    invoke-virtual {v8, v1, p0, v9, v10}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    goto :goto_0

    .line 186
    :cond_2
    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->mStrEntityHandler:Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;

    iget-object v9, p0, Lnet/tsz/afinal/http/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v8, v1, p0, v9}, Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .line 190
    :cond_3
    :goto_0
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v5

    aput-object v2, v9, v4

    invoke-virtual {p0, v9}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "responseBody":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    aput-object v1, v6, v4

    aput-object v2, v6, v3

    invoke-virtual {p0, v6}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 197
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private makeRequestWithRetries(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    iget-boolean v0, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "downloadFile":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 66
    .local v1, "fileLen":J
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 69
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RANGE"

    invoke-interface {p1, v4, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v0    # "downloadFile":Ljava/io/File;
    .end local v1    # "fileLen":J
    :cond_1
    const/4 v0, 0x1

    .line 74
    .local v0, "retry":Z
    const/4 v1, 0x0

    .line 75
    .local v1, "cause":Ljava/io/IOException;
    iget-object v2, p0, Lnet/tsz/afinal/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    .line 76
    .local v2, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    nop

    :goto_0
    if-eqz v0, :cond_3

    .line 78
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Lnet/tsz/afinal/http/HttpHandler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    iget-object v4, p0, Lnet/tsz/afinal/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v5, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v4, p1, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 80
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lnet/tsz/afinal/http/HttpHandler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    invoke-direct {p0, v4}, Lnet/tsz/afinal/http/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    return-void

    .line 96
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 98
    iget v5, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v5, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0

    .line 91
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NPE in HttpClient"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 95
    iget v5, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v5, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .end local v4    # "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 88
    :catch_2
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    move-object v1, v4

    .line 90
    iget v5, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lnet/tsz/afinal/http/HttpHandler;->executionCount:I

    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v5, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 85
    :catch_3
    move-exception v4

    .line 86
    .local v4, "e":Ljava/net/UnknownHostException;
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v4, v5, v3

    const-string v3, "unknownHostException\uff1acan\'t resolve host"

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 87
    return-void

    .line 104
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :cond_3
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public callBack(JJZ)V
    .locals 11
    .param p1, "count"    # J
    .param p3, "current"    # J
    .param p5, "mustNoticeUI"    # Z

    .line 203
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    invoke-virtual {v0}, Lnet/tsz/afinal/http/AjaxCallBack;->isProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p5, :cond_0

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v5, v2, v0

    aput-object v6, v2, v3

    invoke-virtual {p0, v2}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 208
    .local v4, "thisTime":J
    iget-wide v6, p0, Lnet/tsz/afinal/http/HttpHandler;->time:J

    sub-long v6, v4, v6

    iget-object v8, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    invoke-virtual {v8}, Lnet/tsz/afinal/http/AjaxCallBack;->getRate()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    .line 209
    iput-wide v4, p0, Lnet/tsz/afinal/http/HttpHandler;->time:J

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    aput-object v7, v2, v0

    aput-object v8, v2, v3

    invoke-virtual {p0, v2}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 214
    .end local v4    # "thisTime":J
    :cond_1
    :goto_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .line 109
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    array-length v3, p1

    if-ne v3, v1, :cond_0

    .line 110
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->targetUrl:Ljava/lang/String;

    .line 111
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lnet/tsz/afinal/http/HttpHandler;->isResume:Z

    .line 114
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-virtual {p0, v5}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 115
    aget-object v4, p1, v3

    check-cast v4, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v4}, Lnet/tsz/afinal/http/HttpHandler;->makeRequestWithRetries(Lorg/apache/http/client/methods/HttpUriRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v4

    .line 118
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object v4, v1, v2

    aput-object v6, v1, v0

    invoke-virtual {p0, v1}, Lnet/tsz/afinal/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 121
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isStop()Z
    .locals 1

    .line 157
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    invoke-virtual {v0}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->isStop()Z

    move-result v0

    return v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 6
    .param p1, "values"    # [Ljava/lang/Object;

    .line 132
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, "update":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/http/AjaxCallBack;->onSuccess(Ljava/lang/Object;)V

    .line 149
    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Throwable;

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lnet/tsz/afinal/http/AjaxCallBack;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 145
    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3, v4, v5, v1, v2}, Lnet/tsz/afinal/http/AjaxCallBack;->onLoading(JJ)V

    .line 141
    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lnet/tsz/afinal/http/HttpHandler;->callback:Lnet/tsz/afinal/http/AjaxCallBack;

    invoke-virtual {v1}, Lnet/tsz/afinal/http/AjaxCallBack;->onStart()V

    .line 137
    nop

    .line 153
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 154
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    .line 165
    .local p0, "this":Lnet/tsz/afinal/http/HttpHandler;, "Lnet/tsz/afinal/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lnet/tsz/afinal/http/HttpHandler;->mFileEntityHandler:Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->setStop(Z)V

    .line 166
    return-void
.end method

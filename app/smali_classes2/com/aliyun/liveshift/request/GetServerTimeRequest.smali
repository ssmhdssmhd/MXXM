.class public Lcom/aliyun/liveshift/request/GetServerTimeRequest;
.super Lcom/aliyun/utils/BaseRequest;
.source "GetServerTimeRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetServerTimeRequest"


# instance fields
.field private httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

.field private mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/aliyun/utils/BaseRequest$OnRequestListener<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p3, "l":Lcom/aliyun/utils/BaseRequest$OnRequestListener;, "Lcom/aliyun/utils/BaseRequest$OnRequestListener<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p3}, Lcom/aliyun/utils/BaseRequest;-><init>(Landroid/content/Context;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    .line 30
    iput-object p2, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->mHost:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method


# virtual methods
.method public runInBackground()V
    .locals 11

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/openapi/getutc?lhs_start=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "requestUrl":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->wantStop:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 45
    .local v1, "responseStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/aliyun/utils/HttpClientHelper;

    invoke-direct {v3, v0}, Lcom/aliyun/utils/HttpClientHelper;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    .line 46
    iget-object v3, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    invoke-virtual {v3}, Lcom/aliyun/utils/HttpClientHelper;->doGet()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "request fail"

    if-eqz v3, :cond_1

    .line 48
    :try_start_1
    sget-object v3, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v3}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v3

    invoke-virtual {p0, v3, v4, v2}, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 52
    :cond_1
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "values":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 54
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, "responseJson":Lorg/json/JSONObject;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "GT"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v6

    .line 56
    .local v6, "serverTime":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    .line 58
    sget-object v8, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v8}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v8

    invoke-virtual {p0, v8, v4, v2}, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->sendSuccessResult(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .end local v5    # "responseJson":Lorg/json/JSONObject;
    .end local v6    # "serverTime":J
    :goto_0
    goto :goto_1

    .line 63
    :cond_3
    sget-object v5, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v5}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v5

    invoke-virtual {p0, v5, v4, v2}, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 69
    .end local v3    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v4

    const-string/jumbo v5, "unknow error"

    invoke-virtual {p0, v4, v5, v2}, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 66
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 67
    .local v3, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_DATA_PARSER_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v4

    const-string v5, "response not json"

    invoke-virtual {p0, v4, v5, v2}, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    nop

    .line 73
    :goto_2
    return-void
.end method

.method public stopInner()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetServerTimeRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    invoke-virtual {v0}, Lcom/aliyun/utils/HttpClientHelper;->stop()V

    .line 80
    :cond_0
    return-void
.end method

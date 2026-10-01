.class public Lcom/aliyun/liveshift/request/GetTimeShiftRequest;
.super Lcom/aliyun/utils/BaseRequest;
.source "GetTimeShiftRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetTimeShiftRequest"


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

.field private mCustomHeaders:[Ljava/lang/String;

.field private mHttpProxy:Ljava/lang/String;

.field private mLiveShiftSource:Lcom/aliyun/player/source/LiveShift;

.field private mNetworkTimeout:I

.field private mReferer:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localSource"    # Lcom/aliyun/player/source/LiveShift;
    .param p3, "l"    # Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/aliyun/utils/BaseRequest;-><init>(Landroid/content/Context;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mReferer:Ljava/lang/String;

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mNetworkTimeout:I

    .line 35
    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mHttpProxy:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mUserAgent:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mCustomHeaders:[Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object p2, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mLiveShiftSource:Lcom/aliyun/player/source/LiveShift;

    .line 43
    return-void
.end method


# virtual methods
.method public runInBackground()V
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mLiveShiftSource:Lcom/aliyun/player/source/LiveShift;

    invoke-virtual {v0}, Lcom/aliyun/player/source/LiveShift;->getTimeLineUrl()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "requestUrl":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->wantStop:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, "responseStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/aliyun/utils/HttpClientHelper;

    invoke-direct {v3, v0}, Lcom/aliyun/utils/HttpClientHelper;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    .line 80
    iget-object v3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v4, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mReferer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/aliyun/utils/HttpClientHelper;->setRefer(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v4, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mHttpProxy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/aliyun/utils/HttpClientHelper;->setHttpProxy(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget v4, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mNetworkTimeout:I

    invoke-virtual {v3, v4}, Lcom/aliyun/utils/HttpClientHelper;->setTimeout(I)V

    .line 83
    iget-object v3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v4, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/aliyun/utils/HttpClientHelper;->setUerAgent(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    iget-object v4, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mCustomHeaders:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/aliyun/utils/HttpClientHelper;->setCustomHeaders([Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    invoke-virtual {v3}, Lcom/aliyun/utils/HttpClientHelper;->doGet()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "request fail"

    if-eqz v3, :cond_1

    .line 87
    :try_start_1
    sget-object v3, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v3}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v3

    invoke-virtual {p0, v3, v4, v2}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 91
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "responseJson":Lorg/json/JSONObject;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "retCode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Lcom/aliyun/utils/JsonUtil;->getInt(Lorg/json/JSONObject;[Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "retCode":I
    if-eqz v5, :cond_2

    .line 95
    sget-object v6, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_REQUEST_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v6}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v6

    invoke-virtual {p0, v6, v4, v2}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    const-string v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/aliyun/liveshift/bean/TimeLineContent;->getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineContent;

    move-result-object v4

    .line 99
    .local v4, "timeLineContent":Lcom/aliyun/liveshift/bean/TimeLineContent;
    invoke-virtual {p0, v4, v2}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->sendSuccessResult(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    .end local v3    # "responseJson":Lorg/json/JSONObject;
    .end local v4    # "timeLineContent":Lcom/aliyun/liveshift/bean/TimeLineContent;
    .end local v5    # "retCode":I
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v4

    const-string/jumbo v5, "unknow error"

    invoke-virtual {p0, v4, v5, v2}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 103
    .local v3, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/aliyun/player/bean/ErrorCode;->ERROR_SERVER_LIVESHIFT_DATA_PARSER_ERROR:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v4

    const-string v5, "response not json"

    invoke-virtual {p0, v4, v5, v2}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->sendFailResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    nop

    .line 107
    :goto_1
    return-void
.end method

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0
    .param p1, "customHeaders"    # [Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mCustomHeaders:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mHttpProxy:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0
    .param p1, "refer"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mReferer:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 50
    iput p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mNetworkTimeout:I

    .line 51
    return-void
.end method

.method public setUerAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "ua"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->mUserAgent:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public stopInner()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->httpClientHelper:Lcom/aliyun/utils/HttpClientHelper;

    invoke-virtual {v0}, Lcom/aliyun/utils/HttpClientHelper;->stop()V

    .line 114
    :cond_0
    return-void
.end method

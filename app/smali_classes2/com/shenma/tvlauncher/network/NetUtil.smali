.class public Lcom/shenma/tvlauncher/network/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field public static CHARSET_ENCODING:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static headers:[Lorg/apache/http/message/BasicHeader;

.field private static responseHandler:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/http/message/BasicHeader;

    sput-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    .line 29
    const-string v0, "UTF-8"

    sput-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->CHARSET_ENCODING:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/shenma/tvlauncher/network/NetUtil$1;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/network/NetUtil$1;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    .line 47
    const-class v0, Lcom/shenma/tvlauncher/network/NetUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Appkey"

    const-string v3, "12343"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Udid"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 54
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Os"

    const-string v4, "android"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 55
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Osversion"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 56
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Appversion"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Sourceid"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 59
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Ver"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 60
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Userid"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 61
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Usersession"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 62
    sget-object v0, Lcom/shenma/tvlauncher/network/NetUtil;->headers:[Lorg/apache/http/message/BasicHeader;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Unique"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 111
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 113
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 114
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x1f40

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 115
    const/16 v2, 0x1388

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 116
    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 117
    const-string v2, "User-Agent"

    const-string v4, " Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.11 (KHTML, like Gecko)"

    invoke-virtual {v1, v2, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 122
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 123
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 124
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "jsonStr":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    nop

    .line 137
    const/4 v7, 0x0

    .line 128
    .local v7, "str":Ljava/lang/String;
    return-object v6

    .line 137
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "code":I
    .end local v6    # "jsonStr":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 138
    .local v4, "str":Ljava/lang/String;
    goto :goto_1

    .line 137
    .end local v4    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 132
    :catch_1
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 130
    :catch_2
    move-exception v4

    .line 131
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v5, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    goto :goto_0

    .line 139
    .local v4, "str":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 137
    .end local v4    # "str":Ljava/lang/String;
    :goto_2
    const/4 v5, 0x0

    .line 138
    .local v5, "str":Ljava/lang/String;
    goto :goto_4

    :goto_3
    throw v4

    :goto_4
    goto :goto_3
.end method

.method public static post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    .local p1, "param":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 73
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 75
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 76
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x1f40

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    const/16 v2, 0x1388

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, "obj":Ljava/lang/Object;
    const-string v4, "UTF-8"

    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v5, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 84
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 86
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 87
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 88
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "jsonStr":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    return-object v4

    .line 99
    .end local v4    # "jsonStr":Ljava/lang/String;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_0
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 96
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v5, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 94
    :catch_1
    move-exception v4

    .line 95
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v5, Lcom/shenma/tvlauncher/network/NetUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    goto :goto_0

    .line 100
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 99
    :goto_2
    goto :goto_4

    :goto_3
    throw v4

    :goto_4
    goto :goto_3
.end method

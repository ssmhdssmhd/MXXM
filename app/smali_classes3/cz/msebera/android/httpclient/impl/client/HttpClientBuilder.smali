.class public Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private connManagerShared:Z

.field private connTimeToLive:J

.field private connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private contentDecoderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

.field private credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private defaultUserAgentDisabled:Z

.field private dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field private evictExpiredConnections:Z

.field private evictIdleConnections:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private maxIdleTime:J

.field private maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private proxy:Lcz/msebera/android/httpclient/HttpHost;

.field private proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field private schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

.field private serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

.field private systemProperties:Z

.field private targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 211
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 213
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 214
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 226
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 221
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 938
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x0

    return-object v0

    .line 941
    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 928
    if-nez p1, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    .line 934
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    return-void
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 548
    if-nez p1, :cond_0

    .line 549
    return-object p0

    .line 551
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    .line 554
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 555
    return-object p0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 513
    if-nez p1, :cond_0

    .line 514
    return-object p0

    .line 516
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 517
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    .line 519
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 520
    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 565
    if-nez p1, :cond_0

    .line 566
    return-object p0

    .line 568
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 569
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    .line 571
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 572
    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 531
    if-nez p1, :cond_0

    .line 532
    return-object p0

    .line 534
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 535
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    .line 537
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 538
    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 33

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 948
    .local v1, "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    if-nez v1, :cond_0

    .line 949
    invoke-static {}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->getDefault()Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    .line 948
    :cond_0
    move-object v9, v1

    .line 952
    .end local v1    # "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .local v9, "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :goto_0
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 953
    .local v1, "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    if-nez v1, :cond_1

    .line 954
    new-instance v2, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    move-object v1, v2

    .line 956
    :cond_1
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 957
    .local v2, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    const-string v3, "http.keepAlive"

    const-string v4, "true"

    if-nez v2, :cond_e

    .line 958
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 959
    .local v5, "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    if-nez v5, :cond_7

    .line 960
    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_2

    .line 961
    const-string v6, "https.protocols"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 960
    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 962
    .local v6, "supportedProtocols":[Ljava/lang/String;
    :goto_1
    iget-boolean v7, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v7, :cond_3

    .line 963
    const-string v7, "https.cipherSuites"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 962
    invoke-static {v7}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 964
    .local v7, "supportedCipherSuites":[Ljava/lang/String;
    :goto_2
    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 965
    .local v8, "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    if-nez v8, :cond_4

    .line 966
    new-instance v11, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;

    invoke-direct {v11, v9}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    move-object v8, v11

    .line 968
    :cond_4
    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v11, :cond_5

    .line 969
    new-instance v11, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-direct {v11, v12, v6, v7, v8}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    move-object v5, v11

    goto :goto_3

    .line 972
    :cond_5
    iget-boolean v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v11, :cond_6

    .line 973
    new-instance v11, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 974
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v11, v12, v6, v7, v8}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    move-object v5, v11

    goto :goto_3

    .line 977
    :cond_6
    new-instance v11, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 978
    invoke-static {}, Lcz/msebera/android/httpclient/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v12

    invoke-direct {v11, v12, v8}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    move-object v5, v11

    .line 984
    .end local v6    # "supportedProtocols":[Ljava/lang/String;
    .end local v7    # "supportedCipherSuites":[Ljava/lang/String;
    .end local v8    # "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    :cond_7
    :goto_3
    new-instance v11, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    .line 985
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    .line 986
    invoke-static {}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v6, v8, v7}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    .line 987
    const-string v7, "https"

    invoke-virtual {v6, v7, v5}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    .line 988
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v12

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    iget-wide v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    goto :goto_4

    :cond_8
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_4
    move-object/from16 v18, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v16, v6

    invoke-direct/range {v11 .. v18}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    .line 994
    .local v11, "poolingmgr":Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v6, :cond_9

    .line 995
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v11, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V

    .line 997
    :cond_9
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v6, :cond_a

    .line 998
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-virtual {v11, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    .line 1000
    :cond_a
    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_b

    .line 1001
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1002
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1003
    const-string v7, "http.maxConnections"

    const-string v8, "5"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1004
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1005
    .local v7, "max":I
    invoke-virtual {v11, v7}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 1006
    mul-int/lit8 v8, v7, 0x2

    invoke-virtual {v11, v8}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 1009
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "max":I
    :cond_b
    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    if-lez v6, :cond_c

    .line 1010
    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    invoke-virtual {v11, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 1012
    :cond_c
    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    if-lez v6, :cond_d

    .line 1013
    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    invoke-virtual {v11, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 1015
    :cond_d
    move-object v2, v11

    .line 1017
    .end local v5    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    .end local v11    # "poolingmgr":Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
    :cond_e
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 1018
    .local v5, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    if-nez v5, :cond_11

    .line 1019
    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_10

    .line 1020
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1021
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1022
    sget-object v4, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    move-object v5, v4

    .end local v5    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .local v4, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    goto :goto_5

    .line 1024
    .end local v4    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .restart local v5    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    :cond_f
    sget-object v4, Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;

    move-object v5, v4

    .line 1026
    .end local v3    # "s":Ljava/lang/String;
    :goto_5
    move-object v3, v5

    goto :goto_6

    .line 1027
    :cond_10
    sget-object v5, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    move-object v3, v5

    goto :goto_6

    .line 1018
    :cond_11
    move-object v3, v5

    .line 1030
    .end local v5    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .local v3, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    :goto_6
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 1031
    .local v4, "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    if-nez v4, :cond_12

    .line 1032
    sget-object v4, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    .line 1034
    :cond_12
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 1035
    .local v5, "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    if-nez v5, :cond_13

    .line 1036
    sget-object v5, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    move-object v6, v5

    goto :goto_7

    .line 1035
    :cond_13
    move-object v6, v5

    .line 1038
    .end local v5    # "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .local v6, "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :goto_7
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 1039
    .local v5, "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    if-nez v5, :cond_14

    .line 1040
    sget-object v5, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    move-object v7, v5

    goto :goto_8

    .line 1039
    :cond_14
    move-object v7, v5

    .line 1042
    .end local v5    # "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .local v7, "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :goto_8
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 1043
    .local v5, "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    if-nez v5, :cond_16

    .line 1044
    iget-boolean v8, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v8, :cond_15

    .line 1045
    sget-object v5, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    move-object v8, v5

    goto :goto_9

    .line 1047
    :cond_15
    sget-object v5, Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;

    move-object v8, v5

    goto :goto_9

    .line 1043
    :cond_16
    move-object v8, v5

    .line 1051
    .end local v5    # "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .local v8, "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    :goto_9
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    .line 1052
    .local v5, "userAgentCopy":Ljava/lang/String;
    if-nez v5, :cond_19

    .line 1053
    iget-boolean v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v11, :cond_17

    .line 1054
    const-string v11, "http.agent"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1056
    :cond_17
    if-nez v5, :cond_18

    iget-boolean v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultUserAgentDisabled:Z

    if-nez v11, :cond_18

    .line 1057
    nop

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 1057
    const-string v12, "Apache-HttpClient"

    const-string v13, "cz.msebera.android.httpclient.client"

    invoke-static {v12, v13, v11}, Lcz/msebera/android/httpclient/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_a

    .line 1062
    :cond_18
    move-object v11, v5

    goto :goto_a

    .line 1052
    :cond_19
    move-object v11, v5

    .line 1062
    .end local v5    # "userAgentCopy":Ljava/lang/String;
    .local v11, "userAgentCopy":Ljava/lang/String;
    :goto_a
    new-instance v5, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v12, 0x2

    new-array v13, v12, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v14, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v14}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    const/4 v15, 0x0

    aput-object v14, v13, v15

    new-instance v14, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v14, v11}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v14, v13, v10

    invoke-direct {v5, v13}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    invoke-virtual/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v5

    .line 1072
    .local v5, "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v5

    .line 1074
    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 1075
    .local v13, "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    if-nez v13, :cond_27

    .line 1077
    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v14

    .line 1078
    .local v14, "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    const/16 v17, 0x2

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-eqz v12, :cond_1b

    .line 1079
    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v15, v18

    check-cast v15, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 1080
    .local v15, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    invoke-virtual {v14, v15}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1081
    .end local v15    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    const/4 v15, 0x0

    goto :goto_b

    .line 1079
    :cond_1a
    const/16 v19, 0x0

    goto :goto_c

    .line 1078
    :cond_1b
    const/16 v19, 0x0

    .line 1083
    :goto_c
    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-eqz v12, :cond_1c

    .line 1084
    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 1085
    .local v15, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    invoke-virtual {v14, v15}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1086
    .end local v15    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    goto :goto_d

    .line 1088
    :cond_1c
    const/4 v12, 0x6

    new-array v12, v12, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v15, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;

    const/16 v18, 0x1

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v15, v10}, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    aput-object v15, v12, v19

    new-instance v10, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    aput-object v10, v12, v18

    new-instance v10, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v10, v12, v17

    new-instance v10, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v15, 0x3

    aput-object v10, v12, v15

    new-instance v10, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v10, v11}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x4

    aput-object v10, v12, v15

    new-instance v10, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;-><init>()V

    const/4 v15, 0x5

    aput-object v10, v12, v15

    invoke-virtual {v14, v12}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1095
    iget-boolean v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v10, :cond_1d

    .line 1096
    new-instance v10, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v14, v10}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1098
    :cond_1d
    iget-boolean v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v10, :cond_1f

    .line 1099
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v10, :cond_1e

    .line 1100
    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1101
    .local v10, "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1102
    new-instance v12, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v12, v10}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>(Ljava/util/List;)V

    invoke-virtual {v14, v12}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1103
    .end local v10    # "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_e

    .line 1104
    :cond_1e
    new-instance v10, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v14, v10}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1107
    :cond_1f
    :goto_e
    iget-boolean v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    if-nez v10, :cond_20

    .line 1108
    new-instance v10, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v14, v10}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1110
    :cond_20
    iget-boolean v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v10, :cond_21

    .line 1111
    new-instance v10, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;

    invoke-direct {v10}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v14, v10}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1113
    :cond_21
    iget-boolean v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v10, :cond_24

    .line 1114
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v10, :cond_23

    .line 1115
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v10

    .line 1116
    .local v10, "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1117
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v1

    .end local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .local v22, "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    move-object/from16 v17, v2

    .end local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .local v17, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    .line 1118
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    move-object/from16 v2, v17

    move-object/from16 v1, v22

    goto :goto_f

    .line 1119
    .end local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .end local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_22
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    .end local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .end local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    invoke-virtual {v14, v1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1120
    .end local v10    # "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    goto :goto_10

    .line 1121
    .end local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .end local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_23
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    .end local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .end local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v14, v1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_10

    .line 1113
    .end local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .end local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_24
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    .line 1124
    .end local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .end local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    :goto_10
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-eqz v1, :cond_25

    .line 1125
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 1126
    .local v2, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    invoke-virtual {v14, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1127
    .end local v2    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    goto :goto_11

    .line 1129
    :cond_25
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-eqz v1, :cond_26

    .line 1130
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 1131
    .local v2, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    invoke-virtual {v14, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1132
    .end local v2    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    goto :goto_12

    .line 1134
    :cond_26
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v13

    move-object v1, v13

    goto :goto_13

    .line 1075
    .end local v14    # "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .end local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .end local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .local v2, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :cond_27
    move-object/from16 v22, v1

    move-object/from16 v17, v2

    const/16 v18, 0x1

    .end local v1    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .end local v2    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v17    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .restart local v22    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    move-object v1, v13

    .line 1136
    .end local v13    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .local v1, "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    :goto_13
    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;

    invoke-direct {v2, v5, v1}, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V

    .line 1138
    .end local v5    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .local v2, "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v2

    .line 1141
    iget-boolean v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v5, :cond_29

    .line 1142
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 1143
    .local v5, "retryHandlerCopy":Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    if-nez v5, :cond_28

    .line 1144
    sget-object v5, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    .line 1146
    :cond_28
    new-instance v10, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;

    invoke-direct {v10, v2, v5}, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    move-object v2, v10

    .line 1149
    .end local v5    # "retryHandlerCopy":Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    :cond_29
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 1150
    .local v5, "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    if-nez v5, :cond_2d

    .line 1151
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 1152
    .local v10, "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    if-nez v10, :cond_2a

    .line 1153
    sget-object v10, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    .line 1155
    :cond_2a
    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v12, :cond_2b

    .line 1156
    new-instance v12, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;

    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v12, v13, v10}, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    move-object v5, v12

    move-object v15, v5

    goto :goto_14

    .line 1157
    :cond_2b
    iget-boolean v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v12, :cond_2c

    .line 1158
    new-instance v12, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;

    .line 1159
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v13

    invoke-direct {v12, v10, v13}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    move-object v5, v12

    move-object v15, v5

    goto :goto_14

    .line 1161
    :cond_2c
    new-instance v12, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;

    invoke-direct {v12, v10}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    move-object v5, v12

    move-object v15, v5

    goto :goto_14

    .line 1150
    .end local v10    # "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    :cond_2d
    move-object v15, v5

    .line 1166
    .end local v5    # "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .local v15, "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    :goto_14
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .line 1167
    .local v5, "serviceUnavailStrategyCopy":Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;
    if-eqz v5, :cond_2e

    .line 1168
    new-instance v10, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;

    invoke-direct {v10, v2, v5}, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    move-object v2, v10

    .line 1172
    :cond_2e
    iget-boolean v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v10, :cond_30

    .line 1173
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 1174
    .local v10, "redirectStrategyCopy":Lcz/msebera/android/httpclient/client/RedirectStrategy;
    if-nez v10, :cond_2f

    .line 1175
    sget-object v10, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    .line 1177
    :cond_2f
    new-instance v12, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;

    invoke-direct {v12, v2, v15, v10}, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/client/RedirectStrategy;)V

    move-object v2, v12

    .line 1181
    .end local v10    # "redirectStrategyCopy":Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :cond_30
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    if-eqz v10, :cond_31

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    if-eqz v10, :cond_31

    .line 1182
    new-instance v10, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-direct {v10, v2, v12, v13}, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V

    move-object v2, v10

    move-object v13, v2

    goto :goto_15

    .line 1185
    :cond_31
    move-object v13, v2

    .end local v2    # "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .local v13, "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    :goto_15
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 1186
    .local v2, "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    if-nez v2, :cond_32

    .line 1187
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v10

    new-instance v12, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v12}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    .line 1188
    const-string v14, "Basic"

    invoke-virtual {v10, v14, v12}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v10

    new-instance v12, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v12}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    .line 1189
    const-string v14, "Digest"

    invoke-virtual {v10, v14, v12}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v10

    new-instance v12, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v12}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    .line 1190
    const-string v14, "NTLM"

    invoke-virtual {v10, v14, v12}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v10

    .line 1193
    invoke-virtual {v10}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v2

    .line 1195
    :cond_32
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 1196
    .local v10, "cookieSpecRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    if-nez v10, :cond_33

    .line 1197
    invoke-static {v9}, Lcz/msebera/android/httpclient/impl/client/CookieSpecRegistries;->createDefault(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v10

    .line 1200
    :cond_33
    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 1201
    .local v12, "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    if-nez v12, :cond_34

    .line 1202
    new-instance v14, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;

    invoke-direct {v14}, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;-><init>()V

    move-object v12, v14

    .line 1205
    :cond_34
    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 1206
    .local v14, "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    if-nez v14, :cond_36

    .line 1207
    move-object/from16 v23, v1

    .end local v1    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .local v23, "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    iget-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_35

    .line 1208
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    move-object v14, v1

    move-object/from16 v19, v14

    goto :goto_16

    .line 1210
    :cond_35
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    move-object v14, v1

    move-object/from16 v19, v14

    goto :goto_16

    .line 1206
    .end local v23    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .restart local v1    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    :cond_36
    move-object/from16 v23, v1

    .end local v1    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .restart local v23    # "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    move-object/from16 v19, v14

    .line 1214
    .end local v14    # "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .local v19, "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    :goto_16
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v1, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v1, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v1

    goto :goto_17

    :cond_37
    const/16 v16, 0x0

    .line 1215
    .local v16, "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    :goto_17
    iget-boolean v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    if-nez v1, :cond_3d

    .line 1216
    if-nez v16, :cond_38

    .line 1217
    new-instance v1, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-direct {v1, v14}, Ljava/util/ArrayList;-><init>(I)V

    .end local v16    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    .local v1, "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    goto :goto_18

    .line 1216
    .end local v1    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    .restart local v16    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    :cond_38
    move-object/from16 v1, v16

    .line 1219
    .end local v16    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    .restart local v1    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    :goto_18
    move-object/from16 v25, v17

    .line 1221
    .local v25, "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    iget-boolean v14, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    if-nez v14, :cond_3a

    iget-boolean v14, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    if-eqz v14, :cond_39

    goto :goto_19

    :cond_39
    move-object v14, v2

    move-object/from16 v32, v3

    move-object/from16 v24, v4

    move-object/from16 v2, v25

    goto :goto_1c

    .line 1222
    :cond_3a
    :goto_19
    new-instance v24, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    move-object v14, v2

    move-object/from16 v32, v3

    .end local v2    # "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .end local v3    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .local v14, "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .local v32, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    iget-wide v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    const-wide/16 v20, 0x0

    cmp-long v16, v2, v20

    if-lez v16, :cond_3b

    iget-wide v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    goto :goto_1a

    :cond_3b
    const-wide/16 v2, 0xa

    :goto_1a
    move-wide/from16 v26, v2

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    goto :goto_1b

    :cond_3c
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1b
    move-object/from16 v28, v2

    iget-wide v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    move-wide/from16 v29, v2

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v31, v2

    invoke-direct/range {v24 .. v31}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    move-object/from16 v2, v25

    .end local v25    # "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .local v2, "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    move-object/from16 v3, v24

    .line 1225
    .local v3, "connectionEvictor":Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;
    move-object/from16 v24, v4

    .end local v4    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .local v24, "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    new-instance v4, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;

    invoke-direct {v4, v0, v3}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->start()V

    .line 1240
    .end local v3    # "connectionEvictor":Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;
    :goto_1c
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;

    invoke-direct {v3, v0, v2}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v1

    goto :goto_1d

    .line 1215
    .end local v1    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    .end local v14    # "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .end local v24    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .end local v32    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .local v2, "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .local v3, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .restart local v4    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .restart local v16    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    :cond_3d
    move-object v14, v2

    move-object/from16 v32, v3

    move-object/from16 v24, v4

    .end local v2    # "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .end local v3    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .end local v4    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .restart local v14    # "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .restart local v24    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .restart local v32    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    move-object/from16 v21, v16

    .line 1250
    .end local v16    # "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    .local v21, "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    :goto_1d
    move-object/from16 v18, v12

    .end local v12    # "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    .local v18, "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    new-instance v12, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto :goto_1e

    :cond_3e
    sget-object v1, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    :goto_1e
    move-object/from16 v20, v1

    move-object/from16 v16, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v10

    .end local v10    # "cookieSpecRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .local v14, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .local v16, "cookieSpecRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .local v17, "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    invoke-direct/range {v12 .. v21}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/client/CookieStore;Lcz/msebera/android/httpclient/client/CredentialsProvider;Lcz/msebera/android/httpclient/client/config/RequestConfig;Ljava/util/List;)V

    move-object v2, v14

    .end local v14    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .local v2, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    return-object v12
.end method

.method protected createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 9
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "proxyHttpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p6, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p7, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p8, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 899
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    return-object v0
.end method

.method protected decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0
    .param p1, "mainExec"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 914
    return-object p1
.end method

.method protected decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0
    .param p1, "protocolExec"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 921
    return-object p1
.end method

.method public final disableAuthCaching()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    .line 605
    return-object p0
.end method

.method public final disableAutomaticRetries()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    .line 642
    return-object p0
.end method

.method public final disableConnectionState()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    .line 469
    return-object p0
.end method

.method public final disableContentCompression()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    .line 594
    return-object p0
.end method

.method public final disableCookieManagement()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    .line 583
    return-object p0
.end method

.method public final disableDefaultUserAgent()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultUserAgentDisabled:Z

    .line 875
    return-object p0
.end method

.method public final disableRedirectHandling()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    .line 681
    return-object p0
.end method

.method public final evictExpiredConnections()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    .line 805
    return-object p0
.end method

.method public final evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "maxIdleTime"    # J
    .param p3, "maxIdleTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    .line 863
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    .line 864
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 865
    return-object p0
.end method

.method public final evictIdleConnections(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 2
    .param p1, "maxIdleTime"    # Ljava/lang/Long;
    .param p2, "maxIdleTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 835
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setBackoffManager(Lcz/msebera/android/httpclient/client/BackoffManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "backoffManager"    # Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 697
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 698
    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connectionBackoffStrategy"    # Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 689
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 690
    return-object p0
.end method

.method public final setConnectionManager(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 390
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 391
    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "shared"    # Z

    .line 410
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    .line 411
    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 419
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 420
    return-object p0
.end method

.method public final setConnectionTimeToLive(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connTimeToLive"    # J
    .param p3, "connTimeToLiveTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 380
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 381
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 382
    return-object p0
.end method

.method public final setContentDecoderRegistry(Ljava/util/Map;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 762
    .local p1, "contentDecoderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    .line 763
    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 737
    .local p1, "authSchemeRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 738
    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 366
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 367
    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 751
    .local p1, "cookieSpecRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 752
    return-object p0
.end method

.method public final setDefaultCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "cookieStore"    # Lcz/msebera/android/httpclient/client/CookieStore;

    .line 715
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 716
    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "credentialsProvider"    # Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 726
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 727
    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 501
    .local p1, "defaultHeaders":Ljava/util/Collection;, "Ljava/util/Collection<+Lcz/msebera/android/httpclient/Header;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    .line 502
    return-object p0
.end method

.method public final setDefaultRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 772
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 773
    return-object p0
.end method

.method public final setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 354
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 355
    return-object p0
.end method

.method public final setDnsResolver(Lcz/msebera/android/httpclient/conn/DnsResolver;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "dnsResolver"    # Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 622
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 623
    return-object p0
.end method

.method public final setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "hostnameVerifier"    # Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 249
    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "httpprocessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 612
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 613
    return-object p0
.end method

.method public final setKeepAliveStrategy(Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 428
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 429
    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "maxConnPerRoute"    # I

    .line 342
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 343
    return-object p0
.end method

.method public final setMaxConnTotal(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "maxConnTotal"    # I

    .line 330
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 331
    return-object p0
.end method

.method public final setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "proxy"    # Lcz/msebera/android/httpclient/HttpHost;

    .line 652
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    .line 653
    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 448
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 449
    return-object p0
.end method

.method public final setPublicSuffixMatcher(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 277
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 278
    return-object p0
.end method

.method public final setRedirectStrategy(Lcz/msebera/android/httpclient/client/RedirectStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 672
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 673
    return-object p0
.end method

.method public final setRequestExecutor(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 232
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 233
    return-object p0
.end method

.method public final setRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 633
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 634
    return-object p0
.end method

.method public final setRoutePlanner(Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "routePlanner"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 660
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 661
    return-object p0
.end method

.method public final setSSLContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .line 305
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 306
    return-object p0
.end method

.method public final setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 263
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 264
    return-object p0
.end method

.method public final setSSLSocketFactory(Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "sslSocketFactory"    # Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 318
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 319
    return-object p0
.end method

.method public final setSchemePortResolver(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "schemePortResolver"    # Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 477
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 478
    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "serviceUnavailStrategy"    # Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .line 706
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .line 707
    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "sslcontext"    # Ljavax/net/ssl/SSLContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->setSSLContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setTargetAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 438
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 439
    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    .line 490
    return-object p0
.end method

.method public final setUserTokenHandler(Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 460
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 461
    return-object p0
.end method

.method public final useSystemProperties()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    .line 782
    return-object p0
.end method

.class public Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

.field protected final connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field private final log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

.field private final maxRedirects:I

.field protected final params:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

.field protected final proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field protected final proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private redirectCount:I

.field protected final redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;

.field protected final redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field protected final requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field protected final routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

.field protected final targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field protected final targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field protected final userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

.field private virtualHost:Lcz/msebera/android/httpclient/HttpHost;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 16
    .param p1, "log"    # Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    .param p2, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p3, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p4, "reustrat"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p5, "kastrat"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p6, "rouplan"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p7, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p8, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .param p9, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;
    .param p10, "targetAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p11, "proxyAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p12, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .param p13, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 237
    new-instance v1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v14, p10

    invoke-direct {v10, v14}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    new-instance v11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v15, p11

    invoke-direct {v11, v15}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 16
    .param p1, "log"    # Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    .param p2, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p3, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p4, "reustrat"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p5, "kastrat"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p6, "rouplan"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p7, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p8, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .param p9, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;
    .param p10, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p11, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p12, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .param p13, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 264
    const-string v14, "Log"

    invoke-static {v1, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    const-string v14, "Request executor"

    invoke-static {v2, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    const-string v14, "Client connection manager"

    invoke-static {v3, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    const-string v14, "Connection reuse strategy"

    invoke-static {v4, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    const-string v14, "Connection keep alive strategy"

    invoke-static {v5, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    const-string v14, "Route planner"

    invoke-static {v6, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    const-string v14, "HTTP protocol processor"

    invoke-static {v7, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 271
    const-string v14, "HTTP request retry handler"

    invoke-static {v8, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    const-string v14, "Redirect strategy"

    invoke-static {v9, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string v14, "Target authentication strategy"

    invoke-static {v10, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v14, "Proxy authentication strategy"

    invoke-static {v11, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v14, "User token handler"

    invoke-static {v12, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v14, "HTTP parameters"

    invoke-static {v13, v14}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 278
    new-instance v14, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    invoke-direct {v14, v1}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    iput-object v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    .line 279
    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 280
    iput-object v3, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 281
    iput-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 282
    iput-object v5, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 283
    iput-object v6, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 284
    iput-object v7, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 285
    iput-object v8, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 286
    iput-object v9, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 287
    iput-object v10, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 288
    iput-object v11, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 289
    iput-object v12, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 290
    iput-object v13, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 292
    instance-of v14, v9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    .line 293
    move-object v14, v9

    check-cast v14, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;

    move-result-object v14

    iput-object v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    goto :goto_0

    .line 295
    :cond_0
    iput-object v15, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    .line 297
    :goto_0
    instance-of v14, v10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v14, :cond_1

    .line 298
    move-object v14, v10

    check-cast v14, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v14

    iput-object v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_1

    .line 300
    :cond_1
    iput-object v15, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    .line 302
    :goto_1
    instance-of v14, v11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v14, :cond_2

    .line 303
    move-object v14, v11

    check-cast v14, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v14

    iput-object v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_2

    .line 305
    :cond_2
    iput-object v15, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    .line 308
    :goto_2
    iput-object v15, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 310
    const/4 v14, 0x0

    iput v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    .line 311
    iput v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 312
    new-instance v14, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v14}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 313
    new-instance v14, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v14}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 314
    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v15, "http.protocol.max-redirects"

    const/16 v1, 0x64

    invoke-interface {v14, v15, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 315
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 16
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lcz/msebera/android/httpclient/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .param p12, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 213
    new-instance v1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v14, p8

    invoke-direct {v9, v14}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    new-instance v10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v15, p9

    invoke-direct {v10, v15}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    new-instance v11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v11, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 220
    return-void
.end method

.method private abortConnection()V
    .locals 4

    .line 1122
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 1123
    .local v0, "mcc":Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    if-eqz v0, :cond_1

    .line 1126
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 1128
    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    goto :goto_0

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1136
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1139
    goto :goto_1

    .line 1137
    :catch_1
    move-exception v1

    .line 1138
    .local v1, "ignored":Ljava/io/IOException;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Error releasing connection"

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1141
    .end local v1    # "ignored":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method private tryConnect(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 7
    .param p1, "req"    # Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 596
    .local v0, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v1

    .line 598
    .local v1, "wrapper":Lcz/msebera/android/httpclient/HttpRequest;
    const/4 v2, 0x0

    .line 600
    .local v2, "connectCount":I
    :goto_0
    const-string v3, "http.request"

    invoke-interface {p2, v3, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    add-int/lit8 v2, v2, 0x1

    .line 604
    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v3, v0, p2, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_1

    .line 607
    :cond_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v4

    invoke-interface {v3, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setSocketTimeout(I)V

    .line 609
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->establishRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    nop

    .line 633
    return-void

    .line 611
    :catch_0
    move-exception v3

    .line 613
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    goto :goto_2

    .line 614
    :catch_1
    move-exception v4

    .line 616
    :goto_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-interface {v4, v3, v2, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 617
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 618
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") caught when connecting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 622
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 618
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 623
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 624
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 626
    :cond_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 631
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_2
    goto/16 :goto_0

    .line 629
    .restart local v3    # "ex":Ljava/io/IOException;
    :cond_3
    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method private tryExecute(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 8
    .param p1, "req"    # Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v0

    .line 641
    .local v0, "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    .line 642
    .local v1, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    const/4 v2, 0x0

    .line 644
    .local v2, "response":Lcz/msebera/android/httpclient/HttpResponse;
    const/4 v3, 0x0

    .line 647
    .local v3, "retryReason":Ljava/lang/Exception;
    :goto_0
    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    .line 649
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->incrementExecCount()V

    .line 650
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 651
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Cannot retry non-repeatable request"

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 652
    if-eqz v3, :cond_0

    .line 653
    new-instance v4, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string v5, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v4, v5, v3}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 657
    :cond_0
    new-instance v4, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string v5, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 663
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 666
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 667
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Reopening the direct connection."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 668
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v4, v1, p2, v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_1

    .line 671
    :cond_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Proxied connection. Need to start over."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 672
    goto :goto_2

    .line 676
    :cond_3
    :goto_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 677
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to execute request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 679
    :cond_4
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v4, v0, v5, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 680
    nop

    .line 715
    :goto_2
    return-object v2

    .line 682
    :catch_0
    move-exception v4

    .line 683
    .local v4, "ex":Ljava/io/IOException;
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Closing the connection."

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 685
    :try_start_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    goto :goto_3

    .line 686
    :catch_1
    move-exception v5

    .line 688
    :goto_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getExecCount()I

    move-result v6

    invoke-interface {v5, v4, v6, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 689
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 690
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") caught when processing request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 694
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 690
    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 696
    :cond_5
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 697
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 699
    :cond_6
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 700
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrying request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 702
    :cond_7
    move-object v3, v4

    .line 713
    .end local v4    # "ex":Ljava/io/IOException;
    goto/16 :goto_0

    .line 704
    .restart local v4    # "ex":Ljava/io/IOException;
    :cond_8
    instance-of v5, v4, Lcz/msebera/android/httpclient/NoHttpResponseException;

    if-eqz v5, :cond_9

    .line 705
    new-instance v5, Lcz/msebera/android/httpclient/NoHttpResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed to respond"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    .line 707
    .local v5, "updatedex":Lcz/msebera/android/httpclient/NoHttpResponseException;
    invoke-virtual {v4}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/NoHttpResponseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 708
    throw v5

    .line 710
    .end local v5    # "updatedex":Lcz/msebera/android/httpclient/NoHttpResponseException;
    :cond_9
    goto :goto_5

    :goto_4
    throw v4

    :goto_5
    goto :goto_4
.end method

.method private wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 320
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    move-object v1, p1

    check-cast v1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;
    .locals 8
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 982
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 984
    .local v0, "target":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v2

    .line 986
    .local v2, "port":I
    if-gez v2, :cond_0

    .line 987
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 988
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v3

    .line 989
    .local v3, "scheme":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getDefaultPort()I

    move-result v2

    .line 992
    .end local v3    # "scheme":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 993
    .local v3, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 995
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, "authority":Ljava/lang/String;
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v5}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->getVersion(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v5

    .line 999
    .local v5, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    new-instance v6, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    const-string v7, "CONNECT"

    invoke-direct {v6, v7, v4, v5}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 1002
    .local v6, "req":Lcz/msebera/android/httpclient/HttpRequest;
    return-object v6
.end method

.method protected createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 2
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 9
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 851
    .local v1, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    .line 852
    .local v6, "target":Lcz/msebera/android/httpclient/HttpHost;
    const/4 v0, 0x0

    .line 855
    .local v0, "response":Lcz/msebera/android/httpclient/HttpResponse;
    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 856
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v2, p1, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 859
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createConnectRequest(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v7

    .line 860
    .local v7, "connect":Lcz/msebera/android/httpclient/HttpRequest;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v7, v2}, Lcz/msebera/android/httpclient/HttpRequest;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 863
    const-string v2, "http.target_host"

    invoke-interface {p2, v2, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 864
    const-string v2, "http.route"

    invoke-interface {p2, v2, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    const-string v2, "http.proxy_host"

    invoke-interface {p2, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 866
    const-string v2, "http.connection"

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p2, v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 867
    const-string v2, "http.request"

    invoke-interface {p2, v2, v7}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 869
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v2, v7, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 871
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v2, v7, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    .line 873
    .end local v0    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .local v2, "response":Lcz/msebera/android/httpclient/HttpResponse;
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 874
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v0, v2, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 876
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v8

    .line 877
    .local v8, "status":I
    const/16 v0, 0xc8

    if-lt v8, v0, :cond_6

    .line 882
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 883
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v5, p2

    .end local p2    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .local v5, "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 885
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 888
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {p2, v2, v5}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 889
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Connection kept alive"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 891
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p2

    .line 892
    .local p2, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-static {p2}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 893
    .end local p2    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    goto :goto_1

    .line 894
    :cond_1
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    goto :goto_1

    .line 905
    .end local v7    # "connect":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v8    # "status":I
    :cond_2
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p2

    .line 907
    .local p2, "status":I
    const/16 v0, 0x12b

    if-le p2, v0, :cond_4

    .line 910
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 911
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v0, :cond_3

    .line 912
    new-instance v3, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 915
    :cond_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    .line 916
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT refused by proxy: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 917
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw v3

    .line 920
    .end local v0    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :cond_4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    .line 926
    const/4 v0, 0x0

    return v0

    .line 882
    .end local v5    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "connect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v8    # "status":I
    .local p2, "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :cond_5
    move-object v5, p2

    .line 903
    .end local v7    # "connect":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v8    # "status":I
    .end local p2    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v5    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :goto_1
    move-object v0, v2

    move-object p2, v5

    goto/16 :goto_0

    .line 878
    .end local v5    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "connect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v8    # "status":I
    .restart local p2    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :cond_6
    move-object v5, p2

    .end local p2    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v5    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    new-instance p2, Lcz/msebera/android/httpclient/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response to CONNECT request: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 879
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method protected determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 3
    .param p1, "targetHost"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 757
    :cond_0
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    .line 758
    const-string v2, "http.default-host"

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpHost;

    .line 756
    :goto_0
    invoke-interface {v0, v1, p2, p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method protected establishRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 8
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;-><init>()V

    .line 778
    .local v0, "rowdy":Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    .line 779
    .local v1, "fact":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;->nextStep(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v2

    .line 781
    .local v2, "step":I
    packed-switch v2, :pswitch_data_0

    .line 818
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown step indicator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from RouteDirector."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 808
    :pswitch_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v3, p2, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 809
    goto :goto_0

    .line 799
    :pswitch_1
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 800
    .local v3, "hop":I
    invoke-virtual {p0, p1, v3, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    .line 801
    .local v4, "secure":Z
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Tunnel to proxy created."

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 802
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v5, v6, v4, v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 804
    .end local v3    # "hop":I
    .end local v4    # "secure":Z
    goto :goto_0

    .line 789
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    .line 790
    .local v3, "secure":Z
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Tunnel to target created."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 791
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v4, v3, v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 792
    .end local v3    # "secure":Z
    goto :goto_0

    .line 785
    :pswitch_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v3, p1, p2, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 786
    goto :goto_0

    .line 816
    :pswitch_4
    nop

    .line 822
    .end local v1    # "fact":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :goto_0
    if-gtz v2, :cond_0

    .line 824
    return-void

    .line 812
    .restart local v1    # "fact":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :pswitch_5
    new-instance v3, Lcz/msebera/android/httpclient/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to establish route: planned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 21
    .param p1, "targetHost"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, "http.user-token"

    const-string v3, "http.auth.target-scope"

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-interface {v2, v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    const-string v3, "http.auth.proxy-scope"

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-interface {v2, v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    move-object/from16 v3, p1

    .line 372
    .local v3, "target":Lcz/msebera/android/httpclient/HttpHost;
    move-object/from16 v4, p2

    .line 373
    .local v4, "orig":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-direct {v1, v4}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v5

    .line 374
    .local v5, "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 375
    invoke-virtual {v1, v3, v5, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v6

    .line 377
    .local v6, "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v7

    const-string v8, "http.virtual-host"

    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/HttpHost;

    iput-object v7, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 380
    iget-object v7, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 381
    if-eqz v3, :cond_0

    move-object v7, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    .line 382
    .local v7, "host":Lcz/msebera/android/httpclient/HttpHost;
    :goto_0
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v9

    .line 383
    .local v9, "port":I
    if-eq v9, v8, :cond_1

    .line 384
    new-instance v8, Lcz/msebera/android/httpclient/HttpHost;

    iget-object v10, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v11}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v9, v11}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v8, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 388
    .end local v7    # "host":Lcz/msebera/android/httpclient/HttpHost;
    .end local v9    # "port":I
    :cond_1
    new-instance v7, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    invoke-direct {v7, v5, v6}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 390
    .local v7, "roureq":Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    const/4 v8, 0x0

    .line 391
    .local v8, "reuse":Z
    const/4 v9, 0x0

    .line 393
    .local v9, "done":Z
    const/4 v10, 0x0

    .line 394
    .local v10, "response":Lcz/msebera/android/httpclient/HttpResponse;
    :goto_1
    if-nez v9, :cond_18

    .line 400
    :try_start_0
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v11

    .line 401
    .local v11, "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v12

    .line 402
    .local v12, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    const/4 v10, 0x0

    .line 405
    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 408
    .local v13, "userToken":Ljava/lang/Object;
    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    :try_end_0
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_23

    if-nez v14, :cond_5

    .line 409
    :try_start_1
    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v14, v12, v13}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;

    move-result-object v14

    .line 411
    .local v14, "connRequest":Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    instance-of v15, v4, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;
    :try_end_1
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a

    if-eqz v15, :cond_2

    .line 412
    :try_start_2
    move-object v15, v4

    check-cast v15, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    invoke-interface {v15, v14}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setConnectionRequest(Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V
    :try_end_2
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 583
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    .end local v14    # "connRequest":Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    goto/16 :goto_10

    .line 580
    :catch_1
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    goto/16 :goto_11

    .line 577
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    goto/16 :goto_12

    .line 572
    :catch_3
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    goto/16 :goto_13

    .line 415
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v13    # "userToken":Ljava/lang/Object;
    .restart local v14    # "connRequest":Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    :cond_2
    :goto_2
    :try_start_3
    iget-object v15, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v15}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->getConnectionManagerTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)J

    move-result-wide v15
    :try_end_3
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_a

    move-wide/from16 v17, v15

    .line 417
    .local v17, "timeout":J
    :try_start_4
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_a

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-wide/from16 v5, v17

    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v17    # "timeout":J
    .local v5, "timeout":J
    .local v16, "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .local v19, "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :try_start_5
    invoke-interface {v14, v5, v6, v15}, Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-result-object v15

    iput-object v15, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 421
    nop

    .line 423
    :try_start_6
    iget-object v15, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v15}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 425
    iget-object v15, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v15}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 426
    iget-object v15, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    :try_end_6
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v17, v3

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v17, "target":Lcz/msebera/android/httpclient/HttpHost;
    :try_start_7
    const-string v3, "Stale connection check"

    invoke-virtual {v15, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 427
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isStale()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 428
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v15, "Stale connection detected"

    invoke-virtual {v3, v15}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 429
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    goto/16 :goto_4

    .line 425
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_3
    move-object/from16 v17, v3

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_4

    .line 423
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_4
    move-object/from16 v17, v3

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_4

    .line 583
    .end local v5    # "timeout":J
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    .end local v14    # "connRequest":Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_4
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_10

    .line 580
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_5
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_11

    .line 577
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_6
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_12

    .line 572
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_7
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_13

    .line 418
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "timeout":J
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v13    # "userToken":Ljava/lang/Object;
    .restart local v14    # "connRequest":Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    :catch_8
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto :goto_3

    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v5, "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .local v17, "timeout":J
    :catch_9
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-wide/from16 v5, v17

    move-object/from16 v17, v3

    .line 419
    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .local v0, "interrupted":Ljava/lang/InterruptedException;
    .local v5, "timeout":J
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .local v17, "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 420
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v7    # "roureq":Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .end local v8    # "reuse":Z
    .end local v9    # "done":Z
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local p1    # "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    .end local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    throw v3
    :try_end_7
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_e

    .line 583
    .end local v0    # "interrupted":Ljava/lang/InterruptedException;
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    .end local v14    # "connRequest":Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .local v5, "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v7    # "roureq":Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .restart local v8    # "reuse":Z
    .restart local v9    # "done":Z
    .restart local p1    # "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catch_a
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    goto/16 :goto_10

    .line 580
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_b
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    goto/16 :goto_11

    .line 577
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_c
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    goto/16 :goto_12

    .line 572
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_d
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    goto/16 :goto_13

    .line 408
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v13    # "userToken":Ljava/lang/Object;
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    .line 435
    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :cond_6
    :goto_4
    :try_start_8
    instance-of v3, v4, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;
    :try_end_8
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_8 .. :try_end_8} :catch_22
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_8 .. :try_end_8} :catch_21
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1f

    if-eqz v3, :cond_7

    .line 436
    :try_start_9
    move-object v3, v4

    check-cast v3, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3, v5}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
    :try_end_9
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_5

    .line 583
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    :catch_e
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    goto/16 :goto_10

    .line 580
    :catch_f
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    goto/16 :goto_11

    .line 577
    :catch_10
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    goto/16 :goto_12

    .line 572
    :catch_11
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    goto/16 :goto_13

    .line 440
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v13    # "userToken":Ljava/lang/Object;
    :cond_7
    :goto_5
    :try_start_a
    invoke-direct {v1, v7, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->tryConnect(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_a
    .catch Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_a .. :try_end_a} :catch_22
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_a .. :try_end_a} :catch_21
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1f

    .line 447
    nop

    .line 449
    :try_start_b
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_b .. :try_end_b} :catch_22
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_b .. :try_end_b} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1f

    .line 450
    .local v3, "userinfo":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 451
    :try_start_c
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    new-instance v6, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    new-instance v14, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v14, v3}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v14}, Lcz/msebera/android/httpclient/auth/AuthState;->update(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V
    :try_end_c
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_c .. :try_end_c} :catch_11
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_e

    .line 456
    :cond_8
    :try_start_d
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;
    :try_end_d
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_d .. :try_end_d} :catch_22
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_d .. :try_end_d} :catch_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1f

    if-eqz v5, :cond_9

    .line 457
    :try_start_e
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;
    :try_end_e
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_e .. :try_end_e} :catch_11
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_e

    move-object/from16 v17, v5

    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v5, "target":Lcz/msebera/android/httpclient/HttpHost;
    goto :goto_6

    .line 459
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_9
    :try_start_f
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v5

    .line 460
    .local v5, "requestURI":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    move-result v6
    :try_end_f
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_f .. :try_end_f} :catch_22
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_f .. :try_end_f} :catch_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1f

    if-eqz v6, :cond_a

    .line 461
    :try_start_10
    invoke-static {v5}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    move-object/from16 v17, v6

    .line 464
    .end local v5    # "requestURI":Ljava/net/URI;
    :cond_a
    :goto_6
    if-nez v17, :cond_b

    .line 465
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5
    :try_end_10
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_e

    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v5, "target":Lcz/msebera/android/httpclient/HttpHost;
    goto :goto_7

    .line 464
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_b
    move-object/from16 v5, v17

    .line 469
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :goto_7
    :try_start_11
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->resetHeaders()V

    .line 471
    invoke-virtual {v1, v11, v12}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 474
    const-string v6, "http.target_host"

    invoke-interface {v2, v6, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    const-string v6, "http.route"

    invoke-interface {v2, v6, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    const-string v6, "http.connection"

    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2, v6, v14}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v6, v11, v14, v2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 481
    invoke-direct {v1, v7, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->tryExecute(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v6

    move-object v10, v6

    .line 482
    if-nez v10, :cond_c

    .line 484
    move-object v3, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    goto/16 :goto_1

    .line 488
    :cond_c
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v10, v6}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 489
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v6, v10, v14, v2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 493
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v6, v10, v2}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v6

    move v8, v6

    .line 494
    if-eqz v8, :cond_f

    .line 496
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v6, v10, v2}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v14

    .line 497
    .local v14, "duration":J
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6
    :try_end_11
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_11 .. :try_end_11} :catch_1d
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_11 .. :try_end_11} :catch_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1a

    if-eqz v6, :cond_e

    .line 499
    const-wide/16 v17, 0x0

    cmp-long v6, v14, v17

    if-lez v6, :cond_d

    .line 500
    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "userinfo":Ljava/lang/String;
    .local v18, "userinfo":Ljava/lang/String;
    const-string v3, "for "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_12 .. :try_end_12} :catch_14
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_12

    .local v3, "s":Ljava/lang/String;
    goto :goto_8

    .line 583
    .end local v3    # "s":Ljava/lang/String;
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    .end local v14    # "duration":J
    .end local v18    # "userinfo":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v20, v4

    move-object v3, v5

    goto/16 :goto_10

    .line 580
    :catch_13
    move-exception v0

    move-object/from16 v20, v4

    move-object v3, v5

    goto/16 :goto_11

    .line 577
    :catch_14
    move-exception v0

    move-object/from16 v20, v4

    move-object v3, v5

    goto/16 :goto_12

    .line 572
    :catch_15
    move-exception v0

    move-object/from16 v20, v4

    move-object v3, v5

    goto/16 :goto_13

    .line 502
    .local v3, "userinfo":Ljava/lang/String;
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v13    # "userToken":Ljava/lang/Object;
    .restart local v14    # "duration":J
    :cond_d
    move-object/from16 v18, v3

    .end local v3    # "userinfo":Ljava/lang/String;
    .restart local v18    # "userinfo":Ljava/lang/String;
    :try_start_13
    const-string v3, "indefinitely"

    .line 504
    .local v3, "s":Ljava/lang/String;
    :goto_8
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    :try_end_13
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1a

    move-object/from16 v20, v4

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .local v20, "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_14 .. :try_end_14} :catch_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_16

    move-object/from16 v17, v5

    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :try_start_15
    const-string v5, "Connection can be kept alive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_9

    .line 583
    .end local v3    # "s":Ljava/lang/String;
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    .end local v14    # "duration":J
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v18    # "userinfo":Ljava/lang/String;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_16
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_10

    .line 580
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_17
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_11

    .line 577
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_18
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_12

    .line 572
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_19
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    goto/16 :goto_13

    .line 497
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .local v3, "userinfo":Ljava/lang/String;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v13    # "userToken":Ljava/lang/Object;
    .restart local v14    # "duration":J
    :cond_e
    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    .line 506
    .end local v3    # "userinfo":Ljava/lang/String;
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v18    # "userinfo":Ljava/lang/String;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :goto_9
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v14, v15, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_a

    .line 494
    .end local v14    # "duration":J
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v18    # "userinfo":Ljava/lang/String;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v3    # "userinfo":Ljava/lang/String;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_f
    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    .line 509
    .end local v3    # "userinfo":Ljava/lang/String;
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v18    # "userinfo":Ljava/lang/String;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :goto_a
    invoke-virtual {v1, v7, v10, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->handleResponse(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    move-result-object v3

    .line 510
    .local v3, "followup":Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    if-nez v3, :cond_10

    .line 511
    const/4 v4, 0x1

    move v9, v4

    .end local v9    # "done":Z
    .local v4, "done":Z
    goto/16 :goto_c

    .line 513
    .end local v4    # "done":Z
    .restart local v9    # "done":Z
    :cond_10
    if-eqz v8, :cond_11

    .line 515
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v4

    .line 516
    .local v4, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-static {v4}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 519
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    .line 520
    .end local v4    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    goto :goto_b

    .line 521
    :cond_11
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    .line 522
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v4

    sget-object v5, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_12

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 523
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 524
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 525
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Resetting proxy auth state"

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 526
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 528
    :cond_12
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v4

    sget-object v5, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_13

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 529
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 530
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 531
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Resetting target auth state"

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 532
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 536
    :cond_13
    :goto_b
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 537
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 539
    :cond_14
    move-object v4, v3

    move-object v7, v4

    .line 542
    :goto_c
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v4, :cond_16

    .line 543
    if-nez v13, :cond_15

    .line 544
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    invoke-interface {v4, v2}, Lcz/msebera/android/httpclient/client/UserTokenHandler;->getUserToken(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    .line 545
    invoke-interface {v2, v0, v13}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    :cond_15
    if-eqz v13, :cond_16

    .line 548
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4, v13}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    .line 552
    .end local v3    # "followup":Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    .end local v18    # "userinfo":Ljava/lang/String;
    :cond_16
    move-object/from16 v5, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    goto/16 :goto_1

    .line 583
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .local v4, "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_1a
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_10

    .line 580
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_1b
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_11

    .line 577
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_1c
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_12

    .line 572
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :catch_1d
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_13

    .line 441
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v13    # "userToken":Ljava/lang/Object;
    :catch_1e
    move-exception v0

    move-object/from16 v20, v4

    .line 442
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .local v0, "ex":Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 443
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 445
    :cond_17
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->getResponse()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v3

    move-object v10, v3

    .line 446
    goto :goto_d

    .line 583
    .end local v0    # "ex":Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v11    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v12    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v13    # "userToken":Ljava/lang/Object;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :catch_1f
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_10

    .line 580
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :catch_20
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_11

    .line 577
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :catch_21
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_12

    .line 572
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :catch_22
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v3, v17

    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_13

    .line 583
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .local v3, "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .local v5, "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_23
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_10

    .line 580
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_24
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto/16 :goto_11

    .line 577
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_25
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto :goto_12

    .line 572
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_26
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    goto :goto_13

    .line 394
    .end local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_18
    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    .line 556
    .end local v3    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v4    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v5    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v6    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v16    # "origWrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .restart local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v19    # "origRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v20    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    :goto_d
    if-eqz v10, :cond_1a

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 557
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_e

    .line 565
    :cond_19
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 566
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    new-instance v3, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-direct {v3, v0, v4, v8}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V

    .line 567
    .end local v0    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .local v3, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-interface {v10, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_f

    .line 583
    .end local v3    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :catch_27
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_10

    .line 580
    :catch_28
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_11

    .line 577
    :catch_29
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_12

    .line 572
    :catch_2a
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_13

    .line 559
    .restart local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_1a
    :goto_e
    if-eqz v8, :cond_1b

    .line 560
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    .line 562
    :cond_1b
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_15
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_15 .. :try_end_15} :catch_2a
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_15 .. :try_end_15} :catch_29
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_27

    .line 570
    :goto_f
    return-object v10

    .line 584
    .end local v10    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v17    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v3, "target":Lcz/msebera/android/httpclient/HttpHost;
    :goto_10
    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 585
    throw v0

    .line 581
    .local v0, "ex":Ljava/io/IOException;
    :goto_11
    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 582
    throw v0

    .line 578
    .local v0, "ex":Lcz/msebera/android/httpclient/HttpException;
    :goto_12
    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 579
    throw v0

    .line 573
    .local v0, "ex":Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;
    :goto_13
    new-instance v4, Ljava/io/InterruptedIOException;

    const-string v5, "Connection has been shut down"

    invoke-direct {v4, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 575
    .local v4, "ioex":Ljava/io/InterruptedIOException;
    invoke-virtual {v4, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 576
    goto :goto_15

    :goto_14
    throw v4

    :goto_15
    goto :goto_14
.end method

.method protected handleResponse(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .locals 16
    .param p1, "roureq"    # Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1024
    move-object/from16 v0, p0

    move-object/from16 v6, p3

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v7

    .line 1025
    .local v7, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v8

    .line 1027
    .local v8, "request":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v9

    .line 1029
    .local v9, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    invoke-static {v9}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1030
    const-string v1, "http.target_host"

    invoke-interface {v6, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpHost;

    .line 1031
    .local v1, "target":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v1, :cond_0

    .line 1032
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 1034
    :cond_0
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v2

    if-gez v2, :cond_1

    .line 1035
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v2

    .line 1036
    .local v2, "scheme":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    new-instance v3, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getDefaultPort()I

    move-result v5

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v4, v5, v10}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v3

    move-object v2, v1

    goto :goto_0

    .line 1034
    .end local v2    # "scheme":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    :cond_1
    move-object v2, v1

    .line 1039
    .end local v1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v2, "target":Lcz/msebera/android/httpclient/HttpHost;
    :goto_0
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v10

    .line 1042
    move-object v11, v2

    .end local v2    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v10, "targetAuthRequested":Z
    .local v11, "target":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 1044
    .local v1, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v1, :cond_2

    .line 1045
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1044
    :cond_2
    move-object v2, v1

    .line 1047
    .end local v1    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .local v2, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    :goto_1
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v12

    .line 1050
    move-object v13, v2

    .end local v2    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .local v12, "proxyAuthRequested":Z
    .local v13, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v10, :cond_3

    .line 1051
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v2, v11

    .end local v11    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v2, "target":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v1

    .end local v2    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v11    # "target":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v1, :cond_3

    .line 1054
    return-object p1

    .line 1057
    :cond_3
    if-eqz v12, :cond_4

    .line 1058
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v2, v13

    .end local v13    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .local v2, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1061
    return-object p1

    .line 1057
    .end local v2    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v13    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    :cond_4
    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object v2, v13

    .end local v13    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .restart local v2    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    goto :goto_2

    .line 1029
    .end local v2    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .end local v10    # "targetAuthRequested":Z
    .end local v11    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v12    # "proxyAuthRequested":Z
    :cond_5
    move-object/from16 v3, p2

    .line 1066
    :cond_6
    :goto_2
    invoke-static {v9}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isRedirecting(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 1067
    invoke-interface {v1, v8, v3, v6}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->isRedirected(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1069
    iget v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge v1, v4, :cond_a

    .line 1073
    iget v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 1076
    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 1078
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    invoke-interface {v1, v8, v3, v6}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->getRedirect(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object v1

    .line 1079
    .local v1, "redirect":Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v2

    .line 1080
    .local v2, "orig":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    invoke-interface {v1, v4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1082
    invoke-interface {v1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    .line 1083
    .local v4, "uri":Ljava/net/URI;
    invoke-static {v4}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    .line 1084
    .local v5, "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v5, :cond_9

    .line 1089
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1090
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v11, "Resetting target auth state"

    invoke-virtual {v10, v11}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1091
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 1092
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v10

    .line 1093
    .local v10, "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    if-eqz v10, :cond_7

    invoke-interface {v10}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1094
    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v12, "Resetting proxy auth state"

    invoke-virtual {v11, v12}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1095
    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v11}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 1099
    .end local v10    # "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    :cond_7
    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v10

    .line 1100
    .local v10, "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    invoke-virtual {v10, v9}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 1102
    invoke-virtual {v0, v5, v10, v6}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v11

    .line 1103
    .local v11, "newRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    new-instance v12, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    invoke-direct {v12, v10, v11}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 1105
    .local v12, "newRequest":Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1106
    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Redirecting to \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' via "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1109
    :cond_8
    return-object v12

    .line 1085
    .end local v10    # "wrapper":Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .end local v11    # "newRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v12    # "newRequest":Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    :cond_9
    new-instance v10, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1070
    .end local v1    # "redirect":Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .end local v2    # "orig":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v4    # "uri":Ljava/net/URI;
    .end local v5    # "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    :cond_a
    new-instance v1, Lcz/msebera/android/httpclient/client/RedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum redirects ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") exceeded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1112
    :cond_b
    return-object v2
.end method

.method protected releaseConnection()V
    .locals 3

    .line 728
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "ignored":Ljava/io/IOException;
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 732
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 733
    return-void
.end method

.method protected rewriteRequestURI(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 4
    .param p1, "request"    # Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .param p2, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 335
    :try_start_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 336
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 340
    .local v1, "target":Lcz/msebera/android/httpclient/HttpHost;
    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URIUtils;->DROP_FRAGMENT_AND_NORMALIZE:Ljava/util/EnumSet;

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Ljava/util/EnumSet;)Ljava/net/URI;

    move-result-object v2

    .line 341
    .end local v0    # "uri":Ljava/net/URI;
    .end local v1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .local v2, "uri":Ljava/net/URI;
    goto :goto_0

    .line 342
    .end local v2    # "uri":Ljava/net/URI;
    .restart local v0    # "uri":Ljava/net/URI;
    :cond_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    move-object v2, v1

    .end local v0    # "uri":Ljava/net/URI;
    .restart local v2    # "uri":Ljava/net/URI;
    goto :goto_0

    .line 346
    .end local v2    # "uri":Ljava/net/URI;
    .restart local v0    # "uri":Ljava/net/URI;
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URIUtils;->DROP_FRAGMENT_AND_NORMALIZE:Ljava/util/EnumSet;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Ljava/util/EnumSet;)Ljava/net/URI;

    move-result-object v1

    move-object v2, v1

    .end local v0    # "uri":Ljava/net/URI;
    .restart local v2    # "uri":Ljava/net/URI;
    goto :goto_0

    .line 349
    .end local v2    # "uri":Ljava/net/URI;
    .restart local v0    # "uri":Ljava/net/URI;
    :cond_2
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    move-object v2, v1

    .line 352
    .end local v0    # "uri":Ljava/net/URI;
    .restart local v2    # "uri":Ljava/net/URI;
    :goto_0
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v2    # "uri":Ljava/net/URI;
    nop

    .line 358
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 356
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class Lnet/sunniwell/android/httpserver/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Http.Server.WorkerThread"


# instance fields
.field private final conn:Lorg/apache/http/HttpServerConnection;

.field private final httpservice:Lorg/apache/http/protocol/HttpService;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V
    .locals 0
    .param p1, "httpservice"    # Lorg/apache/http/protocol/HttpService;
    .param p2, "conn"    # Lorg/apache/http/HttpServerConnection;

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    iput-object p1, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    .line 24
    iput-object p2, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 28
    const-string v0, "New connection thread"

    const-string v1, "Http.Server.WorkerThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 31
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    nop

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    goto :goto_1

    .line 32
    :cond_0
    iget-object v2, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    :try_start_1
    iget-object v1, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    :goto_2
    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 39
    :catch_0
    move-exception v1

    :goto_3
    goto :goto_4

    .line 36
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 34
    :catch_1
    move-exception v2

    .line 35
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v3, ".....Exception connection......"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .end local v2    # "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 42
    :goto_4
    return-void

    .line 38
    :goto_5
    :try_start_4
    iget-object v2, p0, Lnet/sunniwell/android/httpserver/WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 39
    :catch_2
    move-exception v2

    :goto_6
    nop

    .line 41
    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.class public Lnet/sunniwell/android/httpserver/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# instance fields
.field private final requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    :try_start_0
    new-instance v0, Lnet/sunniwell/android/httpserver/RequestListenerThread;

    invoke-direct {v0, p1}, Lnet/sunniwell/android/httpserver/RequestListenerThread;-><init>(I)V

    iput-object v0, p0, Lnet/sunniwell/android/httpserver/HttpServer;->requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    .line 16
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/HttpServer;->requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sunniwell/android/httpserver/RequestListenerThread;->setDaemon(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    nop

    .line 20
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .line 33
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/HttpServer;->requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/RequestListenerThread;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .locals 1

    .line 29
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/HttpServer;->requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/RequestListenerThread;->getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/HttpServer;->requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/HttpServer;->requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/RequestListenerThread;->start()V

    .line 26
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/HttpServer;->requestListenerThread:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    invoke-virtual {v0}, Lnet/sunniwell/android/httpserver/RequestListenerThread;->stopServer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

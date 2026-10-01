.class Lnet/sunniwell/android/httpserver/RequestListenerThread;
.super Ljava/lang/Thread;
.source "RequestListenerThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestListenerThread"


# instance fields
.field private final httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

.field private final httpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

.field private final httpService:Lorg/apache/http/protocol/HttpService;

.field private final params:Lorg/apache/http/params/HttpParams;

.field private final serversocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 55
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    .line 56
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    .line 57
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    .line 58
    const-string v1, "http.socket.timeout"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 59
    nop

    .line 60
    nop

    .line 59
    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 62
    nop

    .line 61
    const-string v1, "http.connection.stalecheck"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 63
    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 64
    nop

    .line 65
    nop

    .line 64
    const-string v1, "http.origin-server"

    const-string v2, "STB Http Server/1.0"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 69
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    iput-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 114
    new-instance v0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    iput-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    .line 117
    new-instance v0, Lnet/sunniwell/android/httpserver/RequestListenerThread$1;

    iget-object v1, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 118
    new-instance v2, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 119
    new-instance v3, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/sunniwell/android/httpserver/RequestListenerThread$1;-><init>(Lnet/sunniwell/android/httpserver/RequestListenerThread;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 117
    iput-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    .line 146
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v1, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 147
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v1, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 148
    return-void
.end method


# virtual methods
.method public getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .line 177
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    return-object v0
.end method

.method public getHttpRequestHandlerRegistry()Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .locals 1

    .line 181
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpRequestHandlerRegistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Listening on port "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestListenerThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    nop

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 156
    .local v0, "socket":Ljava/net/Socket;
    new-instance v2, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    .line 157
    .local v2, "conn":Lorg/apache/http/impl/DefaultHttpServerConnection;
    nop

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incoming connection from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 162
    new-instance v3, Lnet/sunniwell/android/httpserver/WorkerThread;

    iget-object v4, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    invoke-direct {v3, v4, v2}, Lnet/sunniwell/android/httpserver/WorkerThread;-><init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V

    .line 163
    .local v3, "t":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 164
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "socket":Ljava/net/Socket;
    .end local v2    # "conn":Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v3    # "t":Ljava/lang/Thread;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    nop

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "I/O error initialising connection thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto :goto_1

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/io/InterruptedIOException;
    nop

    .line 174
    .end local v0    # "ex":Ljava/io/InterruptedIOException;
    :goto_1
    return-void
.end method

.method public stopServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 186
    return-void
.end method

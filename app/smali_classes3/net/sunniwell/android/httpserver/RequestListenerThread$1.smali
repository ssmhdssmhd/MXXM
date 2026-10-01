.class Lnet/sunniwell/android/httpserver/RequestListenerThread$1;
.super Lorg/apache/http/protocol/HttpService;
.source "RequestListenerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sunniwell/android/httpserver/RequestListenerThread;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sunniwell/android/httpserver/RequestListenerThread;


# direct methods
.method constructor <init>(Lnet/sunniwell/android/httpserver/RequestListenerThread;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "$anonymous1"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "$anonymous2"    # Lorg/apache/http/HttpResponseFactory;

    .line 1
    iput-object p1, p0, Lnet/sunniwell/android/httpserver/RequestListenerThread$1;->this$0:Lnet/sunniwell/android/httpserver/RequestListenerThread;

    .line 117
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    return-void
.end method


# virtual methods
.method protected handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "ex"    # Lorg/apache/http/HttpException;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .line 125
    instance-of v0, p1, Lnet/sunniwell/android/httpserver/auth/BasicAuthenticationException;

    if-nez v0, :cond_3

    .line 131
    instance-of v0, p1, Lorg/apache/http/MethodNotSupportedException;

    if-eqz v0, :cond_0

    .line 132
    const/16 v0, 0x1f5

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 133
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/http/UnsupportedHttpVersionException;

    if-eqz v0, :cond_1

    .line 134
    const/16 v0, 0x1f9

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 135
    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/http/ProtocolException;

    if-eqz v0, :cond_2

    .line 136
    const/16 v0, 0x190

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    const/16 v0, 0x1f4

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 140
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    .local v0, "msg":[B
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 142
    .local v1, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "text/plain; charset=US-ASCII"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 143
    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 144
    return-void
.end method

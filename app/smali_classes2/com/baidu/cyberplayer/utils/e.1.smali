.class public Lcom/baidu/cyberplayer/utils/e;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/RuntimeException;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/baidu/cyberplayer/utils/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/baidu/cyberplayer/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/d;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/d;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProxyHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/e;->a:Ljava/lang/RuntimeException;

    .line 45
    nop

    .line 46
    if-nez p3, :cond_0

    .line 48
    new-instance p3, Lcom/baidu/cyberplayer/utils/d;

    invoke-direct {p3, p1}, Lcom/baidu/cyberplayer/utils/d;-><init>(Landroid/content/Context;)V

    .line 50
    :cond_0
    invoke-virtual {p3}, Lcom/baidu/cyberplayer/utils/d;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/e;->a:Z

    .line 51
    invoke-virtual {p3}, Lcom/baidu/cyberplayer/utils/d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/e;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {p3}, Lcom/baidu/cyberplayer/utils/d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/e;->c:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/e;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 55
    new-instance p1, Lorg/apache/http/HttpHost;

    iget-object p3, p0, Lcom/baidu/cyberplayer/utils/e;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/e;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, p3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/e;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p3

    const-string v0, "http.route.default-proxy"

    invoke-interface {p3, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/e;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const/16 p3, 0x7530

    invoke-static {p1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/e;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/e;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const/16 p3, 0x2000

    invoke-static {p1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/e;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/e;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/e;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/e;->a:Ljava/lang/RuntimeException;

    .line 84
    :cond_0
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .line 93
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 95
    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/e;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/baidu/cyberplayer/utils/e;->a:Ljava/lang/String;

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/e;->a:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    return-void
.end method

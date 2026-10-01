.class Lcom/baidu/cyberplayer/core/BVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/core/BVideoView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/BVideoView;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/core/BVideoView;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView$3;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1396
    const-string v0, "https://drm.media.baidubce.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1397
    const-string v1, "/v1/playerAuth"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ak"

    invoke-static {}, Lcom/baidu/cyberplayer/core/BVideoView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "player"

    const-string v2, "android-cyberplayer-1.10.1s"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1403
    nop

    .line 1405
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView$3;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 1406
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1407
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$3;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lorg/apache/http/HttpResponse;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$3;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lorg/apache/http/HttpResponse;)V

    .line 1412
    :goto_0
    nop

    .line 1413
    return-void

    .line 1411
    :goto_1
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView$3;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v2, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lorg/apache/http/HttpResponse;)V

    throw v0
.end method

.class Lcom/baidu/cyberplayer/dlna/c$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/c;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c$b;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$b;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$b;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$b;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aY;->b(Lcom/baidu/cyberplayer/utils/aa;)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$b;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/dlna/c;->c(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$b;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->b(Lcom/baidu/cyberplayer/dlna/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$b;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->c(Lcom/baidu/cyberplayer/dlna/c;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    :goto_0
    return-void
.end method

.class Lcom/baidu/cyberplayer/core/CyberPlayerCore$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 786
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 788
    :try_start_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/lang/Object;

    move-result-object v1

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    goto :goto_0

    .line 793
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 789
    :catch_0
    move-exception v1

    .line 791
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 793
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Z)Z

    .line 796
    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 797
    const/16 v1, 0x64

    const/16 v2, 0x130

    invoke-static {v1, v2, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(III)V

    .line 798
    const-string v0, "CyberPlayerCore"

    const-string/jumbo v1, "surface create fail 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 801
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 802
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->init()V

    .line 803
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v1, v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setDisplayMode(I)V

    .line 805
    :cond_1
    return-void

    .line 793
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

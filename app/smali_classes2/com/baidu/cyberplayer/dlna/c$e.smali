.class Lcom/baidu/cyberplayer/dlna/c$e;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/c;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 948
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 949
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    new-instance v2, Lcom/baidu/cyberplayer/dlna/c$e$1;

    invoke-direct {v2, p0}, Lcom/baidu/cyberplayer/dlna/c$e$1;-><init>(Lcom/baidu/cyberplayer/dlna/c$e;)V

    invoke-static {v1, v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1643
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c$e;->a:Lcom/baidu/cyberplayer/dlna/c;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1646
    return-void

    .line 1644
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

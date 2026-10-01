.class Lcom/cicada/player/utils/VsyncTimer$2;
.super Landroid/os/Handler;
.source "VsyncTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cicada/player/utils/VsyncTimer;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cicada/player/utils/VsyncTimer;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/VsyncTimer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cicada/player/utils/VsyncTimer;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 38
    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v1}, Lcom/cicada/player/utils/VsyncTimer;->access$000(Lcom/cicada/player/utils/VsyncTimer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/cicada/player/utils/VsyncTimer;->access$300(Lcom/cicada/player/utils/VsyncTimer;J)I

    goto :goto_0

    .line 43
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$400()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 44
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v1}, Lcom/cicada/player/utils/VsyncTimer;->access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 45
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 46
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v1}, Lcom/cicada/player/utils/VsyncTimer;->access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 47
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/cicada/player/utils/VsyncTimer;->access$700()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 48
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v1}, Lcom/cicada/player/utils/VsyncTimer;->access$500(Lcom/cicada/player/utils/VsyncTimer;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 49
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v1}, Lcom/cicada/player/utils/VsyncTimer;->access$000(Lcom/cicada/player/utils/VsyncTimer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/cicada/player/utils/VsyncTimer;->access$800(Lcom/cicada/player/utils/VsyncTimer;J)V

    .line 50
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v0}, Lcom/cicada/player/utils/VsyncTimer;->access$900(Lcom/cicada/player/utils/VsyncTimer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 51
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/cicada/player/utils/VsyncTimer;->access$002(Lcom/cicada/player/utils/VsyncTimer;J)J

    .line 53
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v0}, Lcom/cicada/player/utils/VsyncTimer;->access$1000(Lcom/cicada/player/utils/VsyncTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/VsyncTimer$2;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    invoke-static {v1}, Lcom/cicada/player/utils/VsyncTimer;->access$1000(Lcom/cicada/player/utils/VsyncTimer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_3
    :goto_0
    return-void
.end method

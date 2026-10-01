.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setvvListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1707
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1709
    const-string v0, "LivePlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion\u4e2dThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetSYNC_Playing(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1712
    :try_start_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetSYNC_Playing(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1713
    const-string v1, "LivePlayerActivity"

    const-string v2, "onCompletion...SYNC_Playing.notify()"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    sget-object v1, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputmPlayerStatus(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Lcom/shenma/tvlauncher/vod/LivePlayerActivity$PLAYER_STATUS;)V

    .line 1716
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1717
    const-string v0, "LivePlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisNext(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".....isLast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisLast(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "....isPause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisPause(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "....isDestroy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisDestroy(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisNext(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisNext(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisLast(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1730
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1731
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1732
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 1733
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    sput v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->xjposition:I

    .line 1734
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputmLastPos(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 1735
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisLast(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1738
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisPause(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1739
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputisPause(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1740
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetisDestroy(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1741
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$24;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1754
    :cond_4
    :goto_0
    return-void

    .line 1714
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2785
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 2808
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettv_currentTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mupdateTextViewWithTimeFormat(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Landroid/widget/TextView;I)V

    .line 2811
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, p2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mupdateprogress(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2813
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 2801
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2802
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 2788
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V

    .line 2789
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 2792
    .local v0, "iseekPos":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 2795
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$46;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2796
    return-void
.end method

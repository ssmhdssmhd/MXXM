.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 513
    if-eqz p3, :cond_2

    .line 514
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetISCNTV(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    const v0, 0x493e0

    if-le p2, v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v2, v0

    iput v2, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    .line 517
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v2, v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmedialist()Ljava/util/ArrayList;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v2, v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    if-le v1, v2, :cond_0

    .line 519
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v2, v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose_start:I

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 520
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v1

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmedialist()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    .line 521
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->getMediaurl()Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 524
    :cond_0
    rem-int v0, p2, v0

    .line 525
    .local v0, "pose_end":I
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/VideoView;->seekTo(I)V

    .line 526
    .end local v0    # "pose_end":I
    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget v1, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->pose:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->seekTo(I)V

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmProgressHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 507
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmProgressHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 500
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$7;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 503
    return-void
.end method

.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPosition:J

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/LivePlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 695
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->lastPosition:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 698
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 699
    .local v0, "currentPosition":J
    iget-wide v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->lastPosition:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 700
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetTackle_mode(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 701
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetplayIndex(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mSelecteVod(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 702
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 704
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    goto :goto_0

    .line 710
    :cond_1
    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->lastPosition:J

    .line 712
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeedRunnabless(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$8;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget v4, v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->check_time:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 713
    return-void
.end method

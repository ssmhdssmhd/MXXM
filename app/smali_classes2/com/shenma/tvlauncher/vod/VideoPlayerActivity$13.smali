.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPosition:J

.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1055
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->lastPosition:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1060
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v1

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputcurrentPositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V

    .line 1061
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetcurrentPositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->lastPosition:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_4

    .line 1062
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetcurrentPositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    sput-wide v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 1063
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputseizing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto/16 :goto_0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputseizing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1067
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-le v0, v4, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputseizings(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1070
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetPlay_timeout_debug(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->seizing:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetPlayersNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputPlayersNumber(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1077
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetPlay_timeout_debug(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1078
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->no_source:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1081
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1082
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_0

    .line 1085
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetPlay_timeout_debug(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1086
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->single:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1094
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetcurrentPositions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->lastPosition:J

    .line 1096
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->currentPosition:J

    .line 1099
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetseizing(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 1101
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetspeedRunnabless(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$13;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetseizing_time(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1103
    :cond_6
    return-void
.end method

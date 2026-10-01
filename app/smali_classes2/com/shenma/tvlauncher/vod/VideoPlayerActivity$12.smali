.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;
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

    .line 1000
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1003
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1005
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetPlay_timeout_debug(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v2, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetMaxClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetMaxtimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->analysis:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Used_time:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->second:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Change_resolution:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetMaxtimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->analysis:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Used_time:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->second:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Change_resolutions:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1015
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgettimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_4

    .line 1016
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetMaxClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClient(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_1

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputload(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1021
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputtimeout(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1022
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetAuto_Source(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1024
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    goto :goto_1

    .line 1027
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1028
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1033
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1035
    .local v0, "nowtime":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 1036
    .local v4, "nowRxbyte":J
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 1037
    .local v6, "rxbyte":J
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v8

    sub-long v8, v0, v8

    .line 1038
    .local v8, "time":J
    cmp-long v10, v6, v2

    if-eqz v10, :cond_6

    cmp-long v10, v8, v2

    if-eqz v10, :cond_6

    .line 1039
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    div-long v10, v6, v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v2, v10, v11}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputspeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V

    .line 1040
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v2

    cmp-long v10, v2, v12

    if-ltz v10, :cond_5

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$sfputrxByte(Ljava/lang/String;)V

    goto :goto_2

    .line 1043
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "KB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$sfputrxByte(Ljava/lang/String;)V

    .line 1045
    :goto_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1047
    :cond_6
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputlastRxByte(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V

    .line 1048
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputlastSpeedTime(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;J)V

    .line 1050
    .end local v0    # "nowtime":J
    .end local v4    # "nowRxbyte":J
    .end local v6    # "rxbyte":J
    .end local v8    # "time":J
    :cond_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$12;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetspeedRunnable(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1051
    return-void
.end method

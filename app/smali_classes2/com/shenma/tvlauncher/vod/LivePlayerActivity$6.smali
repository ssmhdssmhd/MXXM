.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;
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

    .line 631
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 633
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputload(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 634
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetload(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgettimeout(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_2

    .line 635
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetMaxClientID(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetClient(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetClientID(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputload(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputload(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 640
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputtimeout(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 641
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetAuto_Source(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 643
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 647
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$mSwitchsource(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;I)V

    .line 651
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 653
    .local v0, "nowtime":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 654
    .local v4, "nowRxbyte":J
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 655
    .local v6, "rxbyte":J
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v8

    sub-long v8, v0, v8

    .line 656
    .local v8, "time":J
    cmp-long v10, v6, v2

    if-eqz v10, :cond_4

    cmp-long v10, v8, v2

    if-eqz v10, :cond_4

    .line 657
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    div-long v10, v6, v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v2, v10, v11}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V

    .line 658
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v2

    cmp-long v10, v2, v12

    if-ltz v10, :cond_3

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

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

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputrxByte(Ljava/lang/String;)V

    goto :goto_1

    .line 661
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

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

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputrxByte(Ljava/lang/String;)V

    .line 663
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 665
    :cond_4
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputlastRxByte(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V

    .line 666
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputlastSpeedTime(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V

    .line 668
    .end local v0    # "nowtime":J
    .end local v4    # "nowRxbyte":J
    .end local v6    # "rxbyte":J
    .end local v8    # "time":J
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$6;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeedRunnable(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 669
    return-void
.end method

.class Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;
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

    .line 672
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 674
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastRxBytes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastSpeedTimes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 676
    .local v0, "nowtime":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 677
    .local v4, "nowRxbyte":J
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastRxBytes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 678
    .local v6, "rxbyte":J
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetlastSpeedTimes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v8

    sub-long v8, v0, v8

    .line 679
    .local v8, "time":J
    cmp-long v10, v6, v2

    if-eqz v10, :cond_1

    cmp-long v10, v8, v2

    if-eqz v10, :cond_1

    .line 680
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    div-long v10, v6, v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v2, v10, v11}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputspeeds(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V

    .line 681
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeeds(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

    move-result-wide v2

    cmp-long v10, v2, v12

    if-ltz v10, :cond_0

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeeds(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

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

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputrxBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeeds(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)J

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

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$sfputrxBytes(Ljava/lang/String;)V

    .line 686
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputlastRxBytes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V

    .line 689
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fputlastSpeedTimes(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;J)V

    .line 691
    .end local v0    # "nowtime":J
    .end local v4    # "nowRxbyte":J
    .end local v6    # "rxbyte":J
    .end local v8    # "time":J
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/LivePlayerActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->-$$Nest$fgetspeedRunnables(Lcom/shenma/tvlauncher/vod/LivePlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 692
    return-void
.end method

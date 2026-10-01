.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 487
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 489
    .local v0, "nowtime":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 490
    .local v4, "nowRxbyte":J
    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v6}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetlastRxByte(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 491
    .local v6, "rxbyte":J
    iget-object v8, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v8}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetlastSpeedTime(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v8

    sub-long v8, v0, v8

    .line 492
    .local v8, "time":J
    cmp-long v10, v6, v2

    if-lez v10, :cond_1

    cmp-long v10, v8, v2

    if-lez v10, :cond_1

    .line 493
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    div-long v10, v6, v8

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-static {v2, v10, v11}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputspeed(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)V

    .line 494
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v2

    cmp-long v10, v2, v12

    if-ltz v10, :cond_0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfputrxByte(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetspeed(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfputrxByte(Ljava/lang/String;)V

    .line 499
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputlastRxByte(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)V

    .line 502
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputlastSpeedTime(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)V

    .line 504
    .end local v0    # "nowtime":J
    .end local v4    # "nowRxbyte":J
    .end local v6    # "rxbyte":J
    .end local v8    # "time":J
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmSpeedHandler(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$6;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetspeedRunnable(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

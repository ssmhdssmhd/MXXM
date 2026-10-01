.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->startDanmakuSchedule()V
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

    .line 2000
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2004
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2005
    return-void

    .line 2006
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v1

    invoke-virtual {v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mgetDanmakuWithinTimeRange(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;JJ)Ljava/util/List;

    move-result-object v0

    .line 2009
    .local v0, "danmakuToShow":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;

    .line 2011
    .local v2, "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    :try_start_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmDanmakuView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Lmaster/flame/danmaku/ui/widget/DanmakuView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2012
    goto :goto_1

    .line 2015
    :cond_1
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v5, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$maddDanmakuToView(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2018
    nop

    .line 2019
    .end local v2    # "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    goto :goto_0

    .line 2016
    .restart local v2    # "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    :catch_0
    move-exception v1

    .line 2017
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2021
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$35;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2022
    return-void
.end method

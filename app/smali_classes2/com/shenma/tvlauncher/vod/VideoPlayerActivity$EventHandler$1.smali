.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2152
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2156
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetiVV(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->stopPlayback()V

    .line 2157
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$1;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetClient(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->setVideoUrl(Ljava/lang/String;)V

    .line 2158
    return-void
.end method

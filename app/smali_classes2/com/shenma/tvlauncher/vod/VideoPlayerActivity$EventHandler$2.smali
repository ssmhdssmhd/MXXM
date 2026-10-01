.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$2;
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

    .line 2228
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$2;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2231
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler$2;->this$1:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$EventHandler;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetib_playStatus(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\u6682\u505c\u64ad\u653e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2232
    return-void
.end method

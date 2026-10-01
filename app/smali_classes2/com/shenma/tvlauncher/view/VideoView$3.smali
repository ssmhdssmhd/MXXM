.class Lcom/shenma/tvlauncher/view/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/VideoView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/VideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView$3;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 123
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$3;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$3;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$3;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnCompletionListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$3;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnCompletionListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView$3;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 129
    :cond_1
    return-void
.end method

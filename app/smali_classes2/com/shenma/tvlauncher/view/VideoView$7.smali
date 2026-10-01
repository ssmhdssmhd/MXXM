.class Lcom/shenma/tvlauncher/view/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 174
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 177
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmSurfaceWidth(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 178
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, p4}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmSurfaceHeight(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 179
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmIsPrepared(Lcom/shenma/tvlauncher/view/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-ne v0, p4, :cond_1

    .line 180
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 182
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 185
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 189
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 192
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmSurfaceHolder(Lcom/shenma/tvlauncher/view/VideoView;Landroid/view/SurfaceHolder;)V

    .line 193
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$mopenVideo(Lcom/shenma/tvlauncher/view/VideoView;)V

    .line 194
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 198
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmSurfaceHolder(Lcom/shenma/tvlauncher/view/VideoView;Landroid/view/SurfaceHolder;)V

    .line 199
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 202
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 203
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$7;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;Landroid/media/MediaPlayer;)V

    .line 205
    :cond_1
    return-void
.end method

.class Lcom/shenma/tvlauncher/view/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 57
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 60
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmIsPrepared(Lcom/shenma/tvlauncher/view/VideoView;Z)V

    .line 61
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnPreparedListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnPreparedListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 68
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v3}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 71
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSurfaceWidth(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSurfaceHeight(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 75
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmStartWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmStartWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;Z)V

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    .line 84
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_7

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmStartWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 99
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$1;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmStartWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;Z)V

    .line 102
    :cond_7
    :goto_0
    return-void
.end method

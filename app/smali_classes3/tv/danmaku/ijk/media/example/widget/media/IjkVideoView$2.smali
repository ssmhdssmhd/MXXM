.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 162
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmPrepareEndTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)V

    .line 163
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmHudViewHolder(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmPrepareEndTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmPrepareStartTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->updateLoadCost(J)V

    .line 164
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmCurrentState(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 169
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmOnPreparedListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmOnPreparedListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 172
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaController(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaController(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setEnabled(Z)V

    .line 175
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 176
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 178
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmSeekWhenPrepared(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    .line 179
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 180
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 182
    :cond_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_6

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 186
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 187
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoSarNum(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoSarDen(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 188
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmSurfaceWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmSurfaceHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 192
    :cond_3
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmTargetState(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 193
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 194
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaController(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 195
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaController(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    goto :goto_0

    .line 197
    :cond_4
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v0, :cond_5

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 198
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_7

    .line 199
    :cond_5
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaController(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 201
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaController(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show(I)V

    goto :goto_0

    .line 209
    :cond_6
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmTargetState(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 210
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 213
    :cond_7
    :goto_0
    return-void
.end method

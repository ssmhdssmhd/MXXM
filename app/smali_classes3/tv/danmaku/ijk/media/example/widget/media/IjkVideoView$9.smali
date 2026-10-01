.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;


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

    .line 366
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 369
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmSurfaceWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 375
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmSurfaceHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 376
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmTargetState(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 377
    .local v0, "isValidState":Z
    :goto_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, p3, :cond_2

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 378
    .local v2, "hasValidSize":Z
    :cond_3
    :goto_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 379
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmSeekWhenPrepared(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmSeekWhenPrepared(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 382
    :cond_4
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 384
    :cond_5
    return-void
.end method

.method public onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 388
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 390
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmSurfaceHolder(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    .line 394
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$mbindSurfaceHolder(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$mopenVideo(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    .line 398
    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 402
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 404
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmSurfaceHolder(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    .line 411
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->releaseWithoutStop()V

    .line 412
    return-void
.end method

.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 140
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "sarNum"    # I
    .param p5, "sarDen"    # I

    .line 142
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 143
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 144
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmVideoSarNum(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 145
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fputmVideoSarDen(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V

    .line 146
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 149
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoSarNum(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmVideoSarDen(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 152
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->requestLayout()V

    .line 154
    :cond_1
    return-void
.end method

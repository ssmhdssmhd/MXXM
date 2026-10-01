.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;)V
    .locals 0
    .param p1, "this$1"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5$1;->this$1:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 328
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5$1;->this$1:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmOnCompletionListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5$1;->this$1:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmOnCompletionListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5$1;->this$1:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    iget-object v1, v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->-$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 331
    :cond_0
    return-void
.end method

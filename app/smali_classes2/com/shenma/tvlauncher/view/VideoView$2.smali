.class Lcom/shenma/tvlauncher/view/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 106
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 109
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fputmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;I)V

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMyChangeLinstener(Lcom/shenma/tvlauncher/view/VideoView;)Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMyChangeLinstener(Lcom/shenma/tvlauncher/view/VideoView;)Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;->doMyThings()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$2;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 118
    :cond_1
    return-void
.end method

.class Lcom/shenma/tvlauncher/view/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 132
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .line 134
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetTAG(Lcom/shenma/tvlauncher/view/VideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnErrorListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnErrorListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    return v1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$4;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmContext(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    :cond_2
    return v1
.end method

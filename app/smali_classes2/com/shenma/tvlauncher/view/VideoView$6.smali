.class Lcom/shenma/tvlauncher/view/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 165
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView$6;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 168
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$6;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnInfoListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView$6;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmOnInfoListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView$6;->this$0:Lcom/shenma/tvlauncher/view/VideoView;

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/VideoView;->-$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 171
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

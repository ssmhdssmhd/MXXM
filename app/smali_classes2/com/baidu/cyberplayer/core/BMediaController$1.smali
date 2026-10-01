.class Lcom/baidu/cyberplayer/core/BMediaController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/core/BMediaController;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/BMediaController;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/core/BMediaController;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BMediaController$1;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 375
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController$1;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-static {v0, p2}, Lcom/baidu/cyberplayer/core/BMediaController;->a(Lcom/baidu/cyberplayer/core/BMediaController;I)V

    .line 376
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 380
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController$1;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 381
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 386
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController$1;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->a(Lcom/baidu/cyberplayer/core/BMediaController;)Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController$1;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->a(Lcom/baidu/cyberplayer/core/BMediaController;)Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/BMediaController$VideoViewControl;->seekTo(D)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BMediaController$1;->a:Lcom/baidu/cyberplayer/core/BMediaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/cyberplayer/core/BMediaController;->a:Z

    .line 390
    return-void
.end method

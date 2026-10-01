.class Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;
.super Ljava/lang/Object;
.source "IjkAliMediaPlayer.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 584
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 587
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iput p1, v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoWidth:I

    .line 588
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iput p2, v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoHeight:I

    .line 589
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    .line 592
    return-void
.end method

.class public Lcom/shenma/tvlauncher/view/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsPrepared:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMyChangeLinstener:Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/shenma/tvlauncher/view/VideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPrepared(Lcom/shenma/tvlauncher/view/VideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaController(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/widget/MediaController;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMyChangeLinstener(Lcom/shenma/tvlauncher/view/VideoView;)Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMyChangeLinstener:Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBufferingUpdateListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnCompletionListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnErrorListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnInfoListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnPreparedListener(Lcom/shenma/tvlauncher/view/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mStartWhenPrepared:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceHeight(Lcom/shenma/tvlauncher/view/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceWidth(Lcom/shenma/tvlauncher/view/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPrepared(Lcom/shenma/tvlauncher/view/VideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediaPlayer(Lcom/shenma/tvlauncher/view/VideoView;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSeekWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSeekWhenPrepared:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartWhenPrepared(Lcom/shenma/tvlauncher/view/VideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mStartWhenPrepared:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHeight(Lcom/shenma/tvlauncher/view/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHolder(Lcom/shenma/tvlauncher/view/VideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceWidth(Lcom/shenma/tvlauncher/view/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoHeight(Lcom/shenma/tvlauncher/view/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoWidth(Lcom/shenma/tvlauncher/view/VideoView;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenVideo(Lcom/shenma/tvlauncher/view/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->openVideo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 209
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 42
    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$1;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 105
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$2;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 120
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$3;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 131
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$4;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 157
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$5;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 165
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$6;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$6;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 174
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$7;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 210
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mContext:Landroid/content/Context;

    .line 211
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->initVideoView()V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mContext:Landroid/content/Context;

    .line 217
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->initVideoView()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 42
    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$1;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 105
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$2;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 120
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$3;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 131
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$4;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$4;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 157
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$5;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$5;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 165
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$6;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$6;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 174
    new-instance v0, Lcom/shenma/tvlauncher/view/VideoView$7;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/VideoView$7;-><init>(Lcom/shenma/tvlauncher/view/VideoView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 222
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mContext:Landroid/content/Context;

    .line 223
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->initVideoView()V

    .line 224
    return-void
.end method

.method private attachMediaController()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 356
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 358
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 359
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    iget-boolean v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 361
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private initVideoView()V
    .locals 2

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoWidth:I

    .line 275
    iput v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoHeight:I

    .line 276
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 277
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setFocusable(Z)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setFocusableInTouchMode(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->requestFocus()Z

    .line 281
    return-void
.end method

.method private openVideo()V
    .locals 5

    .line 305
    const-string v0, "Unable to open content: "

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 309
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 315
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 319
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 320
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 321
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    .line 323
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->TAG:Ljava/lang/String;

    const-string v4, "reset duration to -1 in openVideo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, -0x1

    iput v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mDuration:I

    .line 325
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 326
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 327
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 328
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 329
    iput v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mCurrentBufferPercentage:I

    .line 330
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 331
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 332
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 333
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 334
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 335
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    nop

    .line 343
    return-void

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    return-void

    .line 336
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 337
    .local v2, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/VideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    return-void

    .line 306
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    :goto_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 462
    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 518
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mCurrentBufferPercentage:I

    return v0

    .line 520
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    .line 498
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 484
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 485
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mDuration:I

    return v0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mDuration:I

    .line 488
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mDuration:I

    return v0

    .line 490
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mDuration:I

    .line 491
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mDuration:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoWidth:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 513
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 425
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_4

    .line 434
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    const/16 v0, 0x56

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 445
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->pause()V

    .line 447
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_2

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_2

    .line 436
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->pause()V

    .line 438
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->start()V

    .line 441
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 443
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 247
    iget v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/view/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 248
    .local v0, "width":I
    iget v1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/shenma/tvlauncher/view/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 249
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setMeasuredDimension(II)V

    .line 250
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 409
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->toggleMediaControlsVisiblity()V

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 417
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->toggleMediaControlsVisiblity()V

    .line 420
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 479
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mStartWhenPrepared:Z

    .line 480
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .line 253
    move v0, p1

    .line 254
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 255
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 257
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 267
    :sswitch_0
    move v0, v2

    goto :goto_0

    .line 259
    :sswitch_1
    move v0, p1

    .line 260
    goto :goto_0

    .line 263
    :sswitch_2
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 264
    nop

    .line 270
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .line 502
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 505
    :cond_0
    iput p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSeekWhenPrepared:I

    .line 507
    :goto_0
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .line 346
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 349
    :cond_0
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 350
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->attachMediaController()V

    .line 351
    return-void
.end method

.method public setMySizeChangeLinstener(Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;)V
    .locals 0
    .param p1, "l"    # Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;

    .line 242
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMyChangeLinstener:Lcom/shenma/tvlauncher/view/VideoView$MySizeChangeLinstener;

    .line 243
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .line 380
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 381
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .line 392
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 393
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .line 400
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 401
    return-void
.end method

.method public setOnPlayingBufferCacheListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 404
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 405
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .line 370
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 371
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 284
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 285
    return-void
.end method

.method public setVideoScale(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 235
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 236
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 288
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/VideoView;->mUri:Landroid/net/Uri;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mStartWhenPrepared:Z

    .line 290
    iput v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mSeekWhenPrepared:I

    .line 291
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/VideoView;->openVideo()V

    .line 292
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->requestLayout()V

    .line 293
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/VideoView;->invalidate()V

    .line 294
    return-void
.end method

.method public start()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mStartWhenPrepared:Z

    goto :goto_0

    .line 469
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mStartWhenPrepared:Z

    .line 471
    :goto_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 299
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 302
    :cond_0
    return-void
.end method

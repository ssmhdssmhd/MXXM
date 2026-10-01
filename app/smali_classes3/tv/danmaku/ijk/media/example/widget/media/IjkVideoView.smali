.class public Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static DECODE:Ljava/lang/Boolean; = null

.field public static final FFP_PROP_FLOAT_PLAYBACK_RATE:I = 0x2713

.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field public static Referer:Ljava/lang/String; = null

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final s_allAspectRatio:[I

.field public static userAgent:Ljava/lang/String;


# instance fields
.field private DECODE_HW:Ljava/lang/Boolean;

.field private TAG:Ljava/lang/String;

.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mCurrentState:I

.field private mEnableBackgroundPlay:Z

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mManifestString:Ljava/lang/String;

.field private mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

.field mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

.field private mSeekWhenPrepared:I

.field private mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private subtitleDisplay:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppContext(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHudViewHolder(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaController(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBufferingUpdateListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnCompletionListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnErrorListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnInfoListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnPreparedListener(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrepareEndTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2

    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPrepareStartTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2

    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderView(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekEndTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2

    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekStartTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2

    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekWhenPrepared(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetState(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSarDen(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSarNum(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 0

    iget p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitleDisplay(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentBufferPercentage(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrepareEndTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)V
    .locals 0

    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSeekEndTime(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)V
    .locals 0

    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHolder(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetState(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoHeight(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoRotationDegree(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoRotationDegree:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoSarDen(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoSarNum(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoWidth(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindSurfaceHolder(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenVideo(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V
    .locals 0

    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    .line 224
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 426
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 100
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 103
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 128
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 139
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 159
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 160
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 215
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 225
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 238
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 288
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 340
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 350
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 358
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 366
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 418
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 419
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 422
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 423
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 427
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 428
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 431
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 100
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 103
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 128
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 139
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 159
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 160
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 215
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 225
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 238
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 288
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 340
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 350
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 358
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 366
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 418
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 419
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 422
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 423
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 432
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 436
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 100
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 103
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 128
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 139
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 159
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 160
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 215
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 225
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 238
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 288
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 340
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 350
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 358
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 366
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 418
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 419
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 422
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 423
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 437
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 438
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 442
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 100
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 103
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 127
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 128
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 139
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 158
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 159
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 160
    new-instance v4, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v4, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 215
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 225
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 238
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 288
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 340
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 350
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$7;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 358
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$8;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 366
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$9;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 418
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 419
    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 421
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 422
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 423
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 443
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 444
    return-void
.end method

.method private native _setPropertyFloat(IF)V
.end method

.method private attachMediaController()V
    .locals 3

    .line 729
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 731
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 733
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 734
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setEnabled(Z)V

    .line 736
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 808
    if-nez p1, :cond_0

    .line 809
    return-void

    .line 811
    :cond_0
    if-nez p2, :cond_1

    .line 812
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 813
    return-void

    .line 816
    :cond_1
    invoke-interface {p2, p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 817
    return-void
.end method

.method private buildLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .line 1707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    const-string v0, "und"

    return-object v0

    .line 1709
    :cond_0
    return-object p1
.end method

.method private buildResolution(IIII)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sarNum"    # I
    .param p4, "sarDen"    # I

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1655
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1656
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1659
    const/4 v1, 0x1

    if-gt p3, v1, :cond_0

    if-le p4, v1, :cond_1

    .line 1660
    :cond_0
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1662
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1664
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildTimeMilli(J)Ljava/lang/String;
    .locals 17
    .param p1, "duration"    # J

    .line 1671
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1672
    .local v0, "total_seconds":J
    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    .line 1673
    .local v4, "hours":J
    rem-long v2, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    .line 1674
    .local v2, "minutes":J
    rem-long v6, v0, v6

    .line 1675
    .local v6, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    if-gtz v10, :cond_0

    .line 1676
    const-string v8, "--:--"

    return-object v8

    .line 1678
    :cond_0
    const-wide/16 v10, 0x64

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    cmp-long v16, v4, v10

    if-ltz v16, :cond_1

    .line 1679
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v15

    aput-object v10, v12, v14

    aput-object v11, v12, v13

    const-string v9, "%d:%02d:%02d"

    invoke-static {v8, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1680
    :cond_1
    cmp-long v10, v4, v8

    if-lez v10, :cond_2

    .line 1681
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v15

    aput-object v10, v12, v14

    aput-object v11, v12, v13

    const-string v9, "%02d:%02d:%02d"

    invoke-static {v8, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1683
    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v9, v11, v15

    aput-object v10, v11, v14

    const-string v9, "%02d:%02d"

    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private buildTrackType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .line 1688
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1689
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1702
    sget v1, Lcom/shenma/tvlauncher/R$string;->TrackType_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1699
    :pswitch_0
    sget v1, Lcom/shenma/tvlauncher/R$string;->TrackType_metadata:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1695
    :pswitch_1
    sget v1, Lcom/shenma/tvlauncher/R$string;->TrackType_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1697
    :pswitch_2
    sget v1, Lcom/shenma/tvlauncher/R$string;->TrackType_timedtext:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1693
    :pswitch_3
    sget v1, Lcom/shenma/tvlauncher/R$string;->TrackType_audio:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1691
    :pswitch_4
    sget v1, Lcom/shenma/tvlauncher/R$string;->TrackType_video:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPlayerText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # I

    .line 467
    packed-switch p1, :pswitch_data_0

    .line 481
    sget v0, Lcom/shenma/tvlauncher/R$string;->N_A:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    .line 478
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_player_IjkAliMediaPlayer:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 475
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_player_IjkExoMediaPlayer:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 472
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_player_IjkMediaPlayer:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_3
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_player_AndroidMediaPlayer:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    .restart local v0    # "text":Ljava/lang/String;
    nop

    .line 484
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRenderText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "render"    # I

    .line 448
    packed-switch p1, :pswitch_data_0

    .line 459
    sget v0, Lcom/shenma/tvlauncher/R$string;->N_A:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_render_texture_view:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 453
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_render_surface_view:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 450
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_render_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .restart local v0    # "text":Ljava/lang/String;
    nop

    .line 462
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initBackground()V
    .locals 2

    .line 1563
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableBackgroundPlay()Z

    move-result v0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 1564
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->intentToStart(Landroid/content/Context;)V

    .line 1566
    invoke-static {}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1567
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1570
    :cond_0
    return-void
.end method

.method private initRenders()V
    .locals 3

    .line 1071
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1072
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableSurfaceView()Z

    move-result v0

    const/4 v1, 0x1

    .line 1073
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableTextureView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableNoView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1077
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1080
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1082
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRender(I)V

    .line 1083
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    .line 491
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/Settings;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    .line 493
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initBackground()V

    .line 494
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initRenders()V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    .line 497
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    .line 500
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setFocusable(Z)V

    .line 501
    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setFocusableInTouchMode(Z)V

    .line 502
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->requestFocus()Z

    .line 504
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 505
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 507
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    .line 508
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 509
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 510
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 514
    .local v0, "layoutParams_txt":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 2

    .line 1034
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo()V
    .locals 11

    .line 651
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 657
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->release(Z)V

    .line 659
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 660
    .local v1, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 663
    const/4 v2, -0x1

    :try_start_0
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getPlayer()I

    move-result v5

    invoke-virtual {p0, v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    iput-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 667
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 671
    .local v5, "context":Landroid/content/Context;
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 672
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 673
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 674
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 675
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 676
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 677
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 678
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v6, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 679
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    .line 680
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 681
    .local v6, "scheme":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_2

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    .line 682
    invoke-virtual {v7}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getUsingMediaDataSource()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 683
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 684
    :cond_1
    new-instance v7, Ltv/danmaku/ijk/media/example/widget/media/FileMediaDataSource;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ltv/danmaku/ijk/media/example/widget/media/FileMediaDataSource;-><init>(Ljava/io/File;)V

    .line 685
    .local v7, "dataSource":Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;
    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v8, v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    .line 686
    .end local v7    # "dataSource":Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;
    goto :goto_0

    :cond_2
    nop

    .line 687
    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    iget-object v9, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v10, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v7, v8, v9, v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 691
    :goto_0
    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v7, v8}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    .line 692
    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v7, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 693
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 695
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 696
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v3, :cond_3

    .line 697
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v3, v7}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 703
    :cond_3
    iput v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 704
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "scheme":Ljava/lang/String;
    goto :goto_1

    .line 715
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 710
    :catch_0
    move-exception v3

    .line 712
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 713
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 714
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5, v4, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 717
    nop

    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 705
    :catch_1
    move-exception v3

    .line 707
    .local v3, "ex":Ljava/io/IOException;
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 708
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 709
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5, v4, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    nop

    .line 718
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    return-void

    .line 717
    :goto_2
    throw v0

    .line 653
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_4
    :goto_3
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 627
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 628
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 630
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 631
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->requestLayout()V

    .line 632
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->invalidate()V

    .line 633
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 900
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    goto :goto_0

    .line 903
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    .line 905
    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 1042
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 1047
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 1052
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 16
    .param p1, "playerType"    # I

    .line 1112
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1114
    .local v1, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    packed-switch p1, :pswitch_data_0

    .line 1125
    :pswitch_0
    const/4 v2, 0x0

    .line 1126
    .local v2, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_8

    .line 1127
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "IjkMediaPlayer is Running."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1128
    new-instance v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    move-object v2, v3

    .line 1130
    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v4, "Ijk_log_debug"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1131
    .local v3, "Ijk_log_debug":I
    if-nez v3, :cond_0

    .line 1132
    const/4 v4, 0x3

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    goto :goto_0

    .line 1548
    .end local v2    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .end local v3    # "Ijk_log_debug":I
    :pswitch_1
    new-instance v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 1549
    .local v2, "IjkAliMediaPlayer":Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    move-object v1, v2

    .line 1550
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "IjkAliMediaPlayer is Running."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1541
    .end local v2    # "IjkAliMediaPlayer":Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    :pswitch_2
    new-instance v2, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 1542
    .local v2, "IjkExoMediaPlayer":Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    move-object v1, v2

    .line 1543
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "IjkExoMediaPlayer is Running."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1545
    .end local v2    # "IjkExoMediaPlayer":Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    goto/16 :goto_7

    .line 1117
    :pswitch_3
    new-instance v2, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 1118
    .local v2, "AndroidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    move-object v1, v2

    .line 1119
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "AndroidMediaPlayer is Running."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1121
    .end local v2    # "AndroidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    goto/16 :goto_7

    .line 1137
    .local v2, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .restart local v3    # "Ijk_log_debug":I
    :cond_0
    :goto_0
    const-string v4, "manifest_string"

    iget-object v6, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mManifestString:Ljava/lang/String;

    invoke-virtual {v2, v5, v4, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v4, "probsize"

    const-string v6, "4096"

    invoke-virtual {v2, v5, v4, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v4, "analyzemaxduration"

    const-wide/32 v6, 0x1e8480

    invoke-virtual {v2, v5, v4, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1182
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    int-to-long v10, v4

    const/4 v4, 0x4

    const-string v8, "packet-buffering"

    invoke-virtual {v2, v4, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1191
    const-string v8, "flush_packets"

    const-wide/16 v10, 0x1

    invoke-virtual {v2, v5, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1207
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const/16 v12, 0x30

    const-string v13, "skip_loop_filter"

    invoke-static {v8, v13, v12}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v14, v8

    const/4 v8, 0x2

    invoke-virtual {v2, v8, v13, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1216
    const-string v8, "user_agent"

    sget-object v12, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v5, v8, v12}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v8, "delay-optimization"

    invoke-virtual {v2, v5, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1229
    const-string v8, "cache-buffer-duration"

    const-wide/16 v12, 0x4e20

    invoke-virtual {v2, v5, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1241
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->Me:Ljava/lang/String;

    const/4 v13, 0x5

    invoke-static {v8, v12, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    int-to-long v12, v8

    const-string v8, "reconnect"

    invoke-virtual {v2, v4, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1245
    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->kV:Ljava/lang/String;

    invoke-static {v12, v13, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v2, v5, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1252
    const-string v8, "max-buffer-size"

    const-wide/32 v12, 0xf00000

    invoke-virtual {v2, v4, v8, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1259
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v12, "mediacodec"

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_3

    .line 1261
    invoke-virtual {v2, v4, v12, v13, v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1262
    const-string v8, "mediacodec_all_videos"

    invoke-virtual {v2, v4, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1263
    const-string v8, "mediacodec-avc"

    invoke-virtual {v2, v4, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1264
    const-string v8, "mediacodec-hevc"

    invoke-virtual {v2, v4, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1265
    const-string v8, "mediacodec-mpeg2"

    invoke-virtual {v2, v4, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1266
    const-string v8, "mediacodec-mpeg4"

    invoke-virtual {v2, v4, v8, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1267
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v8}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getUsingMediaCodecAutoRotate()Z

    move-result v8

    const-string v12, "mediacodec-auto-rotate"

    if-eqz v8, :cond_1

    .line 1268
    invoke-virtual {v2, v4, v12, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 1270
    :cond_1
    invoke-virtual {v2, v4, v12, v13, v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1272
    :goto_1
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v8}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getMediaCodecHandleResolutionChange()Z

    move-result v8

    const-string v12, "mediacodec-handle-resolution-change"

    if-eqz v8, :cond_2

    .line 1273
    invoke-virtual {v2, v4, v12, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_2

    .line 1275
    :cond_2
    invoke-virtual {v2, v4, v12, v13, v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_2

    .line 1279
    :cond_3
    invoke-virtual {v2, v4, v12, v13, v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1282
    :goto_2
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v8}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getUsingOpenSLES()Z

    move-result v8

    const-string v12, "opensles"

    if-eqz v8, :cond_4

    .line 1283
    invoke-virtual {v2, v4, v12, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_3

    .line 1285
    :cond_4
    invoke-virtual {v2, v4, v12, v13, v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1288
    :goto_3
    iget-object v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v8}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getPixelFormat()Ljava/lang/String;

    move-result-object v8

    .line 1289
    .local v8, "pixelFormat":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v15, "overlay-format"

    if-eqz v12, :cond_5

    .line 1290
    const-wide/32 v13, 0x32335652

    invoke-virtual {v2, v4, v15, v13, v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_4

    .line 1292
    :cond_5
    invoke-virtual {v2, v4, v15, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1305
    :goto_4
    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const/16 v13, 0x78

    const-string v14, "framedrop"

    invoke-static {v12, v14, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v2, v4, v14, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1316
    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v13, "start_on_prepared"

    invoke-static {v12, v13, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    int-to-long v12, v12

    const-string v14, "start-on-prepared"

    invoke-virtual {v2, v4, v14, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1325
    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->YK:Ljava/lang/String;

    invoke-static {v12, v13, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    int-to-long v12, v12

    const-string v14, "http-detect-range-support"

    invoke-virtual {v2, v5, v14, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1333
    const-string v12, "dns_cache_clear"

    invoke-virtual {v2, v5, v12, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1345
    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    sget-object v13, Lcom/shenma/tvlauncher/utils/Constant;->mJ:Ljava/lang/String;

    const/16 v14, 0xf

    invoke-static {v12, v13, v14}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    int-to-long v12, v12

    const-string v14, "timeout"

    invoke-virtual {v2, v5, v14, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1360
    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v13, "async_init_decoder"

    invoke-static {v12, v13, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    int-to-long v12, v12

    const-string v14, "async-init-decoder"

    invoke-virtual {v2, v4, v14, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1400
    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v13, "LIVE"

    invoke-static {v12, v13, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 1401
    .local v12, "nhposition":I
    const-string v13, "infbuf"

    if-ne v12, v5, :cond_6

    .line 1405
    const-string v14, "analyzeduration"

    invoke-virtual {v2, v5, v14, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1410
    const-string v6, "probesize"

    const-wide/32 v14, 0x7d000

    invoke-virtual {v2, v5, v6, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1427
    iget-object v6, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v7, "no_time_adjust"

    invoke-static {v6, v7, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    const-string v14, "no-time-adjust"

    invoke-virtual {v2, v4, v14, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1439
    const-string v6, "find_stream_info"

    invoke-virtual {v2, v4, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1445
    const-string v6, "skip-calc-frame-rate"

    invoke-virtual {v2, v4, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1451
    const-string v6, "accurate-seek-timeout"

    const-wide/16 v14, 0x1388

    invoke-virtual {v2, v4, v6, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1483
    const-string v6, "dns_cache_timeout"

    const-wide/32 v14, 0x23c34600

    invoke-virtual {v2, v5, v6, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1510
    iget-object v6, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-static {v6, v13, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v4, v13, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v6, 0x0

    goto :goto_5

    .line 1512
    :cond_6
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v13, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1516
    :goto_5
    const-string v13, "icy"

    invoke-virtual {v2, v5, v13, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1523
    iget-object v6, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v7, "live_streaming"

    invoke-static {v6, v7, v9}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    const-string v9, "live-streaming"

    invoke-virtual {v2, v5, v9, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1530
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const-string v7, "soundtouch"

    if-lt v5, v6, :cond_7

    .line 1531
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v7, v5, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_6

    .line 1533
    :cond_7
    invoke-virtual {v2, v4, v7, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 1536
    .end local v3    # "Ijk_log_debug":I
    .end local v8    # "pixelFormat":Ljava/lang/String;
    .end local v12    # "nhposition":I
    :cond_8
    :goto_6
    move-object v1, v2

    .line 1538
    .end local v2    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    nop

    .line 1555
    :goto_7
    iget-object v2, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getEnableDetachedSurfaceTextureView()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1556
    new-instance v2, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v2, v1}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    move-object v1, v2

    .line 1559
    :cond_9
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .line 1724
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1725
    return-void
.end method

.method public enterBackground()V
    .locals 1

    .line 1577
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1578
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1027
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1028
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    return v0

    .line 1030
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 959
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 962
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 950
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 954
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 582
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I

    .line 1728
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v0

    return v0
.end method

.method public getTcpSpeed()J
    .locals 2

    .line 984
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v0

    return-wide v0

    .line 987
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 1713
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 1714
    const/4 v0, 0x0

    return-object v0

    .line 1716
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 791
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 799
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 795
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return v0
.end method

.method public getmVideoSarDen()I
    .locals 1

    .line 803
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return v0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    .line 1573
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 978
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 860
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 867
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v2, :cond_9

    .line 868
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_7

    const/16 v2, 0x55

    if-ne p1, v2, :cond_1

    goto :goto_2

    .line 878
    :cond_1
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_3

    .line 879
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    .line 880
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 881
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 883
    :cond_2
    return v1

    .line 884
    :cond_3
    const/16 v2, 0x56

    if-eq p1, v2, :cond_5

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 892
    :cond_4
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 886
    :cond_5
    :goto_1
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 887
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 888
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    .line 890
    :cond_6
    return v1

    .line 870
    :cond_7
    :goto_2
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 871
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 872
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    goto :goto_3

    .line 874
    :cond_8
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 875
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 877
    :goto_3
    return v1

    .line 896
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 844
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 845
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 847
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 852
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 855
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 918
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 921
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 924
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 925
    return-void
.end method

.method public release(Z)V
    .locals 3
    .param p1, "cleartargetstate"    # Z

    .line 828
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 830
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 833
    const/4 v1, 0x0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 834
    if-eqz p1, :cond_0

    .line 835
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 837
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 838
    .local v1, "am":Landroid/media/AudioManager;
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 840
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .line 820
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 822
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 945
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 946
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "msec"    # I

    .line 967
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 969
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 970
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 972
    :cond_0
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 974
    :goto_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .line 1720
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1721
    return-void
.end method

.method public setDecode(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "decode"    # Ljava/lang/Boolean;

    .line 781
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 783
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    goto :goto_0

    .line 785
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE_HW:Ljava/lang/Boolean;

    .line 786
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    .line 788
    :goto_0
    return-void
.end method

.method public setHudView(Landroid/widget/TableLayout;)V
    .locals 2
    .param p1, "tableLayout"    # Landroid/widget/TableLayout;

    .line 578
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .line 579
    return-void
.end method

.method public setMediaController(Ltv/danmaku/ijk/media/example/widget/media/IMediaController;)V
    .locals 1
    .param p1, "controller"    # Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    .line 721
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 724
    :cond_0
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    .line 725
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->attachMediaController()V

    .line 726
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 755
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 756
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 767
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 768
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 777
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 778
    return-void
.end method

.method public setOnPlayingBufferCacheListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 1740
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 1741
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 745
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 746
    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .locals 0
    .param p1, "Referer"    # Ljava/lang/String;

    .line 1736
    sput-object p1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->Referer:Ljava/lang/String;

    .line 1737
    return-void
.end method

.method public setRender(I)V
    .locals 3
    .param p1, "render"    # I

    .line 551
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 556
    :pswitch_0
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 557
    .local v0, "renderView":Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->getSurfaceHolder()Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 559
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setVideoSize(II)V

    .line 560
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 561
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setAspectRatio(I)V

    .line 563
    :cond_0
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    .line 564
    goto :goto_0

    .line 567
    .end local v0    # "renderView":Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
    :pswitch_1
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 568
    .local v0, "renderView":Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    .line 569
    goto :goto_0

    .line 553
    .end local v0    # "renderView":Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    .line 554
    nop

    .line 575
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V
    .locals 4
    .param p1, "renderView"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 518
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 522
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "renderUIView":Landroid/view/View;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 524
    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 525
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->removeView(Landroid/view/View;)V

    .line 528
    .end local v0    # "renderUIView":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 529
    return-void

    .line 531
    :cond_2
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 532
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setAspectRatio(I)V

    .line 533
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    if-lez v0, :cond_3

    .line 534
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 535
    :cond_3
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    if-lez v0, :cond_4

    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    if-lez v0, :cond_4

    .line 536
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    invoke-interface {p1, v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 538
    :cond_4
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 539
    .restart local v0    # "renderUIView":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 543
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->addView(Landroid/view/View;)V

    .line 546
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 547
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoRotationDegree:I

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoRotation(I)V

    .line 548
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 1012
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    goto :goto_0

    .line 1014
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSpeed(FF)V

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setSpeed(F)V

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_3

    .line 1019
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSpeed(F)V

    goto :goto_0

    .line 1021
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v1, "not support setSpeed! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :goto_0
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 1732
    sput-object p1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->userAgent:Ljava/lang/String;

    .line 1733
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 591
    const-string v0, "adaptationSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mManifestString:Ljava/lang/String;

    .line 593
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 594
    return-void

    .line 596
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 597
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 609
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "adaptationSet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mManifestString:Ljava/lang/String;

    .line 611
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 612
    return-void

    .line 614
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 615
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 606
    return-void
.end method

.method public showMediaInfo()V
    .locals 19

    .line 1588
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v1, :cond_0

    .line 1589
    return-void

    .line 1591
    :cond_0
    iget-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v1

    .line 1592
    .local v1, "selectedVideoTrack":I
    iget-object v3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v3

    .line 1593
    .local v3, "selectedAudioTrack":I
    iget-object v4, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v4

    .line 1595
    .local v4, "selectedSubtitleTrack":I
    new-instance v5, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;)V

    .line 1596
    .local v5, "builder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;
    sget v6, Lcom/shenma/tvlauncher/R$string;->mi_player:I

    invoke-virtual {v5, v6}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1597
    sget v6, Lcom/shenma/tvlauncher/R$string;->mi_player:I

    iget-object v7, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v7}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getName(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1598
    sget v6, Lcom/shenma/tvlauncher/R$string;->mi_media:I

    invoke-virtual {v5, v6}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1599
    sget v6, Lcom/shenma/tvlauncher/R$string;->mi_resolution:I

    iget v7, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    iget v8, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    iget v9, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    iget v10, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    invoke-direct {v0, v7, v8, v9, v10}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildResolution(IIII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1600
    sget v6, Lcom/shenma/tvlauncher/R$string;->mi_length:I

    iget-object v7, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v7}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildTimeMilli(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1602
    iget-object v6, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v6

    .line 1603
    .local v6, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    if-eqz v6, :cond_7

    .line 1604
    const/4 v7, -0x1

    .line 1605
    .local v7, "index":I
    array-length v8, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_6

    aget-object v11, v6, v10

    .line 1606
    .local v11, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    add-int/lit8 v7, v7, 0x1

    .line 1608
    invoke-interface {v11}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v12

    .line 1609
    .local v12, "trackType":I
    const-string v13, " "

    if-ne v7, v1, :cond_1

    .line 1610
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_stream_fmt1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v18, v1

    .end local v1    # "selectedVideoTrack":I
    .local v18, "selectedVideoTrack":I
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v17, v1, v16

    invoke-virtual {v15, v9, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v13, Lcom/shenma/tvlauncher/R$string;->mi__selected_video_track:I

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    move/from16 v17, v3

    goto/16 :goto_1

    .line 1611
    .end local v18    # "selectedVideoTrack":I
    .restart local v1    # "selectedVideoTrack":I
    :cond_1
    move/from16 v18, v1

    const/16 v16, 0x0

    .end local v1    # "selectedVideoTrack":I
    .restart local v18    # "selectedVideoTrack":I
    if-ne v7, v3, :cond_2

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v14, Lcom/shenma/tvlauncher/R$string;->mi_stream_fmt1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v17, v3

    .end local v3    # "selectedAudioTrack":I
    .local v17, "selectedAudioTrack":I
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v16

    invoke-virtual {v9, v14, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v9, Lcom/shenma/tvlauncher/R$string;->mi__selected_audio_track:I

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto :goto_1

    .line 1613
    .end local v17    # "selectedAudioTrack":I
    .restart local v3    # "selectedAudioTrack":I
    :cond_2
    move/from16 v17, v3

    .end local v3    # "selectedAudioTrack":I
    .restart local v17    # "selectedAudioTrack":I
    if-ne v7, v4, :cond_3

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_stream_fmt1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v14, v15, v16

    invoke-virtual {v3, v9, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v9, Lcom/shenma/tvlauncher/R$string;->mi__selected_subtitle_track:I

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto :goto_1

    .line 1616
    :cond_3
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/shenma/tvlauncher/R$string;->mi_stream_fmt1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v9, v13, v16

    invoke-virtual {v1, v3, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    .line 1618
    :goto_1
    sget v1, Lcom/shenma/tvlauncher/R$string;->mi_type:I

    invoke-direct {v0, v12}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildTrackType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1619
    sget v1, Lcom/shenma/tvlauncher/R$string;->mi_language:I

    invoke-interface {v11}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1621
    invoke-interface {v11}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getFormat()Ltv/danmaku/ijk/media/player/misc/IMediaFormat;

    move-result-object v1

    .line 1622
    .local v1, "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 1623
    :cond_4
    instance-of v3, v1, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    if-eqz v3, :cond_5

    .line 1624
    const-string v3, "ijk-bit-rate-ui"

    const-string v9, "ijk-profile-level-ui"

    const-string v13, "ijk-codec-long-name-ui"

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 1634
    :pswitch_0
    sget v14, Lcom/shenma/tvlauncher/R$string;->mi_codec:I

    invoke-interface {v1, v13}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v14, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1635
    sget v13, Lcom/shenma/tvlauncher/R$string;->mi_profile_level:I

    invoke-interface {v1, v9}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v13, v9}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1636
    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_sample_rate:I

    const-string v13, "ijk-sample-rate-ui"

    invoke-interface {v1, v13}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v9, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1637
    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_channels:I

    const-string v13, "ijk-channel-ui"

    invoke-interface {v1, v13}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v9, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1638
    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_bit_rate:I

    invoke-interface {v1, v3}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v9, v3}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1639
    goto :goto_2

    .line 1626
    :pswitch_1
    sget v14, Lcom/shenma/tvlauncher/R$string;->mi_codec:I

    invoke-interface {v1, v13}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v14, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1627
    sget v13, Lcom/shenma/tvlauncher/R$string;->mi_profile_level:I

    invoke-interface {v1, v9}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v13, v9}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1628
    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_pixel_format:I

    const-string v13, "ijk-pixel-format-ui"

    invoke-interface {v1, v13}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v9, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1629
    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_resolution:I

    const-string v13, "ijk-resolution-ui"

    invoke-interface {v1, v13}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v9, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1630
    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_frame_rate:I

    const-string v13, "ijk-frame-rate-ui"

    invoke-interface {v1, v13}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v9, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1631
    sget v9, Lcom/shenma/tvlauncher/R$string;->mi_bit_rate:I

    invoke-interface {v1, v3}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v9, v3}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1632
    nop

    .line 1605
    .end local v1    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    .end local v11    # "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .end local v12    # "trackType":I
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v17

    move/from16 v1, v18

    goto/16 :goto_0

    .end local v17    # "selectedAudioTrack":I
    .end local v18    # "selectedVideoTrack":I
    .local v1, "selectedVideoTrack":I
    .restart local v3    # "selectedAudioTrack":I
    :cond_6
    move/from16 v18, v1

    move/from16 v17, v3

    .end local v1    # "selectedVideoTrack":I
    .end local v3    # "selectedAudioTrack":I
    .restart local v17    # "selectedAudioTrack":I
    .restart local v18    # "selectedVideoTrack":I
    goto :goto_3

    .line 1603
    .end local v7    # "index":I
    .end local v17    # "selectedAudioTrack":I
    .end local v18    # "selectedVideoTrack":I
    .restart local v1    # "selectedVideoTrack":I
    .restart local v3    # "selectedAudioTrack":I
    :cond_7
    move/from16 v18, v1

    move/from16 v17, v3

    .line 1647
    .end local v1    # "selectedVideoTrack":I
    .end local v3    # "selectedAudioTrack":I
    .restart local v17    # "selectedAudioTrack":I
    .restart local v18    # "selectedVideoTrack":I
    :goto_3
    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->buildAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1648
    .local v1, "adBuilder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/shenma/tvlauncher/R$string;->media_information:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1649
    sget v2, Lcom/shenma/tvlauncher/R$string;->close:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1650
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1651
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 2

    .line 909
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 911
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 913
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 914
    return-void
.end method

.method public stopBackgroundPlay()V
    .locals 1

    .line 1581
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1582
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .line 636
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 638
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 640
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-virtual {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 642
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 643
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 644
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 645
    .local v1, "am":Landroid/media/AudioManager;
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 647
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->release(Z)V

    .line 929
    return-void
.end method

.method public toggleAspectRatio(I)I
    .locals 2
    .param p1, "paramInt"    # I

    .line 1063
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 1065
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setAspectRatio(I)V

    .line 1067
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public togglePlayer()I
    .locals 1

    .line 1098
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 1101
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1103
    :cond_1
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 1104
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/widget/media/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/Settings;->getPlayer()I

    move-result v0

    return v0
.end method

.method public toggleRender()I
    .locals 2

    .line 1086
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 1087
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 1089
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1090
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRender(I)V

    .line 1091
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    return v0
.end method

.class public Lcom/aliyun/player/externalplayer/MediaPlayer;
.super Lcom/aliyun/player/ApasaraExternalPlayer;
.source "MediaPlayer.java"


# static fields
.field private static final PLAYER_NAME:Ljava/lang/String; = "MediaPlayer"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"


# instance fields
.field private final TIMER_WHAT_HALF_SECOND:I

.field private isMute:Z

.field private lastVolume:F

.field private mAutoPlay:Z

.field private mBufferPosition:J

.field private mContext:Landroid/content/Context;

.field private mCustomHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

.field private mLoop:Z

.field private mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

.field private mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

.field private mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

.field private mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

.field private mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

.field private mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

.field private mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

.field private mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

.field private mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

.field private mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

.field private mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

.field private mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

.field private mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

.field private mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

.field private mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

.field private mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

.field private mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

.field private mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

.field private mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

.field private mRefer:Ljava/lang/String;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mSeekAccurate:Z

.field private mSeekPos:J

.field private mSpeed:F

.field private mSystemMediaPlayer:Landroid/media/MediaPlayer;

.field private mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private timer:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;-><init>()V

    .line 33
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->TIMER_WHAT_HALF_SECOND:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 37
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 38
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 39
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 40
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 43
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 45
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    .line 46
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 49
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 50
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 51
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    .line 52
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 53
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 54
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 55
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 56
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 57
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 58
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 59
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 60
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 61
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    .line 62
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 63
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    .line 64
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 65
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    .line 66
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    .line 67
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    .line 68
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    .line 421
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 422
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    .line 860
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/aliyun/player/nativeclass/Options;

    .line 73
    invoke-direct {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;-><init>()V

    .line 33
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->TIMER_WHAT_HALF_SECOND:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 37
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    .line 38
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 39
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 40
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 43
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 45
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    .line 46
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 49
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 50
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 51
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    .line 52
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 53
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 54
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 55
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 56
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 57
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 58
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 59
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 60
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 61
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    .line 62
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 63
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    .line 64
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 65
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    .line 66
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    .line 67
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    .line 68
    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    .line 421
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 422
    iput-boolean v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    .line 860
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 77
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 81
    :cond_0
    new-instance v1, Lcom/aliyun/player/externalplayer/MediaPlayer$1;

    invoke-direct {v1, p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer$1;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    .line 105
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$2;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$2;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 112
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$3;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$3;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 121
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$4;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$4;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 131
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$5;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$5;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 152
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$6;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$6;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 178
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$7;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$7;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 186
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$8;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$8;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 191
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/aliyun/player/externalplayer/MediaPlayer$9;

    invoke-direct {v2, p0}, Lcom/aliyun/player/externalplayer/MediaPlayer$9;-><init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/aliyun/player/externalplayer/MediaPlayer;[Landroid/media/MediaPlayer$TrackInfo;)[Landroid/media/MediaPlayer$TrackInfo;
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;
    .param p1, "x1"    # [Landroid/media/MediaPlayer$TrackInfo;

    .line 28
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/aliyun/player/externalplayer/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->notifyStreamGet()V

    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/aliyun/player/externalplayer/MediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;
    .param p1, "x1"    # J

    .line 28
    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->sendHalfSecondTimer()V

    return-void
.end method

.method static synthetic access$402(Lcom/aliyun/player/externalplayer/MediaPlayer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;
    .param p1, "x1"    # J

    .line 28
    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;
    .param p1, "x1"    # Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .param p2, "x2"    # Z

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    return-object v0
.end method

.method private changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V
    .locals 3
    .param p1, "status"    # Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .param p2, "notify"    # Z

    .line 225
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, p1, :cond_0

    .line 226
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;->onStatusChanged(II)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->sendHalfSecondTimer()V

    .line 236
    return-void
.end method

.method private convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 3
    .param p1, "trackInfo"    # Landroid/media/MediaPlayer$TrackInfo;
    .param p2, "index"    # I

    .line 650
    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo;

    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/TrackInfo;-><init>()V

    .line 651
    .local v0, "cicadaTrackInfo":Lcom/aliyun/player/nativeclass/TrackInfo;
    iput p2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->index:I

    .line 653
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v1

    .line 654
    .local v1, "trackType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 655
    sget-object v2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    .line 656
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 657
    sget-object v2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    .line 658
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 659
    sget-object v2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    .line 661
    :cond_2
    sget-object v2, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 663
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/aliyun/player/nativeclass/TrackInfo;->description:Ljava/lang/String;

    .line 665
    return-object v0
.end method

.method private notifyStreamGet()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Lcom/aliyun/player/nativeclass/MediaInfo;

    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/MediaInfo;-><init>()V

    .line 205
    .local v0, "mediaInfo":Lcom/aliyun/player/nativeclass/MediaInfo;
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 206
    .local v1, "trackInfoList":[Lcom/aliyun/player/nativeclass/TrackInfo;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    aget-object v3, v3, v2

    .line 208
    .local v3, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-direct {p0, v3, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object v4

    aput-object v4, v1, v2

    .line 206
    .end local v3    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/MediaInfo;->setTrackInfos([Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 211
    invoke-virtual {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Lcom/aliyun/player/nativeclass/MediaInfo;->setDuration(I)V

    .line 212
    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    invoke-interface {v2, v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;->OnStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 214
    .end local v0    # "mediaInfo":Lcom/aliyun/player/nativeclass/MediaInfo;
    .end local v1    # "trackInfoList":[Lcom/aliyun/player/nativeclass/TrackInfo;
    :cond_1
    return-void
.end method

.method private sendHalfSecondTimer()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v0

    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 219
    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v0

    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-virtual {v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->getValue()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->timer:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    :cond_0
    return-void
.end method

.method private updateDataSource()V
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 268
    return-void

    .line 271
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 273
    const-string v1, "Referer"

    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 277
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 285
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 288
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 289
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    sget-object v4, Lcom/aliyun/player/bean/ErrorCode;->ERROR_GENERAL_EIO:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set dataSource error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;->onError(ILjava/lang/String;)V

    .line 292
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addCustomHttpHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "httpHeader"    # Ljava/lang/String;

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCustomHttpHeader() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    return-void

    .line 868
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "header":[Ljava/lang/String;
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    return-void
.end method

.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExtSubtitle() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public captureScreen()V
    .locals 2

    .line 757
    const-string v0, "MediaPlayer"

    const-string v1, "captureScreen() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public create(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/aliyun/player/nativeclass/Options;

    .line 254
    new-instance v0, Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V

    return-object v0
.end method

.method public enterBackGround(Z)V
    .locals 2
    .param p1, "back"    # Z

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterBackGround() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public getBufferPosition()J
    .locals 2

    .line 509
    const-string v0, "MediaPlayer"

    const-string v1, "getBufferPosition() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mBufferPosition:J

    return-wide v0
.end method

.method public getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I
    .locals 4
    .param p1, "streamType"    # Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentStreamIndex() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 610
    .local v0, "validState":Z
    :goto_1
    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 611
    return v1

    .line 614
    :cond_2
    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_7

    .line 616
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_6

    .line 617
    const/4 v1, 0x0

    .line 618
    .local v1, "type":I
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-ne p1, v2, :cond_3

    .line 619
    const/4 v1, 0x2

    goto :goto_2

    .line 620
    :cond_3
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-ne p1, v2, :cond_4

    .line 621
    const/4 v1, 0x1

    goto :goto_2

    .line 622
    :cond_4
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    if-ne p1, v2, :cond_5

    .line 623
    const/4 v1, 0x4

    .line 625
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v2

    return v2

    .line 627
    .end local v1    # "type":I
    :cond_6
    return v1

    .line 630
    :cond_7
    return v1
.end method

.method public getCurrentStreamInfo(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 3
    .param p1, "streamType"    # Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentStreamInfo() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I

    move-result v0

    .line 642
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    aget-object v1, v1, v0

    .line 644
    .local v1, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-direct {p0, v1, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->convert(Landroid/media/MediaPlayer$TrackInfo;I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object v2

    return-object v2

    .line 646
    .end local v1    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDecoderType()Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
    .locals 2

    .line 686
    const-string v0, "MediaPlayer"

    const-string v1, "getDecoderType() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    return-object v0
.end method

.method public getDuration()J
    .locals 5

    .line 461
    const-string v0, "MediaPlayer"

    const-string v1, "getDuration() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 468
    .local v0, "validState":Z
    :goto_1
    const-wide/16 v3, 0x0

    if-nez v0, :cond_2

    .line 469
    return-wide v3

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "duration":I
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v4, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v3, v4, :cond_3

    .line 475
    iget-object v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 477
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    return-wide v2

    .line 479
    .end local v1    # "duration":I
    :cond_4
    return-wide v3
.end method

.method public getMasterClockPts()J
    .locals 2

    .line 670
    const-string v0, "MediaPlayer"

    const-string v1, "getMasterClockPts() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 2

    .line 587
    const-string v0, "MediaPlayer"

    const-string v1, "getMirrorMode() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 635
    const-string v0, "MediaPlayer"

    return-object v0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOption() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayerStatus()Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
    .locals 2

    .line 455
    const-string v0, "MediaPlayer"

    const-string v1, "getPlayerStatus() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    return-object v0
.end method

.method public getPlayingPosition()J
    .locals 5

    .line 484
    const-string v0, "MediaPlayer"

    const-string v1, "getPlayingPosition() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 486
    iget-wide v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    return-wide v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 496
    .local v0, "validState":Z
    :goto_1
    if-nez v0, :cond_3

    .line 497
    return-wide v2

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    .line 501
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 503
    :cond_4
    return-wide v2
.end method

.method public getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2
    .param p1, "key"    # Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyInt() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2
    .param p1, "key"    # Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyLong() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyString() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 2

    .line 576
    const-string v0, "MediaPlayer"

    const-string v1, "getRotateMode() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    return-object v0
.end method

.method public getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 2

    .line 550
    const-string v0, "MediaPlayer"

    const-string v1, "getScaleMode() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    return-object v0
.end method

.method public getSpeed()F
    .locals 2

    .line 835
    const-string v0, "MediaPlayer"

    const-string v1, "getSpeed() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    return v0
.end method

.method public getVideoDecodeFps()F
    .locals 2

    .line 817
    const-string v0, "MediaPlayer"

    const-string v1, "getVideoDecodeFps() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoHeight()I
    .locals 3

    .line 777
    const-string v0, "MediaPlayer"

    const-string v1, "getVideoHeight() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 780
    .local v0, "validState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 781
    return v2

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 785
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    return v1

    .line 787
    :cond_2
    return v2
.end method

.method public getVideoRenderFps()F
    .locals 2

    .line 539
    const-string v0, "MediaPlayer"

    const-string v1, "getVideoRenderFps() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoRotation()I
    .locals 2

    .line 793
    const-string v0, "MediaPlayer"

    const-string v1, "getVideoRotation() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    .line 762
    const-string v0, "MediaPlayer"

    const-string v1, "getVideoWidth() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 764
    .local v0, "validState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 765
    return v2

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 769
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    return v1

    .line 771
    :cond_2
    return v2
.end method

.method public getVolume()F
    .locals 2

    .line 697
    const-string v0, "MediaPlayer"

    const-string v1, "getVolume() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    return v0
.end method

.method public invokeComponent(Ljava/lang/String;)I
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeComponent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 2

    .line 897
    const-string v0, "MediaPlayer"

    const-string v1, "isAutoPlay() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 732
    const-string v0, "MediaPlayer"

    const-string v1, "isLooping() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0

    .line 736
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMute()Z
    .locals 2

    .line 533
    const-string v0, "MediaPlayer"

    const-string v1, "isMute() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    return v0
.end method

.method public isSupport(Lcom/aliyun/player/nativeclass/Options;)Z
    .locals 3
    .param p1, "options"    # Lcom/aliyun/player/nativeclass/Options;

    .line 240
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 241
    return v0

    .line 244
    :cond_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/aliyun/player/nativeclass/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "name":Ljava/lang/String;
    const-string v2, "MediaPlayer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_1
    return v0
.end method

.method public mute(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mute() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    .line 517
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 518
    .local v0, "validState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 519
    return-void

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 523
    if-eqz p1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_1

    .line 526
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    iget v3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 529
    :cond_3
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 3

    .line 338
    const-string v0, "MediaPlayer"

    const-string v1, "pause() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 343
    .local v0, "validStates":Z
    :goto_1
    if-nez v0, :cond_2

    .line 344
    return-void

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 349
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-direct {p0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 352
    :cond_3
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 304
    const-string v0, "MediaPlayer"

    const-string v1, "prepare() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 308
    invoke-direct {p0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->updateDataSource()V

    .line 309
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 310
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setSpeed(F)V

    .line 311
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setLooping(Z)V

    .line 312
    iget-boolean v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->mute(Z)V

    .line 313
    iget v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    invoke-virtual {p0, v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;->setVolume(F)V

    .line 314
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 315
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 317
    :cond_0
    return-void
.end method

.method public reLoad()V
    .locals 2

    .line 892
    const-string v0, "MediaPlayer"

    const-string v1, "reLoad() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method public release()V
    .locals 2

    .line 377
    const-string v0, "MediaPlayer"

    const-string v1, "release() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 379
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 382
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    .line 383
    return-void
.end method

.method public removeAllCustomHttpHeader()V
    .locals 2

    .line 874
    const-string v0, "MediaPlayer"

    const-string v1, "removeAllCustomHttpHeader() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mCustomHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 876
    return-void
.end method

.method public seekTo(JZ)V
    .locals 4
    .param p1, "seekPos"    # J
    .param p3, "accurate"    # Z

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , accurate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 432
    .local v0, "validState":Z
    :goto_1
    if-nez v0, :cond_2

    .line 434
    iput-wide p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekPos:J

    .line 435
    iput-boolean p3, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSeekAccurate:Z

    .line 436
    return-void

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    .line 440
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_3

    if-eqz p3, :cond_3

    .line 441
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v1, p1, p2, v3}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_2

    .line 443
    :cond_3
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v3, p1

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 446
    :goto_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    if-eqz v1, :cond_4

    .line 447
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    invoke-interface {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;->onSeekStart(Z)V

    .line 451
    :cond_4
    return-void
.end method

.method public selectExtSubtitle(IZ)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "bSelect"    # Z

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectExtSubtitle() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , bSelect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoPlay(Z)V
    .locals 2
    .param p1, "bAutoPlay"    # Z

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoPlay() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mAutoPlay:Z

    .line 905
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUrl:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_INITIALZED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public setDecoderType(Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;)V
    .locals 2
    .param p1, "type"    # Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDecoderType() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public setDrmCallback(Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;)V
    .locals 0
    .param p1, "onDRMCallback"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    .line 1005
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnDRMCallback:Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;

    .line 1006
    return-void
.end method

.method public setDropBufferThreshold(I)V
    .locals 2
    .param p1, "dropValue"    # I

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDropBufferThreshold() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public setLooping(Z)V
    .locals 2
    .param p1, "bCirclePlay"    # Z

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLooping() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iput-boolean p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLoop:Z

    .line 745
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 746
    .local v0, "validState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 747
    return-void

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 751
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 753
    :cond_2
    return-void
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 2
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirrorMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public setOnAutoPlayStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;)V
    .locals 0
    .param p1, "onAutoPlayStartListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 940
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnAutoPlayStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;

    .line 941
    return-void
.end method

.method public setOnBufferPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;)V
    .locals 0
    .param p1, "onBufferPositionUpdateListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 955
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnBufferPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;

    .line 956
    return-void
.end method

.method public setOnCaptureScreenListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;)V
    .locals 0
    .param p1, "onCaptureScreenListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    .line 995
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCaptureScreenListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;

    .line 996
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "onCompletionListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 925
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnCompletionListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 926
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 975
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnErrorListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 976
    return-void
.end method

.method public setOnEventListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;)V
    .locals 0
    .param p1, "onEventListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    .line 980
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnEventListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;

    .line 981
    return-void
.end method

.method public setOnFirstFrameRenderListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;)V
    .locals 0
    .param p1, "onFirstFrameRenderListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 930
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnFirstFrameRenderListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 931
    return-void
.end method

.method public setOnLoadStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;)V
    .locals 0
    .param p1, "onLoadStatusListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 935
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoadStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 936
    return-void
.end method

.method public setOnLoopingStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;)V
    .locals 0
    .param p1, "onLoopingStartListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    .line 920
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnLoopingStartListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;

    .line 921
    return-void
.end method

.method public setOnPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;)V
    .locals 0
    .param p1, "onPositionUpdateListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 950
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPositionUpdateListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;

    .line 951
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "onPreparedListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 915
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnPreparedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;

    .line 916
    return-void
.end method

.method public setOnSeekStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;)V
    .locals 0
    .param p1, "onSeekStatusListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 945
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSeekStatusListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    .line 946
    return-void
.end method

.method public setOnStatusChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;)V
    .locals 0
    .param p1, "onStatusChangedListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 965
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStatusChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;

    .line 966
    return-void
.end method

.method public setOnStreamInfoGetListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;)V
    .locals 0
    .param p1, "onStreamInfoGetListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 985
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamInfoGetListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;

    .line 986
    return-void
.end method

.method public setOnStreamSwitchSucListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;)V
    .locals 0
    .param p1, "onStreamSwitchSucListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    .line 990
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnStreamSwitchSucListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;

    .line 991
    return-void
.end method

.method public setOnSubtitleListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;)V
    .locals 0
    .param p1, "onSubtitleListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    .line 1000
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnSubtitleListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;

    .line 1001
    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;)V
    .locals 0
    .param p1, "onVideoRenderedListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    .line 970
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoRenderedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;

    .line 971
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "onVideoSizeChangedListener"    # Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 960
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;

    .line 961
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOption() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 2
    .param p1, "refer"    # Ljava/lang/String;

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRefer() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mRefer:Ljava/lang/String;

    .line 722
    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 2
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRotateMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 3
    .param p1, "scaleMode"    # Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScaleMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 559
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 561
    .local v0, "validState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 562
    return-void

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 566
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    if-ne p1, v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    goto :goto_1

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 572
    :cond_3
    :goto_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeed() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iput p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSpeed:F

    .line 844
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_IDLE:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 847
    .local v0, "validState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 848
    return-void

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 852
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 853
    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    .line 854
    .local v1, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 855
    iget-object v2, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 858
    .end local v1    # "params":Landroid/media/PlaybackParams;
    :cond_2
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .param p1, "timeOut"    # I

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTimeout() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserAgent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mUserAgent:Ljava/lang/String;

    .line 728
    return-void
.end method

.method public setVideoBackgroundColor(J)V
    .locals 2
    .param p1, "color"    # J

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoBackgroundColor() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolume() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iput p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->lastVolume:F

    .line 706
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 707
    .local v0, "validState":Z
    :goto_0
    if-nez v0, :cond_1

    .line 708
    return-void

    .line 711
    :cond_1
    iget-boolean v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->isMute:Z

    if-nez v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 713
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 716
    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    .line 321
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "start() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 326
    .local v0, "validState":Z
    :goto_1
    if-nez v0, :cond_2

    .line 327
    return-void

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 332
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-direct {p0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 334
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 4

    .line 356
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 363
    .local v0, "validState":Z
    :goto_1
    if-nez v0, :cond_2

    .line 364
    return-void

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v3, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v1, v3, :cond_3

    .line 369
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 370
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    invoke-direct {p0, v1, v2}, Lcom/aliyun/player/externalplayer/MediaPlayer;->changePlayerStatus(Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 373
    :cond_3
    return-void
.end method

.method public switchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 5
    .param p1, "index"    # I

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchStream() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PREPARED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PLAYING:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_PAUSED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_STOPPED:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mLastPlayerStatus:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 394
    .local v0, "validState":Z
    :goto_1
    if-nez v0, :cond_2

    .line 395
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v1

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_8

    .line 399
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mSystemMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 400
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    if-nez v1, :cond_3

    .line 401
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v1

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer;->mTrackInfos:[Landroid/media/MediaPlayer$TrackInfo;

    aget-object v1, v1, p1

    .line 404
    .local v1, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    .line 405
    .local v3, "trackType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 406
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v2

    .line 407
    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 408
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v2

    .line 409
    :cond_5
    if-ne v3, v2, :cond_6

    .line 410
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v2

    .line 411
    :cond_6
    if-nez v3, :cond_7

    .line 412
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v2

    .line 414
    :cond_7
    sget-object v2, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v2

    .line 417
    .end local v1    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    .end local v3    # "trackType":I
    :cond_8
    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v1
.end method

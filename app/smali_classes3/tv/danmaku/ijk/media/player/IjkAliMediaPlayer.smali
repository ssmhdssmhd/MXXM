.class public Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "IjkAliMediaPlayer.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected audioSessionId:I

.field private deviceId:Ljava/lang/String;

.field protected isLooping:Z

.field protected isPreparing:Z

.field protected isPreview:Z

.field private isWaitOnSeekComplete:Z

.field protected mAppContext:Landroid/content/Context;

.field private mCurrentPosition:J

.field protected mDataSource:Ljava/lang/String;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalPlayer:Lcom/aliyun/player/AliPlayer;

.field protected mMediaSource:Lcom/aliyun/player/source/UrlSource;

.field private mPlayState:I

.field protected mSurface:Landroid/view/Surface;

.field private mVideoBufferedPosition:J

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field private netSpeedLong:J

.field private onCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private onErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private onInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private onLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private onPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private onRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private onSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private onStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private onVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetdeviceId(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonCompletionListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonErrorListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonInfoListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonLoadingStatusListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonPreparedListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonRenderingStartListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnRenderingStartListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonSeekCompleteListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonStateChangedListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnStateChangedListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisWaitOnSeekComplete(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlayState(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;I)V
    .locals 0

    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msourceVideoPlayerInfo(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->sourceVideoPlayerInfo(Lcom/aliyun/player/bean/InfoBean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 42
    const-class v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    .line 56
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    .line 241
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->audioSessionId:I

    .line 278
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isLooping:Z

    .line 428
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreview:Z

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreparing:Z

    .line 473
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$2;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 483
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$3;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$3;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 489
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$4;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$4;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 497
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$5;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$5;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 508
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->netSpeedLong:J

    .line 545
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$6;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$6;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 565
    const/4 v0, -0x1

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    .line 567
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$7;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$7;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 576
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$8;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$8;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 584
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$9;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 595
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$10;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$10;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->onSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private sourceVideoPlayerInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 6
    .param p1, "infoBean"    # Lcom/aliyun/player/bean/InfoBean;

    .line 514
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    if-eqz v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    if-ne v0, v1, :cond_1

    .line 519
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->netSpeedLong:J

    goto :goto_1

    .line 521
    :cond_1
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    if-ne v0, v1, :cond_3

    .line 523
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "percent":I
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 527
    iget-wide v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    long-to-float v1, v1

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v0, v1

    .line 530
    :cond_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->mt:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 531
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0

    .line 534
    .end local v0    # "percent":I
    :cond_3
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v0

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    if-ne v0, v1, :cond_4

    .line 536
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    goto :goto_1

    .line 534
    :cond_4
    :goto_0
    nop

    .line 538
    :goto_1
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 245
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->audioSessionId:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 6

    .line 459
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    return v0

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 463
    .local v0, "percent":I
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 464
    iget-wide v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoBufferedPosition:J

    long-to-float v1, v1

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v0, v1

    .line 467
    :cond_1
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 191
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 192
    const-wide/16 v0, 0x0

    return-wide v0

    .line 193
    :cond_0
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 198
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 199
    const-wide/16 v0, 0x0

    return-wide v0

    .line 200
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 541
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->netSpeedLong:J

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 455
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 292
    const/4 v0, 0x0

    new-array v0, v0, [Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 157
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 152
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 162
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 163
    return v1

    .line 166
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPreview()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreview:Z

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->pause()V

    .line 143
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->prepareAsyncInternal()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    .line 122
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t prepare a prepared player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareAsyncInternal()V
    .locals 2

    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;-><init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public release()V
    .locals 1

    .line 230
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->reset()V

    .line 233
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 216
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->stop()V

    .line 218
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->release()V

    .line 219
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    .line 221
    :cond_0
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 222
    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoWidth:I

    .line 224
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mVideoHeight:I

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mPlayState:I

    .line 226
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "msec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->getDuration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isWaitOnSeekComplete:Z

    .line 185
    iput-wide p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mCurrentPosition:J

    .line 186
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/AliPlayer;->seekTo(J)V

    .line 187
    return-void

    .line 181
    :cond_2
    :goto_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .line 266
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 97
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {v0}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    .line 99
    .local v0, "urlSource":Lcom/aliyun/player/source/UrlSource;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    .line 100
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mMediaSource:Lcom/aliyun/player/source/UrlSource;

    .line 101
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 83
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 84
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 88
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 93
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 298
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->deviceId:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 68
    :goto_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .param p1, "keepInBackground"    # Z

    .line 271
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 256
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .line 282
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isLooping:Z

    .line 283
    return-void
.end method

.method public setPreview(Z)V
    .locals 0
    .param p1, "preview"    # Z

    .line 435
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isPreview:Z

    .line 436
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 148
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 449
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer;->setSpeed(F)V

    .line 452
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 72
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 73
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 77
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/AliPlayer;->setSurface(Landroid/view/Surface;)V

    .line 79
    :cond_1
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 237
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/aliyun/player/AliPlayer;->setVolume(F)V

    .line 239
    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 276
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->start()V

    .line 129
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v0}, Lcom/aliyun/player/AliPlayer;->stop()V

    .line 136
    return-void
.end method

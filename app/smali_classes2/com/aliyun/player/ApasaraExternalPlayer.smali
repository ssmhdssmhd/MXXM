.class public abstract Lcom/aliyun/player/ApasaraExternalPlayer;
.super Ljava/lang/Object;
.source "ApasaraExternalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;,
        Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;,
        Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;,
        Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;,
        Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    }
.end annotation


# static fields
.field private static externalPlayerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/ApasaraExternalPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer;->externalPlayerList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method public static isSupportExternal(Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;
    .locals 3
    .param p0, "options"    # Lcom/aliyun/player/nativeclass/Options;

    .line 178
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer;->externalPlayerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/player/ApasaraExternalPlayer;

    .line 179
    .local v1, "player":Lcom/aliyun/player/ApasaraExternalPlayer;
    invoke-virtual {v1, p0}, Lcom/aliyun/player/ApasaraExternalPlayer;->isSupport(Lcom/aliyun/player/nativeclass/Options;)Z

    move-result v2

    .line 180
    .local v2, "support":Z
    if-eqz v2, :cond_0

    .line 181
    return-object v1

    .line 183
    .end local v1    # "player":Lcom/aliyun/player/ApasaraExternalPlayer;
    .end local v2    # "support":Z
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerExternalPlayer(Lcom/aliyun/player/ApasaraExternalPlayer;)V
    .locals 1
    .param p0, "player"    # Lcom/aliyun/player/ApasaraExternalPlayer;

    .line 172
    if-eqz p0, :cond_0

    .line 173
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer;->externalPlayerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addCustomHttpHeader(Ljava/lang/String;)V
.end method

.method public abstract addExtSubtitle(Ljava/lang/String;)V
.end method

.method public abstract captureScreen()V
.end method

.method public abstract create(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;
.end method

.method public abstract enterBackGround(Z)V
.end method

.method public abstract getBufferPosition()J
.end method

.method public abstract getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I
.end method

.method public abstract getCurrentStreamInfo(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)Lcom/aliyun/player/nativeclass/TrackInfo;
.end method

.method public abstract getDecoderType()Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMasterClockPts()J
.end method

.method public abstract getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPlayerStatus()Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;
.end method

.method public abstract getPlayingPosition()J
.end method

.method public abstract getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
.end method

.method public abstract getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
.end method

.method public abstract getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;
.end method

.method public abstract getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
.end method

.method public abstract getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getVideoDecodeFps()F
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoRenderFps()F
.end method

.method public abstract getVideoRotation()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getVolume()F
.end method

.method public abstract invokeComponent(Ljava/lang/String;)I
.end method

.method public abstract isAutoPlay()Z
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isMute()Z
.end method

.method public abstract isSupport(Lcom/aliyun/player/nativeclass/Options;)Z
.end method

.method public abstract mute(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract reLoad()V
.end method

.method public abstract release()V
.end method

.method public abstract removeAllCustomHttpHeader()V
.end method

.method public abstract seekTo(JZ)V
.end method

.method public abstract selectExtSubtitle(IZ)I
.end method

.method public abstract setAutoPlay(Z)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method

.method public abstract setDecoderType(Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;)V
.end method

.method public abstract setDrmCallback(Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;)V
.end method

.method public abstract setDropBufferThreshold(I)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
.end method

.method public abstract setOnAutoPlayStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;)V
.end method

.method public abstract setOnBufferPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;)V
.end method

.method public abstract setOnCaptureScreenListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;)V
.end method

.method public abstract setOnEventListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;)V
.end method

.method public abstract setOnFirstFrameRenderListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;)V
.end method

.method public abstract setOnLoadStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;)V
.end method

.method public abstract setOnLoopingStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;)V
.end method

.method public abstract setOnPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;)V
.end method

.method public abstract setOnStatusChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;)V
.end method

.method public abstract setOnStreamInfoGetListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;)V
.end method

.method public abstract setOnStreamSwitchSucListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;)V
.end method

.method public abstract setOnSubtitleListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;)V
.end method

.method public abstract setOnVideoRenderedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setOption(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setRefer(Ljava/lang/String;)V
.end method

.method public abstract setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
.end method

.method public abstract setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
.end method

.method public abstract setVideoBackgroundColor(J)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract switchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
.end method

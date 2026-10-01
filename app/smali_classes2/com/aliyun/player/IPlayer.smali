.class public interface abstract Lcom/aliyun/player/IPlayer;
.super Ljava/lang/Object;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;,
        Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;,
        Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;,
        Lcom/aliyun/player/IPlayer$OnReportEventListener;,
        Lcom/aliyun/player/IPlayer$IPResolveType;,
        Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;,
        Lcom/aliyun/player/IPlayer$Option;,
        Lcom/aliyun/player/IPlayer$PropertyKey;,
        Lcom/aliyun/player/IPlayer$ConvertURLCallback;,
        Lcom/aliyun/player/IPlayer$OnSnapShotListener;,
        Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;,
        Lcom/aliyun/player/IPlayer$OnSeiDataListener;,
        Lcom/aliyun/player/IPlayer$OnTrackChangedListener;,
        Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;,
        Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;,
        Lcom/aliyun/player/IPlayer$OnThumbnailListener;,
        Lcom/aliyun/player/IPlayer$OnInfoListener;,
        Lcom/aliyun/player/IPlayer$OnTrackReadyListener;,
        Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;,
        Lcom/aliyun/player/IPlayer$OnErrorListener;,
        Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;,
        Lcom/aliyun/player/IPlayer$OnCompletionListener;,
        Lcom/aliyun/player/IPlayer$OnStateChangedListener;,
        Lcom/aliyun/player/IPlayer$OnRenderingStartListener;,
        Lcom/aliyun/player/IPlayer$OnPreparedListener;,
        Lcom/aliyun/player/IPlayer$SeekMode;,
        Lcom/aliyun/player/IPlayer$ScaleMode;,
        Lcom/aliyun/player/IPlayer$RotateMode;,
        Lcom/aliyun/player/IPlayer$MirrorMode;
    }
.end annotation


# static fields
.field public static final completion:I = 0x6

.field public static final error:I = 0x7

.field public static final idle:I = 0x0

.field public static final initalized:I = 0x1

.field public static final paused:I = 0x4

.field public static final prepared:I = 0x2

.field public static final started:I = 0x3

.field public static final stopped:I = 0x5

.field public static final unknow:I = -0x1


# virtual methods
.method public abstract addExtSubtitle(Ljava/lang/String;)V
.end method

.method public abstract clearScreen()V
.end method

.method public abstract currentTrack(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract currentTrack(Lcom/aliyun/player/nativeclass/TrackInfo$Type;)Lcom/aliyun/player/nativeclass/TrackInfo;
.end method

.method public abstract enableHardwareDecoder(Z)V
.end method

.method public abstract getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;
.end method

.method public abstract getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
.end method

.method public abstract getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
.end method

.method public abstract getPlayerName()Ljava/lang/String;
.end method

.method public abstract getPropertyString(Lcom/aliyun/player/IPlayer$PropertyKey;)Ljava/lang/String;
.end method

.method public abstract getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
.end method

.method public abstract getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoRotation()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getVolume()F
.end method

.method public abstract isAutoPlay()Z
.end method

.method public abstract isLoop()Z
.end method

.method public abstract isMute()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract redraw()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reload()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V
.end method

.method public abstract selectExtSubtitle(IZ)V
.end method

.method public abstract selectTrack(I)V
.end method

.method public abstract selectTrack(IZ)V
.end method

.method public abstract sendCustomEvent(Ljava/lang/String;)V
.end method

.method public abstract setAutoPlay(Z)V
.end method

.method public abstract setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
.end method

.method public abstract setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
.end method

.method public abstract setDefaultBandWidth(I)V
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
.end method

.method public abstract setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
.end method

.method public abstract setFastStart(Z)V
.end method

.method public abstract setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
.end method

.method public abstract setFilterInvalid(Ljava/lang/String;Z)V
.end method

.method public abstract setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setMaxAccurateSeekDelta(I)V
.end method

.method public abstract setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
.end method

.method public abstract setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
.end method

.method public abstract setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
.end method

.method public abstract setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
.end method

.method public abstract setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
.end method

.method public abstract setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
.end method

.method public abstract setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
.end method

.method public abstract setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
.end method

.method public abstract setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
.end method

.method public abstract setOnTrackChangedListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
.end method

.method public abstract setOnTrackReadyListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
.end method

.method public abstract setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setPreferPlayerName(Ljava/lang/String;)V
.end method

.method public abstract setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
.end method

.method public abstract setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
.end method

.method public abstract setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
.end method

.method public abstract setSpeed(F)V
.end method

.method public abstract setStreamDelayTime(II)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setTraceId(Ljava/lang/String;)V
.end method

.method public abstract setVideoBackgroundColor(I)V
.end method

.method public abstract setVideoTag([I)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract snapshot()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract surfaceChanged()V
.end method

.method public abstract updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
.end method

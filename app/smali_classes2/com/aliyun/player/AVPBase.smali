.class public abstract Lcom/aliyun/player/AVPBase;
.super Ljava/lang/Object;
.source "AVPBase.java"

# interfaces
.implements Lcom/aliyun/player/IPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;,
        Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;,
        Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerSnapShotListener;,
        Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerSeiDataListener;,
        Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;,
        Lcom/aliyun/player/AVPBase$InnerSeekEndListener;,
        Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;,
        Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;,
        Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;,
        Lcom/aliyun/player/AVPBase$InnerRenderListener;,
        Lcom/aliyun/player/AVPBase$InnerCompletionListener;,
        Lcom/aliyun/player/AVPBase$InnerErrorListener;,
        Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;,
        Lcom/aliyun/player/AVPBase$InnerInfoListener;,
        Lcom/aliyun/player/AVPBase$InnerPrepareListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field private mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

.field private mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field private mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

.field private mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

.field private mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field protected mTraceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/aliyun/player/AVPBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/AVPBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "traceID"    # Ljava/lang/String;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 36
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 40
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 41
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerPrepareListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerPrepareListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 66
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 67
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerInfoListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerInfoListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 95
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 97
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerOnChooseTrackIndexListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 125
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 126
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerErrorListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerErrorListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 150
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 151
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerCompletionListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerCompletionListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 176
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 177
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerRenderListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerRenderListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 201
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 202
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerVideoSizeChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 226
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 227
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerTrackReadyListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 255
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 256
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerLoadingStatusListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 308
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 309
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSeekEndListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSeekEndListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 333
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 334
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSubtitleDisplayListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 400
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 401
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSeiDataListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSeiDataListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 425
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 426
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerTrackChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 482
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 483
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerSnapShotListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerSnapShotListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 508
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 509
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerStatusChangedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 534
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 535
    new-instance v1, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;

    invoke-direct {v1, p0}, Lcom/aliyun/player/AVPBase$InnerVideoRenderedListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 596
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 597
    new-instance v0, Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    invoke-direct {v0, p0}, Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;-><init>(Lcom/aliyun/player/AVPBase;)V

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    .line 584
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mContext:Landroid/content/Context;

    .line 585
    iput-object p2, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    .line 586
    invoke-virtual {p0, p1}, Lcom/aliyun/player/AVPBase;->createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 587
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->bindListeners()V

    .line 589
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/AVPBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onPrepared()V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # Lcom/aliyun/player/bean/InfoBean;

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/player/AVPBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onLoadingEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/aliyun/player/AVPBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onSeekComplete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSubtitleExtAdded(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/AVPBase;IJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->onSubtitleShow(IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/aliyun/player/AVPBase;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/AVPBase;->onSubtitleHide(IJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/aliyun/player/AVPBase;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSubtitleHeader(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/aliyun/player/AVPBase;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onSeiData(I[B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # Lcom/aliyun/player/nativeclass/TrackInfo;
    .param p2, "x2"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/aliyun/player/AVPBase;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/AVPBase;->onSnapShot(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/AVPBase;[Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # [Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/aliyun/player/AVPBase;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/aliyun/player/AVPBase;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/AVPBase;->onVideoRendered(JJ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/aliyun/player/AVPBase;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # Ljava/util/Map;

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onEventParam(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/player/AVPBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onCompletion()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/AVPBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onVideoRenderingStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/player/AVPBase;II)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onVideoSizeChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/AVPBase;Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/player/AVPBase;->onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/player/AVPBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;

    .line 28
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->onLoadingBegin()V

    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/player/AVPBase;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/AVPBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPBase;->onLoadingProgress(IF)V

    return-void
.end method

.method private bindListeners()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    .line 604
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    .line 605
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    .line 606
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V

    .line 607
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnFirstFrameShowListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    .line 608
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    .line 609
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    .line 610
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    .line 611
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V

    .line 612
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    .line 613
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V

    .line 614
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnTrackInfoGetListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V

    .line 615
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnTrackSelectRetListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V

    .line 616
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V

    .line 617
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V

    .line 618
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnReportEventListener:Lcom/aliyun/player/AVPBase$InnerOnReportEventListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V

    .line 620
    return-void
.end method

.method private clearListeners()V
    .locals 1

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 780
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 781
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 782
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 784
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 785
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 786
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 787
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 788
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 790
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 791
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 792
    iput-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 793
    return-void
.end method

.method private onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1
    .param p1, "trackInfo"    # Lcom/aliyun/player/nativeclass/TrackInfo;
    .param p2, "errorInfo"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 459
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 462
    :cond_0
    return-void
.end method

.method private onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 1
    .param p1, "trackInfo"    # Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 453
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 456
    :cond_0
    return-void
.end method

.method private onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1
    .param p1, "trackInfos"    # [Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 118
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    move-result v0

    return v0

    .line 121
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private onCompletion()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnCompletionListener;->onCompletion()V

    .line 174
    :cond_0
    return-void
.end method

.method private onError(Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/aliyun/player/bean/ErrorInfo;

    .line 145
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 148
    :cond_0
    return-void
.end method

.method private onEventParam(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 578
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnReportEventListener;->onEventParam(Ljava/util/Map;)V

    .line 581
    :cond_0
    return-void
.end method

.method private onInfo(Lcom/aliyun/player/bean/InfoBean;)V
    .locals 2
    .param p1, "infoBean"    # Lcom/aliyun/player/bean/InfoBean;

    .line 87
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 90
    :cond_0
    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method

.method private onLoadingBegin()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingBegin()V

    .line 294
    :cond_0
    return-void
.end method

.method private onLoadingEnd()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingEnd()V

    .line 306
    :cond_0
    return-void
.end method

.method private onLoadingProgress(IF)V
    .locals 1
    .param p1, "percent"    # I
    .param p2, "speed"    # F

    .line 297
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingProgress(IF)V

    .line 300
    :cond_0
    return-void
.end method

.method private onPrepared()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnPreparedListener;->onPrepared()V

    .line 64
    :cond_0
    return-void
.end method

.method private onSeekComplete()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;->onSeekComplete()V

    .line 331
    :cond_0
    return-void
.end method

.method private onSeiData(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .line 420
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSeiDataListener;->onSeiData(I[B)V

    .line 423
    :cond_0
    return-void
.end method

.method private onSnapShot(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "with"    # I
    .param p3, "height"    # I

    .line 502
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/IPlayer$OnSnapShotListener;->onSnapShot(Landroid/graphics/Bitmap;II)V

    .line 505
    :cond_0
    return-void
.end method

.method private onStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 528
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnStateChangedListener;->onStateChanged(I)V

    .line 531
    :cond_0
    return-void
.end method

.method private onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleExtAdded(ILjava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method private onSubtitleHeader(ILjava/lang/String;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "header"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleHeader(ILjava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method private onSubtitleHide(IJ)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J

    .line 389
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleHide(IJ)V

    .line 392
    :cond_0
    return-void
.end method

.method private onSubtitleShow(IJLjava/lang/String;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J
    .param p4, "data"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleShow(IJLjava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method private onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 1
    .param p1, "mediaInfo"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 246
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 248
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnTrackReadyListener;->onTrackReady(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 252
    :cond_0
    return-void
.end method

.method private onVideoRendered(JJ)V
    .locals 1
    .param p1, "timeMs"    # J
    .param p3, "pts"    # J

    .line 554
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;->onVideoRendered(JJ)V

    .line 557
    :cond_0
    return-void
.end method

.method private onVideoRenderingStart()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer$OnRenderingStartListener;->onRenderingStart()V

    .line 199
    :cond_0
    return-void
.end method

.method private onVideoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 221
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    .line 224
    :cond_0
    return-void
.end method

.method private pauseInner()V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->pause()V

    .line 751
    return-void
.end method

.method private startInner()V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->start()V

    .line 742
    return-void
.end method


# virtual methods
.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->addExtSubtitle(Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method public clearScreen()V
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->clearScreen()V

    .line 1208
    return-void
.end method

.method protected abstract createAlivcMediaPlayer(Landroid/content/Context;)Lcom/aliyun/player/nativeclass/NativePlayerBase;
.end method

.method public currentTrack(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public currentTrack(Lcom/aliyun/player/nativeclass/TrackInfo$Type;)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 2
    .param p1, "type"    # Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 957
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p1}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1223
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->enableHardwareDecoder(Z)V

    .line 1224
    return-void
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 1228
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "definition"    # Ljava/lang/String;
    .param p4, "previewTime"    # I

    .line 1233
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getCorePlayer()Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutMediaInfo:Lcom/aliyun/player/nativeclass/MediaInfo;

    return-object v0
.end method

.method public getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;

    move-result-object v0

    return-object v0
.end method

.method public getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/aliyun/player/IPlayer$Option;

    .line 1253
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyString(Lcom/aliyun/player/IPlayer$PropertyKey;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/aliyun/player/IPlayer$PropertyKey;

    .line 1243
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$PropertyKey;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getPropertyString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;

    move-result-object v0

    return-object v0
.end method

.method public getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoRotation()I
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoRotation()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVolume()F

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isAutoPlay()Z

    move-result v0

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isLoop()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->isMuted()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 0

    .line 746
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->pauseInner()V

    .line 747
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->prepare()V

    .line 966
    return-void
.end method

.method public redraw()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1203
    return-void
.end method

.method public release()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->release()V

    .line 775
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->clearListeners()V

    .line 776
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->reload()V

    .line 1239
    return-void
.end method

.method public reset()V
    .locals 0

    .line 770
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .line 970
    sget-object v0, Lcom/aliyun/player/IPlayer$SeekMode;->Inaccurate:Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/player/AVPBase;->seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V

    .line 971
    return-void
.end method

.method public seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V
    .locals 2
    .param p1, "positionMs"    # J
    .param p3, "mode"    # Lcom/aliyun/player/IPlayer$SeekMode;

    .line 975
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {p3}, Lcom/aliyun/player/IPlayer$SeekMode;->getValue()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->seekTo(JI)V

    .line 976
    return-void
.end method

.method public selectExtSubtitle(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "select"    # Z

    .line 1171
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectExtSubtitle(IZ)V

    .line 1172
    return-void
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "trackInfoIndex"    # I

    .line 941
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectTrack(I)V

    .line 942
    return-void
.end method

.method public selectTrack(IZ)V
    .locals 1
    .param p1, "trackInfoIndex"    # I
    .param p2, "accurate"    # Z

    .line 946
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->selectTrack(IZ)V

    .line 947
    return-void
.end method

.method public sendCustomEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sendCustomEvent(Ljava/lang/String;)V

    .line 1294
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1
    .param p1, "auto"    # Z

    .line 1016
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setAutoPlay(Z)V

    .line 1017
    return-void
.end method

.method public setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
    .locals 1
    .param p1, "cacheConfig"    # Lcom/aliyun/player/nativeclass/CacheConfig;

    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v0, Lcom/aliyun/player/nativeclass/CacheConfig;

    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/CacheConfig;-><init>()V

    move-object p1, v0

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V

    .line 637
    return-void
.end method

.method public setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 864
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 865
    return-void
.end method

.method public setDefaultBandWidth(I)V
    .locals 1
    .param p1, "bandWidth"    # I

    .line 1248
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDefaultBandWidth(I)V

    .line 1249
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1127
    if-nez p1, :cond_0

    .line 1128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/AVPBase;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 1130
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/AVPBase;->setSurface(Landroid/view/Surface;)V

    .line 1132
    :goto_0
    return-void
.end method

.method public setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 1
    .param p1, "view"    # Lcom/aliyun/player/videoview/AliDisplayView;

    .line 1135
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V

    .line 1136
    return-void
.end method

.method public setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/cicada/player/utils/media/DrmCallback;

    .line 1288
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V

    .line 1289
    return-void
.end method

.method public setFastStart(Z)V
    .locals 1
    .param p1, "open"    # Z

    .line 1278
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFastStart(Z)V

    .line 1279
    return-void
.end method

.method public setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
    .locals 1
    .param p1, "filterConfig"    # Lcom/aliyun/player/FilterConfig;

    .line 1323
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFilterConfig(Lcom/aliyun/player/FilterConfig;)V

    .line 1324
    return-void
.end method

.method public setFilterInvalid(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "invalid"    # Z

    .line 1333
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setFilterInvalid(Ljava/lang/String;Z)V

    .line 1334
    return-void
.end method

.method public setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 1
    .param p1, "type"    # Lcom/aliyun/player/IPlayer$IPResolveType;

    .line 1273
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V

    .line 1274
    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 879
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setLoop(Z)V

    .line 880
    return-void
.end method

.method public setMaxAccurateSeekDelta(I)V
    .locals 1
    .param p1, "delta"    # I

    .line 980
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMaxAccurateSeekDelta(I)V

    .line 981
    return-void
.end method

.method public setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 1
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 798
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 799
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 895
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setMute(Z)V

    .line 896
    return-void
.end method

.method public setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 1085
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 1086
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 1100
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 1101
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 1080
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 1081
    return-void
.end method

.method public setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "onInfoListener"    # Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 1095
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 1096
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 1140
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 1141
    return-void
.end method

.method public setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    .line 1338
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V

    .line 1339
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 1070
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 1071
    return-void
.end method

.method public setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    .line 1318
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V

    .line 1319
    return-void
.end method

.method public setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 1075
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 1076
    return-void
.end method

.method public setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
    .locals 0
    .param p1, "onReportEventListener"    # Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 1283
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutEventListener:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 1284
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 1145
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeekEndListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 1146
    return-void
.end method

.method public setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 1156
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 1157
    return-void
.end method

.method public setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 1217
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 1218
    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 1186
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnStatusChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 1187
    return-void
.end method

.method public setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 1161
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 1162
    return-void
.end method

.method public setOnTrackChangedListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 1151
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 1152
    return-void
.end method

.method public setOnTrackReadyListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 1090
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 1091
    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 1258
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 1259
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mInnerOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V

    goto :goto_0

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V

    .line 1264
    :goto_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 1122
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mOutOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 1123
    return-void
.end method

.method public setPreferPlayerName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1303
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setPreferPlayerName(Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method public setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;

    .line 1313
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V

    .line 1314
    return-void
.end method

.method public setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 1
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    .line 809
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 810
    return-void
.end method

.method public setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 1
    .param p1, "scaleMode"    # Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 821
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 822
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 641
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSpeed(F)V

    .line 642
    return-void
.end method

.method public setStreamDelayTime(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "time"    # I

    .line 1176
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setStreamDelayTime(II)V

    .line 1177
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 661
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurface(Landroid/view/Surface;)V

    .line 662
    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 1196
    iput-object p1, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    .line 1197
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iget-object v1, p0, Lcom/aliyun/player/AVPBase;->mTraceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setTraceId(Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public setVideoBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1268
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVideoBackgroundColor(I)V

    .line 1269
    return-void
.end method

.method public setVideoTag([I)V
    .locals 1
    .param p1, "tags"    # [I

    .line 1298
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVideoTag([I)V

    .line 1299
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 1026
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setVolume(F)V

    .line 1027
    return-void
.end method

.method public snapshot()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->snapShot()V

    .line 657
    return-void
.end method

.method public start()V
    .locals 0

    .line 736
    invoke-direct {p0}, Lcom/aliyun/player/AVPBase;->startInner()V

    .line 737
    return-void
.end method

.method public stop()V
    .locals 3

    .line 756
    invoke-virtual {p0}, Lcom/aliyun/player/AVPBase;->stopInner()V

    .line 759
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->onStatusChanged(II)V

    .line 760
    return-void
.end method

.method protected stopInner()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->stop()V

    .line 764
    return-void
.end method

.method public surfaceChanged()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->surfaceChanged()V

    .line 652
    return-void
.end method

.method public updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/aliyun/player/FilterConfig$FilterOptions;

    .line 1328
    iget-object v0, p0, Lcom/aliyun/player/AVPBase;->mCorePlayer:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V

    .line 1329
    return-void
.end method

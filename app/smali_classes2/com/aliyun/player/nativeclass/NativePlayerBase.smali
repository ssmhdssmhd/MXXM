.class public Lcom/aliyun/player/nativeclass/NativePlayerBase;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_CURRENT_POSITION:I = 0x3e8

.field private static final VIDEO_TYPE_FAIRPLAY:I = 0x10

.field private static final VIDEO_TYPE_HDR10:I = 0x2

.field private static final VIDEO_TYPE_NONE:I = 0x0

.field private static final VIDEO_TYPE_SDR:I = 0x1

.field private static final VIDEO_TYPE_WIDEVINE_L1:I = 0x4

.field private static final VIDEO_TYPE_WIDEVINE_L3:I = 0x8

.field private static libPath:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;


# instance fields
.field private mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

.field private mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

.field private mDirectRender:Z

.field private mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field private mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

.field private mEnableTunnelMode:Z

.field private mNativeContext:J

.field private mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

.field private mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

.field private mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

.field private mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

.field private mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

.field private mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

.field private mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

.field private mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

.field private mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

.field private mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

.field private mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

.field private mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

.field private mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

.field private mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

.field private mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

.field private mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

.field private mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

.field private mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

.field private mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

.field private mSurfaceFromUser:Z

.field private mVideoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 84
    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    .line 537
    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    .line 336
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    .line 560
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    .line 740
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 741
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 742
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 743
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 744
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 745
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 746
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 747
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 748
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 749
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 750
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 751
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 752
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 753
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 754
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 755
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 756
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 757
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 1273
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    .line 1310
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 1311
    iput v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    .line 1356
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 1357
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 101
    sput-object p1, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    .line 103
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    invoke-static {p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getUserNativeLibPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetLibPath(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->loadPlugins()V

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/aliyun/utils/DeviceInfoUtils;->setSDKContext(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 112
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->construct(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .param p1, "x1"    # Landroid/os/Message;

    .line 40
    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackReadyListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeiDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/view/Surface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurfaceInner(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnRenderingStartListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 40
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nConstruct()V

    .line 176
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 92
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 530
    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserNativeLibPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "userPath":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 155
    .local v4, "p":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 157
    .end local v4    # "p":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 158
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "libFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 162
    .local v3, "p":Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v4

    .line 164
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 163
    :catch_1
    move-exception v3

    .line 167
    :cond_1
    :goto_1
    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/aliyun/player/bean/InfoBean;

    invoke-direct {v0}, Lcom/aliyun/player/bean/InfoBean;-><init>()V

    .line 77
    .local v0, "infoBean":Lcom/aliyun/player/bean/InfoBean;
    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/InfoBean;->setCode(Lcom/aliyun/player/bean/InfoCode;)V

    .line 78
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/bean/InfoBean;->setExtraValue(J)V

    .line 79
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 82
    .end local v0    # "infoBean":Lcom/aliyun/player/bean/InfoBean;
    :cond_0
    return-void
.end method

.method private loadPlugins()V
    .locals 13

    .line 116
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aliyun/player/nativeclass/NativePlayerBase;->libPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "libDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    return-void

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 126
    .local v1, "childFiles":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_2

    .line 130
    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 131
    .local v4, "item":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "name":Ljava/lang/String;
    const-string v6, "cicada_plugin_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 133
    const-string v6, "libartpSource.so"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 134
    goto :goto_1

    .line 137
    :cond_3
    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 138
    .local v7, "libPos":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 139
    .local v6, "libLen":I
    const-string v8, ".so"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 140
    .local v8, "soPos":I
    add-int v9, v7, v6

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 142
    .local v9, "libName":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_1

    .line 143
    :catch_0
    move-exception v10

    .line 144
    .local v10, "e":Ljava/lang/Exception;
    const-string v11, "NativePlayerBase"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v4    # "item":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "libLen":I
    .end local v7    # "libPos":I
    .end local v8    # "soPos":I
    .end local v9    # "libName":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_4
    return-void

    .line 127
    :cond_5
    :goto_2
    return-void
.end method

.method protected static nConvertURLCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "srcURL"    # Ljava/lang/String;
    .param p1, "srcFormat"    # Ljava/lang/String;

    .line 1232
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    if-eqz v0, :cond_0

    .line 1233
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    invoke-interface {v0, p0, p1}, Lcom/aliyun/player/IPlayer$ConvertURLCallback;->convertURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1235
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static native nGetSdkVersion()Ljava/lang/String;
.end method

.method protected static native nSetBlackType(I)V
.end method

.method private nUpdateViewCallback(I)Z
    .locals 5
    .param p1, "videoType"    # I
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1315
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nUpdateViewCallback videoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 1317
    iput p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    .line 1318
    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    if-eqz v1, :cond_0

    .line 1319
    return v0

    .line 1322
    :cond_0
    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 1324
    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 1327
    .local v1, "displayViewType":Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1330
    :cond_1
    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->SurfaceView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 1331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    .line 1334
    :cond_2
    sget-object v2, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDirectRender  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-nez v2, :cond_3

    .line 1336
    sget-object v2, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    const-string v3, "nCreateViewCallback but view is null"

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return v0

    .line 1340
    :cond_3
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->needUpdateView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)Z

    move-result v0

    .line 1341
    .local v0, "updateDisplayView":Z
    move-object v2, v1

    .line 1342
    .local v2, "finalDisplayViewType":Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    new-instance v4, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;

    invoke-direct {v4, p0, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    invoke-virtual {v3, v4}, Lcom/aliyun/player/videoview/AliDisplayView;->post(Ljava/lang/Runnable;)Z

    .line 1353
    return v0
.end method

.method private native_onEventReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Object;
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1281
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 1282
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer$OnReportEventListener;->onEventParam(Ljava/util/Map;)V

    .line 1285
    :cond_0
    return-void
.end method

.method private native_onPreRenderFrameCallback(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "frameInfo"    # Ljava/lang/Object;
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    move-object v1, p1

    check-cast v1, Lcom/cicada/player/utils/FrameInfo;

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;->onPreRenderFrame(Lcom/cicada/player/utils/FrameInfo;)Z

    move-result v0

    return v0

    .line 1300
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private native_onRenderFrameCallback(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "frameInfo"    # Ljava/lang/Object;
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    move-object v1, p1

    check-cast v1, Lcom/cicada/player/utils/FrameInfo;

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;->onRenderFrame(Lcom/cicada/player/utils/FrameInfo;)Z

    move-result v0

    return v0

    .line 1292
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setBlackType(I)V
    .locals 0
    .param p0, "type"    # I

    .line 534
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetBlackType(I)V

    .line 535
    return-void
.end method

.method public static setConvertURLCb(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    .line 540
    sput-object p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->sConvertURLCallback:Lcom/aliyun/player/IPlayer$ConvertURLCallback;

    .line 541
    return-void
.end method

.method private setSurfaceInner(Landroid/view/Surface;Z)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "fromUser"    # Z

    .line 192
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 193
    sget-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->TAG:Ljava/lang/String;

    const-string v1, "set surface not at main thread"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    iput-boolean p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mSurfaceFromUser:Z

    .line 196
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetSurface(Landroid/view/Surface;)V

    .line 197
    return-void
.end method


# virtual methods
.method public addExtSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nAddExtSubtitle(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public declared-synchronized clearScreen()V
    .locals 1

    monitor-enter p0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nClearScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 501
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected clearScreenIfNeed()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v0

    .line 222
    .local v0, "config":Lcom/aliyun/player/nativeclass/PlayerConfig;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mClearFrameWhenStop:Z

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->clearScreen()V

    .line 225
    :cond_0
    return-void
.end method

.method public declared-synchronized enableHardwareDecoder(Z)V
    .locals 0
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableHardwareDecoder(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 331
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getBufferedPosition()J
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetBufferedPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 328
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "URL"    # Ljava/lang/String;

    .line 1224
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "definition"    # Ljava/lang/String;
    .param p4, "previewTime"    # I

    .line 1228
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;
    .locals 2

    monitor-enter p0

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetConfig()Ljava/lang/Object;

    move-result-object v0

    .line 345
    .local v0, "config":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 346
    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/nativeclass/PlayerConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 348
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 343
    .end local v0    # "config":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCurrentPosition()J
    .locals 2

    monitor-enter p0

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 324
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCurrentTrackInfo(I)Lcom/aliyun/player/nativeclass/TrackInfo;
    .locals 1
    .param p1, "type"    # I

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetCurrentStreamInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/nativeclass/TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 275
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getDuration()J
    .locals 2

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetDuration()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 247
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;
    .locals 2

    monitor-enter p0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetMirrorMode()I

    move-result v0

    .line 427
    .local v0, "value":I
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 428
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 429
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 430
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 431
    :cond_1
    :try_start_2
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 432
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 434
    :cond_2
    :try_start_3
    sget-object v1, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 425
    .end local v0    # "value":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method protected getNativeContext()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mNativeContext:J

    return-wide v0
.end method

.method public declared-synchronized getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Lcom/aliyun/player/IPlayer$Option;

    monitor-enter p0

    .line 447
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$Option;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    .local v0, "optionValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 449
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 451
    :cond_0
    :try_start_1
    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->RenderFPS:Lcom/aliyun/player/IPlayer$Option;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_1

    .line 453
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 454
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 459
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 446
    .end local v0    # "optionValue":Ljava/lang/String;
    .end local p1    # "key":Lcom/aliyun/player/IPlayer$Option;
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetPlayerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPropertyString(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I

    monitor-enter p0

    .line 506
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetPropertyString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 506
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "key":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;
    .locals 2

    monitor-enter p0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetRotateMode()I

    move-result v0

    .line 404
    .local v0, "rotate":I
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 405
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 406
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 407
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 408
    :cond_1
    :try_start_2
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 409
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 410
    :cond_2
    :try_start_3
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 411
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 413
    :cond_3
    :try_start_4
    sget-object v1, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 402
    .end local v0    # "rotate":I
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public declared-synchronized getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;
    .locals 2

    monitor-enter p0

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetScaleMode()I

    move-result v0

    .line 381
    .local v0, "scaleMode":I
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 382
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 383
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 384
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 385
    :cond_1
    :try_start_2
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v1}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 386
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 388
    :cond_2
    :try_start_3
    sget-object v1, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 379
    .end local v0    # "scaleMode":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSpeed()F
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetSpeed()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 263
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVideoHeight()I
    .locals 1

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 316
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVideoRotation()F
    .locals 1

    monitor-enter p0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoRotation()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v0

    monitor-exit p0

    return v0

    .line 320
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVideoWidth()I
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 312
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getVolume()F
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVolume()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 251
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invokeComponent(Ljava/lang/String;)I
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 526
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nInvokeComponent(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized isAutoPlay()Z
    .locals 1

    monitor-enter p0

    .line 467
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsAutoPlay()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 467
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isLoop()Z
    .locals 1

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsLoop()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 283
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isMuted()Z
    .locals 1

    monitor-enter p0

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nIsMuted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 308
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected native nAddExtSubtitle(Ljava/lang/String;)V
.end method

.method protected native nClearScreen()V
.end method

.method protected native nConstruct()V
.end method

.method protected native nEnableFrameCb(Z)V
.end method

.method protected native nEnableHardwareDecoder(Z)V
.end method

.method protected native nEnablePreFrameCb(Z)V
.end method

.method protected native nEnableVideoRenderedCallback(Z)V
.end method

.method protected native nGetBufferedPosition()J
.end method

.method protected native nGetCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native nGetCacheFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method protected native nGetConfig()Ljava/lang/Object;
.end method

.method protected native nGetCurrentPosition()J
.end method

.method protected native nGetCurrentStreamInfo(I)Ljava/lang/Object;
.end method

.method protected native nGetDuration()J
.end method

.method protected native nGetMirrorMode()I
.end method

.method protected native nGetOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native nGetPlayerName()Ljava/lang/String;
.end method

.method protected native nGetPropertyString(I)Ljava/lang/String;
.end method

.method protected native nGetRotateMode()I
.end method

.method protected native nGetScaleMode()I
.end method

.method protected native nGetSpeed()F
.end method

.method protected native nGetVideoHeight()I
.end method

.method protected native nGetVideoRotation()I
.end method

.method protected native nGetVideoWidth()I
.end method

.method protected native nGetVolume()F
.end method

.method protected native nInvokeComponent(Ljava/lang/String;)I
.end method

.method protected native nIsAutoPlay()Z
.end method

.method protected native nIsLoop()Z
.end method

.method protected native nIsMuted()Z
.end method

.method protected native nPause()V
.end method

.method protected native nPrepare()V
.end method

.method protected native nRelease()V
.end method

.method protected native nReload()V
.end method

.method protected native nSeekTo(JI)V
.end method

.method protected native nSelectExtSubtitle(IZ)V
.end method

.method protected native nSelectTrack(I)V
.end method

.method protected native nSelectTrackA(IZ)V
.end method

.method protected native nSendCustomEvent(Ljava/lang/String;)V
.end method

.method protected native nSetAutoPlay(Z)V
.end method

.method protected native nSetCacheConfig(Ljava/lang/Object;)V
.end method

.method protected native nSetConfig(Ljava/lang/Object;)V
.end method

.method protected native nSetConnectivityManager(Ljava/lang/Object;)V
.end method

.method protected native nSetDefaultBandWidth(I)V
.end method

.method protected native nSetFastStart(Z)V
.end method

.method protected native nSetFilterConfig(Ljava/lang/String;)V
.end method

.method protected native nSetFilterInvalid(Ljava/lang/String;Z)V
.end method

.method protected native nSetFrameCbConfig(ZZ)V
.end method

.method protected native nSetIPResolveType(I)V
.end method

.method protected native nSetLibPath(Ljava/lang/String;)V
.end method

.method protected native nSetLoop(Z)V
.end method

.method protected native nSetMaxAccurateSeekDelta(I)V
.end method

.method protected native nSetMirrorMode(I)V
.end method

.method protected native nSetMute(Z)V
.end method

.method protected native nSetOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected native nSetPreferPlayerName(Ljava/lang/String;)V
.end method

.method protected native nSetRotateMode(I)V
.end method

.method protected native nSetScaleMode(I)V
.end method

.method protected native nSetSpeed(F)V
.end method

.method protected native nSetStreamDelayTime(II)V
.end method

.method protected native nSetSurface(Landroid/view/Surface;)V
.end method

.method protected native nSetTraceID(Ljava/lang/String;)V
.end method

.method protected native nSetVideoBackgroundColor(I)V
.end method

.method protected native nSetVideoTag([I)V
.end method

.method protected native nSetVolume(F)V
.end method

.method protected native nSnapShot()V
.end method

.method protected native nStart()V
.end method

.method protected native nStop()V
.end method

.method protected native nSurfaceChanged()V
.end method

.method protected native nUpdateFilterConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected onAutoPlayStart()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$6;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$6;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 886
    return-void
.end method

.method protected onBufferedPositionUpdate(J)V
    .locals 2
    .param p1, "position"    # J

    .line 1062
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$17;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1073
    return-void
.end method

.method protected onCaptureScreen(II[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "buffer"    # [B

    .line 1196
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 1198
    const/4 v0, 0x0

    .line 1200
    .local v0, "bOutput":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 1201
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1202
    .local v1, "src":Ljava/nio/Buffer;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    .end local v1    # "src":Ljava/nio/Buffer;
    goto :goto_0

    .line 1203
    :catch_0
    move-exception v1

    .line 1206
    :goto_0
    nop

    .line 1207
    .local v0, "finalBOutput":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1208
    .end local v0    # "finalBOutput":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    .line 1211
    .restart local v0    # "finalBOutput":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1221
    return-void
.end method

.method protected onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I
    .locals 1
    .param p1, "trackInfos"    # [Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 990
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;->onChooseTrackIndex([Lcom/aliyun/player/nativeclass/TrackInfo;)I

    move-result v0

    return v0

    .line 993
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected onCircleStart()V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$5;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$5;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method

.method protected onCompletion()V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$4;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$4;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 857
    return-void
.end method

.method protected onCurrentDownloadSpeed(J)V
    .locals 2
    .param p1, "speed"    # J

    .line 1099
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1110
    return-void
.end method

.method protected onCurrentPositionUpdate(J)V
    .locals 4
    .param p1, "position"    # J

    .line 1045
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    long-to-int v1, p1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1046
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    invoke-virtual {v1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1047
    return-void
.end method

.method protected onError(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 891
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    .line 892
    .local v0, "errorCode":Lcom/aliyun/player/bean/ErrorCode;
    invoke-static {}, Lcom/aliyun/player/bean/ErrorCode;->values()[Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 893
    .local v4, "item":Lcom/aliyun/player/bean/ErrorCode;
    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 894
    move-object v0, v4

    .line 895
    goto :goto_1

    .line 892
    .end local v4    # "item":Lcom/aliyun/player/bean/ErrorCode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 899
    :cond_1
    :goto_1
    move-object v1, v0

    .line 901
    .local v1, "finalErrorCode":Lcom/aliyun/player/bean/ErrorCode;
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v3, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;

    invoke-direct {v3, p0, v1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 912
    return-void
.end method

.method protected onEvent(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 916
    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    .line 917
    .local v0, "infoCode":Lcom/aliyun/player/bean/InfoCode;
    invoke-static {}, Lcom/aliyun/player/bean/InfoCode;->values()[Lcom/aliyun/player/bean/InfoCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 918
    .local v4, "item":Lcom/aliyun/player/bean/InfoCode;
    invoke-virtual {v4}, Lcom/aliyun/player/bean/InfoCode;->getValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 919
    move-object v0, v4

    .line 920
    goto :goto_1

    .line 917
    .end local v4    # "item":Lcom/aliyun/player/bean/InfoCode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 924
    :cond_1
    :goto_1
    move-object v1, v0

    .line 926
    .local v1, "finalInfoCode":Lcom/aliyun/player/bean/InfoCode;
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v3, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;

    invoke-direct {v3, p0, v1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/InfoCode;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 937
    return-void
.end method

.method protected onFirstFrameShow()V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->firstFrameRender(Z)V

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$9;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$9;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 953
    return-void
.end method

.method protected onHideSubtitle(IJ)V
    .locals 2
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J

    .line 1172
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase$26;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;IJ)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    return-void
.end method

.method protected onLoadingEnd()V
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    return-void
.end method

.method protected onLoadingProgress(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 1088
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;F)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1096
    return-void
.end method

.method protected onLoadingStart()V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$18;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$18;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1085
    return-void
.end method

.method protected onPrepared()V
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$3;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$3;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 845
    return-void
.end method

.method protected onSeekEnd()V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$23;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$23;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1146
    return-void
.end method

.method protected onSeiDataCallback(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "seiData"    # [B

    .line 1009
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I[B)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    return-void
.end method

.method protected onShowSubtitle(IJLjava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "trackIndex"    # I
    .param p2, "id"    # J
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "extra"    # Ljava/lang/Object;

    .line 1150
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$24;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    .end local p1    # "trackIndex":I
    .end local p2    # "id":J
    .end local p4    # "content":Ljava/lang/String;
    .local v3, "trackIndex":I
    .local v4, "id":J
    .local v6, "content":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/aliyun/player/nativeclass/NativePlayerBase$24;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;IJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1158
    return-void
.end method

.method public onStatusChanged(II)V
    .locals 2
    .param p1, "newStatus"    # I
    .param p2, "oldStatus"    # I

    .line 1050
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$16;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$16;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1058
    return-void
.end method

.method protected onStreamInfoGet(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 2
    .param p1, "mediaInfo"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 979
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$12;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$12;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/nativeclass/MediaInfo;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 987
    return-void
.end method

.method protected onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "content"    # Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1169
    return-void
.end method

.method protected onSubtitleHeader(ILjava/lang/String;)V
    .locals 2
    .param p1, "trackIndex"    # I
    .param p2, "header"    # Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$27;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    return-void
.end method

.method protected onSwitchStreamFail(Lcom/aliyun/player/nativeclass/TrackInfo;ILjava/lang/String;)V
    .locals 8
    .param p1, "targetInfo"    # Lcom/aliyun/player/nativeclass/TrackInfo;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 1021
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    .line 1022
    .local v0, "errorCode":Lcom/aliyun/player/bean/ErrorCode;
    invoke-static {}, Lcom/aliyun/player/bean/ErrorCode;->values()[Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1023
    .local v4, "item":Lcom/aliyun/player/bean/ErrorCode;
    invoke-virtual {v4}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1024
    move-object v0, v4

    .line 1025
    goto :goto_1

    .line 1022
    .end local v4    # "item":Lcom/aliyun/player/bean/ErrorCode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    :goto_1
    move-object v3, v0

    .line 1030
    .local v3, "finalErrorCode":Lcom/aliyun/player/bean/ErrorCode;
    iget-object v7, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;

    move-object v2, p0

    move-object v6, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "targetInfo":Lcom/aliyun/player/nativeclass/TrackInfo;
    .end local p2    # "code":I
    .end local p3    # "msg":Ljava/lang/String;
    .local v4, "code":I
    .local v5, "msg":Ljava/lang/String;
    .local v6, "targetInfo":Lcom/aliyun/player/nativeclass/TrackInfo;
    invoke-direct/range {v1 .. v6}, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;ILjava/lang/String;Lcom/aliyun/player/nativeclass/TrackInfo;)V

    invoke-virtual {v7, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1042
    return-void
.end method

.method protected onSwitchStreamSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 2
    .param p1, "newInfo"    # Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 998
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1006
    return-void
.end method

.method protected onUtcTimeUpdate(J)V
    .locals 2
    .param p1, "UtcTime"    # J

    .line 1113
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$21;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1124
    return-void
.end method

.method protected onVerifyAuthCallback(Ljava/lang/Object;)I
    .locals 2
    .param p1, "authInfo"    # Ljava/lang/Object;

    .line 1248
    move-object v0, p1

    check-cast v0, Lcom/aliyun/player/source/VidAuth;

    .line 1249
    .local v0, "info":Lcom/aliyun/player/source/VidAuth;
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    invoke-interface {v1, v0}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/player/AliPlayer$Status;->ordinal()I

    move-result v1

    return v1

    .line 1252
    :cond_0
    sget-object v1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    invoke-virtual {v1}, Lcom/aliyun/player/AliPlayer$Status;->ordinal()I

    move-result v1

    return v1
.end method

.method protected onVerifyStsCallback(Ljava/lang/Object;)I
    .locals 2
    .param p1, "stsInfo"    # Ljava/lang/Object;

    .line 1240
    move-object v0, p1

    check-cast v0, Lcom/aliyun/player/source/StsInfo;

    .line 1241
    .local v0, "info":Lcom/aliyun/player/source/StsInfo;
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    if-eqz v1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    invoke-interface {v1, v0}, Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;->onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/player/AliPlayer$Status;->ordinal()I

    move-result v1

    return v1

    .line 1244
    :cond_0
    sget-object v1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    invoke-virtual {v1}, Lcom/aliyun/player/AliPlayer$Status;->ordinal()I

    move-result v1

    return v1
.end method

.method protected onVideoRendered(JJ)V
    .locals 7
    .param p1, "timeMs"    # J
    .param p3, "pts"    # J

    .line 968
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "timeMs":J
    .end local p3    # "pts":J
    .local v3, "timeMs":J
    .local v5, "pts":J
    invoke-direct/range {v1 .. v6}, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;JJ)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 976
    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 957
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;II)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 965
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 207
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized prepare()V
    .locals 1

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nPrepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 199
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nRelease()V

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 227
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    monitor-enter p0

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nReload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 352
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected requestKey(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1266
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    if-nez v0, :cond_0

    .line 1267
    const/4 v0, 0x0

    return-object v0

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    invoke-interface {v0, p1, p2}, Lcom/cicada/player/utils/media/DrmCallback;->requestKey(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected requestProvision(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1257
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    if-nez v0, :cond_0

    .line 1258
    const/4 v0, 0x0

    return-object v0

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    invoke-interface {v0, p1, p2}, Lcom/cicada/player/utils/media/DrmCallback;->requestProvision(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized seekTo(J)V
    .locals 2
    .param p1, "position"    # J

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->removeMessages(I)V

    .line 234
    const/16 v0, 0x10

    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSeekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 232
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "position":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized seekTo(JI)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "mode"    # I

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mCurrentThreadHandler:Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->removeMessages(I)V

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSeekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 237
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "position":J
    .end local p3    # "mode":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public selectExtSubtitle(IZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "select"    # Z

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectExtSubtitle(IZ)V

    .line 515
    return-void
.end method

.method public declared-synchronized selectTrack(I)V
    .locals 0
    .param p1, "trackIndex"    # I

    monitor-enter p0

    .line 267
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 266
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "trackIndex":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized selectTrack(IZ)V
    .locals 0
    .param p1, "trackIndex"    # I
    .param p2, "accurate"    # Z

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSelectTrackA(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 270
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "trackIndex":I
    .end local p2    # "accurate":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendCustomEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .line 544
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSendCustomEvent(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public declared-synchronized setAutoPlay(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    monitor-enter p0

    .line 463
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetAutoPlay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 462
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "autoPlay":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V
    .locals 0
    .param p1, "cacheConfig"    # Lcom/aliyun/player/nativeclass/CacheConfig;

    monitor-enter p0

    .line 372
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetCacheConfig(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 371
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "cacheConfig":Lcom/aliyun/player/nativeclass/CacheConfig;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/aliyun/player/nativeclass/PlayerConfig;

    monitor-enter p0

    .line 339
    :try_start_0
    iget-boolean v0, p1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableVideoTunnelRender:Z

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mEnableTunnelMode:Z

    .line 340
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetConfig(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 338
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "config":Lcom/aliyun/player/nativeclass/PlayerConfig;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setDefaultBandWidth(I)V
    .locals 0
    .param p1, "bandWidth"    # I

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetDefaultBandWidth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 521
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "bandWidth":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDisplayView(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 2
    .param p1, "view"    # Lcom/aliyun/player/videoview/AliDisplayView;

    .line 1360
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 1361
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-nez v0, :cond_0

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 1363
    return-void

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v0}, Lcom/aliyun/player/videoview/AliDisplayView;->getDisplayViewHelper()Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 1367
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    .line 1389
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoWidth()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nGetVideoHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 1390
    :cond_1
    iget v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mVideoType:I

    invoke-direct {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateViewCallback(I)Z

    .line 1392
    :cond_2
    return-void
.end method

.method public setDrmCallback(Lcom/cicada/player/utils/media/DrmCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/cicada/player/utils/media/DrmCallback;

    .line 1276
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDrmCallback:Lcom/cicada/player/utils/media/DrmCallback;

    .line 1277
    return-void
.end method

.method public declared-synchronized setFastStart(Z)V
    .locals 0
    .param p1, "open"    # Z

    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFastStart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 299
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "open":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFilterConfig(Lcom/aliyun/player/FilterConfig;)V
    .locals 1
    .param p1, "filterConfig"    # Lcom/aliyun/player/FilterConfig;

    .line 579
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFilterConfig(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setFilterInvalid(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "invalid"    # Z

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFilterInvalid(Ljava/lang/String;Z)V

    .line 590
    return-void
.end method

.method public declared-synchronized setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 1
    .param p1, "type"    # Lcom/aliyun/player/IPlayer$IPResolveType;

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$IPResolveType;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetIPResolveType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 295
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "type":Lcom/aliyun/player/IPlayer$IPResolveType;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setLoop(Z)V
    .locals 0
    .param p1, "looping"    # Z

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetLoop(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "looping":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMaxAccurateSeekDelta(I)V
    .locals 0
    .param p1, "delta"    # I

    .line 243
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMaxAccurateSeekDelta(I)V

    .line 244
    return-void
.end method

.method public declared-synchronized setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 1
    .param p1, "mirrorMode"    # Lcom/aliyun/player/IPlayer$MirrorMode;

    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 421
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v0

    .line 422
    .local v0, "value":I
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMirrorMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 417
    .end local v0    # "value":I
    .end local p1    # "mirrorMode":Lcom/aliyun/player/IPlayer$MirrorMode;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetMute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 303
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "mute":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected setNativeContext(J)V
    .locals 0
    .param p1, "l"    # J

    .line 96
    iput-wide p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mNativeContext:J

    .line 97
    return-void
.end method

.method public setOnChooseTrackIndexListener(Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 825
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnChooseTrackIndexListener:Lcom/aliyun/player/IPlayer$OnChooseTrackIndexListener;

    .line 826
    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 776
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnCompletionListener:Lcom/aliyun/player/IPlayer$OnCompletionListener;

    .line 777
    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 784
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnErrorListener:Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 785
    return-void
.end method

.method public setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 780
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnInfoListener:Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 781
    return-void
.end method

.method public setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 813
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnLoadingStatusListener:Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    .line 814
    return-void
.end method

.method public setOnPreRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    .line 569
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mPreRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnPreRenderFrameCallback;

    .line 570
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnablePreFrameCb(Z)V

    .line 571
    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 768
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnPreparedListener:Lcom/aliyun/player/IPlayer$OnPreparedListener;

    .line 769
    return-void
.end method

.method public setOnRenderFrameCallback(Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    .line 563
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mRenderFrameCallback:Lcom/aliyun/player/IPlayer$OnRenderFrameCallback;

    .line 564
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableFrameCb(Z)V

    .line 565
    return-void
.end method

.method public setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 788
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnRenderingStartListener:Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    .line 789
    return-void
.end method

.method public setOnReportEventListener(Lcom/aliyun/player/IPlayer$OnReportEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 801
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnEventReportListner:Lcom/aliyun/player/IPlayer$OnReportEventListener;

    .line 802
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 817
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeekCompleteListener:Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    .line 818
    return-void
.end method

.method public setOnSeiDataListener(Lcom/aliyun/player/IPlayer$OnSeiDataListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 809
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSeiDataListener:Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 810
    return-void
.end method

.method public setOnSnapShotListener(Lcom/aliyun/player/IPlayer$OnSnapShotListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 829
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSnapShotListener:Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 830
    return-void
.end method

.method public setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 764
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnStateChangedListener:Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    .line 765
    return-void
.end method

.method public setOnSubtitleDisplayListener(Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 760
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnSubtitleDisplayListener:Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 761
    return-void
.end method

.method public setOnTrackInfoGetListener(Lcom/aliyun/player/IPlayer$OnTrackReadyListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 821
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackReadyListener:Lcom/aliyun/player/IPlayer$OnTrackReadyListener;

    .line 822
    return-void
.end method

.method public setOnTrackSelectRetListener(Lcom/aliyun/player/IPlayer$OnTrackChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 805
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnTrackChangedListener:Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    .line 806
    return-void
.end method

.method public setOnVerifyTimeExpireCallback(Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 772
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVerifyTimeExpireCallback:Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;

    .line 773
    return-void
.end method

.method public setOnVideoRenderedListener(Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 796
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoRenderedListener:Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 797
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nEnableVideoRenderedCallback(Z)V

    .line 798
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 792
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mOnVideoSizeChangedListener:Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 793
    return-void
.end method

.method public declared-synchronized setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 443
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 442
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPreferPlayerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 552
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetPreferPlayerName(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public setRenderFrameCallbackConfig(Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;

    .line 574
    iget-boolean v0, p1, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mVideoDataAddr:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p1, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mAudioDataAddr:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetFrameCbConfig(ZZ)V

    .line 575
    return-void
.end method

.method public declared-synchronized setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 1
    .param p1, "rotateMode"    # Lcom/aliyun/player/IPlayer$RotateMode;

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 398
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v0

    .line 399
    .local v0, "rotateValue":I
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetRotateMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 393
    .end local v0    # "rotateValue":I
    .end local p1    # "rotateMode":Lcom/aliyun/player/IPlayer$RotateMode;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 2
    .param p1, "scaleMode"    # Lcom/aliyun/player/IPlayer$ScaleMode;

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;

    invoke-direct {v1, p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/IPlayer$ScaleMode;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/videoview/AliDisplayView;->post(Ljava/lang/Runnable;)Z

    .line 366
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/IPlayer$ScaleMode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetScaleMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 356
    .end local p1    # "scaleMode":Lcom/aliyun/player/IPlayer$ScaleMode;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetSpeed(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 258
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "speed":F
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setStreamDelayTime(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "time"    # I

    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetStreamDelayTime(II)V

    .line 519
    return-void
.end method

.method public declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 180
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 184
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setSurfaceInner(Landroid/view/Surface;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 178
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTraceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "traceId"    # Ljava/lang/String;

    monitor-enter p0

    .line 439
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetTraceID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 438
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "traceId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setVideoBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setBackgroundColor(I)V

    .line 292
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVideoBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 287
    .end local p1    # "color":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVideoTag([I)V
    .locals 0
    .param p1, "tags"    # [I

    .line 548
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVideoTag([I)V

    .line 549
    return-void
.end method

.method public declared-synchronized setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSetVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 254
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .end local p1    # "volume":F
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized snapShot()V
    .locals 2

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    new-instance v1, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V

    invoke-virtual {v0, v1}, Lcom/aliyun/player/videoview/AliDisplayView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 497
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSnapShot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :goto_0
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mAliDisplayView:Lcom/aliyun/player/videoview/AliDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase;->mDirectRender:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->clearScreenIfNeed()V

    .line 217
    .end local p0    # "this":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public surfaceChanged()V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nSurfaceChanged()V

    .line 377
    return-void
.end method

.method public updateFilterConfig(Ljava/lang/String;Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/aliyun/player/FilterConfig$FilterOptions;

    .line 584
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/aliyun/player/FilterConfig$FilterOptions;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateFilterConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

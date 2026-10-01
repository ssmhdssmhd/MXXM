.class public Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
.super Ljava/lang/Object;
.source "NativeExternalPlayer.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

.field private mNativeInstance:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    .line 13
    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnPrepared(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSeekEnd(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnPositionUpdate(JJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnBufferPositionUpdate(JJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JII)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnVideoSizeChanged(JII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JII)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnStatusChanged(JII)V

    return-void
.end method

.method static synthetic access$1500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .line 13
    invoke-direct/range {p0 .. p6}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnVideoRendered(JJJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnErrorCallback(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnEventCallback(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnStreamInfoGet(JLcom/aliyun/player/nativeclass/MediaInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JILcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/aliyun/player/nativeclass/TrackInfo;

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnStreamSwitchSuc(JILcom/aliyun/player/nativeclass/TrackInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoopingStart(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JII[B)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # [B

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnCaptureScreen(JII[B)V

    return-void
.end method

.method static synthetic access$2100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSubtitleExtAdd(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # [B

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSubtitleShow(JJ[B)V

    return-void
.end method

.method static synthetic access$2300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # [B

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSubtitleHide(JJ[B)V

    return-void
.end method

.method static synthetic access$2400(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLjava/lang/String;[B)[B
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeRequestProvision(JLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JLjava/lang/String;[B)[B
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeRequestKey(JLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnCompletion(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnFirstFrameShow(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoadingStart(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoadingProgress(JJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnLoadingEnd(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnAutoPlayStart(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/player/nativeclass/NativeExternalPlayer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->nativeOnSeeking(JZ)V

    return-void
.end method

.method private getCurrentStreamIndex(I)I
    .locals 2
    .param p1, "type"    # I

    .line 272
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 273
    const/4 v0, -0x1

    return v0

    .line 275
    :cond_0
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 276
    .local v0, "streamType":Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    if-nez p1, :cond_1

    .line 277
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    .line 278
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 279
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    .line 280
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 281
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 283
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getCurrentStreamIndex(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)I

    move-result v1

    return v1
.end method

.method private getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2
    .param p1, "key"    # Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 331
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 332
    const-wide/16 v0, 0x0

    return-wide v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPropertyInt(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J
    .locals 2
    .param p1, "key"    # Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 338
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 339
    const-wide/16 v0, 0x0

    return-wide v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPropertyLong(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 324
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPropertyString(Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeComponent(Ljava/lang/String;)I
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 377
    const/4 v0, -0x1

    return v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->invokeComponent(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isSupport(Lcom/aliyun/player/nativeclass/Options;)Z
    .locals 2
    .param p0, "options"    # Lcom/aliyun/player/nativeclass/Options;
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/aliyun/player/ApasaraExternalPlayer;->isSupportExternal(Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;

    move-result-object v0

    .line 33
    .local v0, "dummyPlayer":Lcom/aliyun/player/ApasaraExternalPlayer;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x1

    return v1

    .line 36
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private native nativeOnAutoPlayStart(J)V
.end method

.method private native nativeOnBufferPositionUpdate(JJ)V
.end method

.method private native nativeOnCaptureScreen(JII[B)V
.end method

.method private native nativeOnCompletion(J)V
.end method

.method private native nativeOnErrorCallback(JJLjava/lang/String;)V
.end method

.method private native nativeOnEventCallback(JJLjava/lang/String;)V
.end method

.method private native nativeOnFirstFrameShow(J)V
.end method

.method private native nativeOnLoadingEnd(J)V
.end method

.method private native nativeOnLoadingProgress(JJ)V
.end method

.method private native nativeOnLoadingStart(J)V
.end method

.method private native nativeOnLoopingStart(J)V
.end method

.method private native nativeOnPositionUpdate(JJ)V
.end method

.method private native nativeOnPrepared(J)V
.end method

.method private native nativeOnSeekEnd(JZ)V
.end method

.method private native nativeOnSeeking(JZ)V
.end method

.method private native nativeOnStatusChanged(JII)V
.end method

.method private native nativeOnStreamInfoGet(JLcom/aliyun/player/nativeclass/MediaInfo;)V
.end method

.method private native nativeOnStreamSwitchSuc(JILcom/aliyun/player/nativeclass/TrackInfo;)V
.end method

.method private native nativeOnSubtitleExtAdd(JJLjava/lang/String;)V
.end method

.method private native nativeOnSubtitleHide(JJ[B)V
.end method

.method private native nativeOnSubtitleShow(JJ[B)V
.end method

.method private native nativeOnVideoRendered(JJJ)V
.end method

.method private native nativeOnVideoSizeChanged(JII)V
.end method

.method private native nativeRequestKey(JLjava/lang/String;[B)[B
.end method

.method private native nativeRequestProvision(JLjava/lang/String;[B)[B
.end method

.method private selectExtSubtitle(IZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "bSelect"    # Z

    .line 360
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 361
    const/4 v0, -0x1

    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->selectExtSubtitle(IZ)I

    move-result v0

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    .line 28
    :cond_0
    return-void
.end method

.method private setDecoderType(I)V
    .locals 2
    .param p1, "decoderType"    # I

    .line 311
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_SOFTWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    .line 315
    .local v0, "type":Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
    if-nez p1, :cond_1

    .line 316
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    goto :goto_0

    .line 317
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 318
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    .line 320
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDecoderType(Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;)V

    .line 321
    return-void
.end method

.method private setMirrorMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 257
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 261
    .local v0, "mirrorMode":Lcom/aliyun/player/IPlayer$MirrorMode;
    if-nez p1, :cond_1

    .line 262
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    goto :goto_0

    .line 263
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 264
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    goto :goto_0

    .line 265
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 266
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 268
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 269
    return-void
.end method

.method private setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 346
    const/4 v0, -0x1

    return v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setRotateMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 239
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 243
    .local v0, "rotateMode":Lcom/aliyun/player/IPlayer$RotateMode;
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 244
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    goto :goto_0

    .line 245
    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 246
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    goto :goto_0

    .line 247
    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 248
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    goto :goto_0

    .line 249
    :cond_3
    if-nez p1, :cond_4

    .line 250
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 252
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 253
    return-void
.end method

.method private setScaleMode(I)V
    .locals 2
    .param p1, "scaleMode"    # I

    .line 223
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 227
    .local v0, "targetMode":Lcom/aliyun/player/IPlayer$ScaleMode;
    if-nez p1, :cond_1

    .line 228
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    goto :goto_0

    .line 229
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 230
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    goto :goto_0

    .line 231
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 232
    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 234
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 235
    return-void
.end method


# virtual methods
.method SwitchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/ApasaraExternalPlayer;->switchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    move-result-object v0

    return-object v0
.end method

.method public callRbPvD(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 504
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 505
    return p2

    .line 508
    :cond_0
    const-string v0, "IsMute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->isMute()Z

    move-result v0

    return v0

    .line 510
    :cond_1
    const-string v0, "isLooping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->isLooping()Z

    move-result v0

    return v0

    .line 512
    :cond_2
    const-string v0, "IsAutoPlay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->isAutoPlay()Z

    move-result v0

    return v0

    .line 517
    :cond_3
    return p2
.end method

.method public callRfPvD(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 521
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 522
    return p2

    .line 525
    :cond_0
    const-string v0, "GetVideoRenderFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoRenderFps()F

    move-result v0

    return v0

    .line 527
    :cond_1
    const-string v0, "GetVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVolume()F

    move-result v0

    return v0

    .line 529
    :cond_2
    const-string v0, "getSpeed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getSpeed()F

    move-result v0

    return v0

    .line 531
    :cond_3
    const-string v0, "GetVideoDecodeFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoDecodeFps()F

    move-result v0

    return v0

    .line 535
    :cond_4
    return p2
.end method

.method public callRiPiD(Ljava/lang/String;II)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iv"    # I
    .param p3, "defaultValue"    # I

    .line 566
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 567
    return p3

    .line 570
    :cond_0
    const-string v0, "GetCurrentStreamIndex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->getCurrentStreamIndex(I)I

    move-result v0

    return v0

    .line 572
    :cond_1
    const-string v0, "SwitchStream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    invoke-virtual {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->SwitchStream(I)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->getValue()I

    move-result v0

    return v0

    .line 575
    :cond_2
    return p3
.end method

.method public callRiPvD(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 539
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 540
    return p2

    .line 543
    :cond_0
    const-string v0, "Stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->stop()V

    .line 545
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_1
    const-string v0, "GetScaleMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getScaleMode()Lcom/aliyun/player/IPlayer$ScaleMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/IPlayer$ScaleMode;->getValue()I

    move-result v0

    return v0

    .line 548
    :cond_2
    const-string v0, "GetRotateMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getRotateMode()Lcom/aliyun/player/IPlayer$RotateMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/IPlayer$RotateMode;->getValue()I

    move-result v0

    return v0

    .line 550
    :cond_3
    const-string v0, "GetMirrorMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getMirrorMode()Lcom/aliyun/player/IPlayer$MirrorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/IPlayer$MirrorMode;->getValue()I

    move-result v0

    return v0

    .line 552
    :cond_4
    const-string v0, "GetDecoderType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 553
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getDecoderType()Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->getValue()I

    move-result v0

    return v0

    .line 554
    :cond_5
    const-string v0, "getVideoWidth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 555
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoWidth()I

    move-result v0

    return v0

    .line 556
    :cond_6
    const-string v0, "getVideoHeight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 557
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoHeight()I

    move-result v0

    return v0

    .line 558
    :cond_7
    const-string v0, "GetVideoRotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 559
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getVideoRotation()I

    move-result v0

    return v0

    .line 562
    :cond_8
    return p2
.end method

.method public callRlPvD(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 580
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 581
    return-wide p2

    .line 584
    :cond_0
    const-string v0, "GetDuration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 586
    :cond_1
    const-string v0, "GetPlayingPosition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getPlayingPosition()J

    move-result-wide v0

    return-wide v0

    .line 588
    :cond_2
    const-string v0, "GetBufferPosition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getBufferPosition()J

    move-result-wide v0

    return-wide v0

    .line 590
    :cond_3
    const-string v0, "GetMasterClockPts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getMasterClockPts()J

    move-result-wide v0

    return-wide v0

    .line 594
    :cond_4
    return-wide p2
.end method

.method public callRoPi(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 489
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 490
    return-object v1

    .line 493
    :cond_0
    const-string v0, "GetCurrentStreamInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->getCurrentStreamInfo(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 495
    :cond_1
    const-string v0, "getName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 499
    :cond_2
    return-object v1
.end method

.method public callRvPf(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 408
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    const-string v0, "SetVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setVolume(F)V

    .line 414
    :cond_1
    const-string v0, "setSpeed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setSpeed(F)V

    .line 417
    :cond_2
    return-void
.end method

.method public callRvPi(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 420
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    const-string v0, "SetVolume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->setVolume(F)V

    goto :goto_0

    .line 425
    :cond_1
    const-string v0, "SetScaleMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setScaleMode(I)V

    goto :goto_0

    .line 427
    :cond_2
    const-string v0, "SetRotateMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setRotateMode(I)V

    goto :goto_0

    .line 429
    :cond_3
    const-string v0, "SetMirrorMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setMirrorMode(I)V

    goto :goto_0

    .line 431
    :cond_4
    const-string v0, "SetTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 432
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setTimeout(I)V

    goto :goto_0

    .line 433
    :cond_5
    const-string v0, "SetDropBufferThreshold"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDropBufferThreshold(I)V

    goto :goto_0

    .line 435
    :cond_6
    const-string v0, "SetDecoderType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 436
    invoke-direct {p0, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setDecoderType(I)V

    .line 438
    :cond_7
    :goto_0
    return-void
.end method

.method public callRvPlb(Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lv"    # J
    .param p4, "bv"    # Z

    .line 459
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 460
    return-void

    .line 462
    :cond_0
    const-string v0, "SeekTo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->seekTo(JZ)V

    goto :goto_0

    .line 464
    :cond_1
    const-string v0, "SetVideoBackgroundColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2, p3}, Lcom/aliyun/player/ApasaraExternalPlayer;->setVideoBackgroundColor(J)V

    goto :goto_0

    .line 466
    :cond_2
    const-string v0, "Mute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->mute(Z)V

    goto :goto_0

    .line 468
    :cond_3
    const-string v0, "EnterBackGround"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 469
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->enterBackGround(Z)V

    goto :goto_0

    .line 470
    :cond_4
    const-string v0, "SetLooping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->setLooping(Z)V

    goto :goto_0

    .line 472
    :cond_5
    const-string v0, "SetAutoPlay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 473
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->setAutoPlay(Z)V

    goto :goto_0

    .line 474
    :cond_6
    const-string v0, "selectExtSubtitle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    long-to-int v1, p2

    invoke-virtual {v0, v1, p4}, Lcom/aliyun/player/ApasaraExternalPlayer;->selectExtSubtitle(IZ)I

    .line 477
    :cond_7
    :goto_0
    return-void
.end method

.method public callRvPo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    const-string v0, "SetView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    move-object v1, p2

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/ApasaraExternalPlayer;->setSurface(Landroid/view/Surface;)V

    .line 486
    :cond_1
    return-void
.end method

.method public callRvPs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    const-string v0, "SetDataSource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_1
    const-string v0, "addExtSubtitle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->addExtSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    const-string v0, "AddCustomHttpHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->addCustomHttpHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    const-string v0, "SetUserAgent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setUserAgent(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_4
    const-string v0, "SetRefer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setRefer(Ljava/lang/String;)V

    .line 456
    :cond_5
    :goto_0
    return-void
.end method

.method public callRvPv(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 385
    return-void

    .line 388
    :cond_0
    const-string v0, "Release"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->release()V

    .line 390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    goto :goto_0

    .line 392
    :cond_1
    const-string v0, "Prepare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->prepare()V

    goto :goto_0

    .line 394
    :cond_2
    const-string v0, "Start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->start()V

    goto :goto_0

    .line 396
    :cond_3
    const-string v0, "Pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->pause()V

    goto :goto_0

    .line 398
    :cond_4
    const-string v0, "CaptureScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->captureScreen()V

    goto :goto_0

    .line 400
    :cond_5
    const-string v0, "reLoad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 401
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->reLoad()V

    goto :goto_0

    .line 402
    :cond_6
    const-string v0, "RemoveAllCustomHttpHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 403
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->removeAllCustomHttpHeader()V

    .line 405
    :cond_7
    :goto_0
    return-void
.end method

.method public create(JLcom/aliyun/player/nativeclass/Options;)V
    .locals 3
    .param p1, "nativeAddr"    # J
    .param p3, "options"    # Lcom/aliyun/player/nativeclass/Options;
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 42
    invoke-static {p3}, Lcom/aliyun/player/ApasaraExternalPlayer;->isSupportExternal(Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;

    move-result-object v0

    .line 43
    .local v0, "dummyPlayer":Lcom/aliyun/player/ApasaraExternalPlayer;
    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/aliyun/player/ApasaraExternalPlayer;->create(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)Lcom/aliyun/player/ApasaraExternalPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v1, :cond_1

    .line 48
    return-void

    .line 51
    :cond_1
    iput-wide p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mNativeInstance:J

    .line 53
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$1;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$1;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnPreparedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPreparedListener;)V

    .line 59
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$2;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$2;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnLoopingStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoopingStartListener;)V

    .line 67
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$3;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$3;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnCompletionListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;)V

    .line 74
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$4;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$4;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnFirstFrameRenderListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;)V

    .line 81
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnLoadStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;)V

    .line 97
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$6;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$6;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnAutoPlayStartListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnAutoPlayStartListener;)V

    .line 104
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$7;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnSeekStatusListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;)V

    .line 116
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$8;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$8;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;)V

    .line 123
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$9;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$9;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnBufferPositionUpdateListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnBufferPositionUpdateListener;)V

    .line 130
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$10;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$10;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoSizeChangedListener;)V

    .line 136
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$11;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$11;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnStatusChangedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStatusChangedListener;)V

    .line 142
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$12;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnVideoRenderedListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnVideoRenderedListener;)V

    .line 149
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$13;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnErrorListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;)V

    .line 156
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$14;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$14;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnEventListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnEventListener;)V

    .line 163
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$15;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnStreamInfoGetListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamInfoGetListener;)V

    .line 170
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$16;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnStreamSwitchSucListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnStreamSwitchSucListener;)V

    .line 177
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$17;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$17;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnCaptureScreenListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;)V

    .line 183
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setOnSubtitleListener(Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;)V

    .line 199
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    new-instance v2, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$19;

    invoke-direct {v2, p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$19;-><init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V

    invoke-virtual {v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer;->setDrmCallback(Lcom/aliyun/player/ApasaraExternalPlayer$OnDRMCallback;)V

    .line 210
    return-void
.end method

.method public getCurrentStreamInfo(I)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I

    .line 294
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 299
    .local v0, "streamType":Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    if-nez p1, :cond_1

    .line 300
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    .line 301
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 302
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    goto :goto_0

    .line 303
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 304
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 307
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getCurrentStreamInfo(Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;)Lcom/aliyun/player/nativeclass/TrackInfo;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->mExternPlayer:Lcom/aliyun/player/ApasaraExternalPlayer;

    invoke-virtual {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

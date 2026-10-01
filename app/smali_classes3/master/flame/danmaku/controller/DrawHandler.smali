.class public Lmaster/flame/danmaku/controller/DrawHandler;
.super Landroid/os/Handler;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;,
        Lmaster/flame/danmaku/controller/DrawHandler$Callback;
    }
.end annotation


# static fields
.field private static final CLEAR_DANMAKUS_ON_SCREEN:I = 0xd

.field private static final FORCE_RENDER:I = 0xe

.field private static final HIDE_DANMAKUS:I = 0x9

.field private static final INDEFINITE_TIME:J = 0x989680L

.field private static final MAX_RECORD_SIZE:I = 0x1f4

.field private static final NOTIFY_DISP_SIZE_CHANGED:I = 0xa

.field private static final NOTIFY_RENDERING:I = 0xb

.field private static final PAUSE:I = 0x7

.field public static final PREPARE:I = 0x5

.field private static final QUIT:I = 0x6

.field public static final RESUME:I = 0x3

.field public static final SEEK_POS:I = 0x4

.field private static final SHOW_DANMAKUS:I = 0x8

.field public static final START:I = 0x1

.field public static final UPDATE:I = 0x2

.field private static final UPDATE_WHEN_PAUSED:I = 0xc


# instance fields
.field public drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

.field private mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

.field private mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private mCordonTime:J

.field private mCordonTime2:J

.field private mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

.field private mDanmakusVisible:Z

.field private mDesireSeekingTime:J

.field private mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

.field private mDrawTimes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCallback:Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;

.field private mFrameUpdateRate:J

.field private mIdleSleep:Z

.field private mInSeekingAction:Z

.field private mInSyncAction:Z

.field private mInWaitingState:Z

.field private mLastDeltaTime:J

.field private mNonBlockModeEnable:Z

.field private mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

.field private mReady:Z

.field private mRemainingTime:J

.field private final mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

.field private mThread:Lmaster/flame/danmaku/controller/UpdateThread;

.field private mThresholdTime:J

.field private mTimeBase:J

.field private mUpdateInSeparateThread:Z

.field private pausedPosition:J

.field private quitFlag:Z

.field private timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/IDanmakuViewController;Z)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "view"    # Lmaster/flame/danmaku/controller/IDanmakuViewController;
    .param p3, "danmakuVisibile"    # Z

    .line 147
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 99
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 107
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 111
    new-instance v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 115
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    .line 121
    const-wide/16 v1, 0x1e

    iput-wide v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    .line 123
    const-wide/16 v1, 0x3c

    iput-wide v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    .line 125
    const-wide/16 v1, 0x10

    iput-wide v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    .line 148
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isProblemBoxDevice()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    .line 149
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->bindView(Lmaster/flame/danmaku/controller/IDanmakuViewController;)V

    .line 150
    if-eqz p3, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    .line 155
    :goto_0
    iput-boolean p3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 156
    return-void
.end method

.method static synthetic access$002(Lmaster/flame/danmaku/controller/DrawHandler;J)J
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;
    .param p1, "x1"    # J

    .line 43
    iput-wide p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    return-wide p1
.end method

.method static synthetic access$1000(Lmaster/flame/danmaku/controller/DrawHandler;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Lmaster/flame/danmaku/controller/DrawHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    return p1
.end method

.method static synthetic access$1100(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    return v0
.end method

.method static synthetic access$1200(Lmaster/flame/danmaku/controller/DrawHandler;J)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;
    .param p1, "x1"    # J

    .line 43
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    return-void
.end method

.method static synthetic access$1300(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    return-object v0
.end method

.method static synthetic access$1400(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    return v0
.end method

.method static synthetic access$1500(Lmaster/flame/danmaku/controller/DrawHandler;)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    return-void
.end method

.method static synthetic access$1600(Lmaster/flame/danmaku/controller/DrawHandler;)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->initRenderingConfigs()V

    return-void
.end method

.method static synthetic access$1700(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method static synthetic access$1800(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    return v0
.end method

.method static synthetic access$1900(Lmaster/flame/danmaku/controller/DrawHandler;)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->redrawIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    return v0
.end method

.method static synthetic access$400(Lmaster/flame/danmaku/controller/DrawHandler;)J
    .locals 2
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    return-wide v0
.end method

.method static synthetic access$500(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mNonBlockModeEnable:Z

    return v0
.end method

.method static synthetic access$600(Lmaster/flame/danmaku/controller/DrawHandler;J)J
    .locals 2
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;
    .param p1, "x1"    # J

    .line 43
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/IDanmakuViewController;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    return-object v0
.end method

.method static synthetic access$800(Lmaster/flame/danmaku/controller/DrawHandler;)J
    .locals 2
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    return-wide v0
.end method

.method static synthetic access$900(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/DrawHandler;

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method private bindView(Lmaster/flame/danmaku/controller/IDanmakuViewController;)V
    .locals 0
    .param p1, "view"    # Lmaster/flame/danmaku/controller/IDanmakuViewController;

    .line 159
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    .line 160
    return-void
.end method

.method private createDrawTask(ZLmaster/flame/danmaku/danmaku/model/DanmakuTimer;Landroid/content/Context;IIZLmaster/flame/danmaku/controller/IDrawTask$TaskListener;)Lmaster/flame/danmaku/controller/IDrawTask;
    .locals 5
    .param p1, "useDrwaingCache"    # Z
    .param p2, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isHardwareAccelerated"    # Z
    .param p7, "taskListener"    # Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    .line 621
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .line 622
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p4, p5}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setSize(II)V

    .line 623
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 624
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v4, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v1, v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setDensities(FIF)V

    .line 626
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->resetSlopPixel(F)V

    .line 627
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v1, p6}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setHardwareAccelerated(Z)V

    .line 628
    if-eqz p1, :cond_0

    new-instance v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v1, p2, v2, p7}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;-><init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lmaster/flame/danmaku/controller/DrawTask;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v1, p2, v2, p7}, Lmaster/flame/danmaku/controller/DrawTask;-><init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;)V

    .line 631
    .local v1, "task":Lmaster/flame/danmaku/controller/IDrawTask;
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/controller/IDrawTask;->setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 632
    invoke-interface {v1}, Lmaster/flame/danmaku/controller/IDrawTask;->prepare()V

    .line 633
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 634
    return-object v1
.end method

.method private declared-synchronized getAverageRenderingTime()J
    .locals 7

    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .local v0, "frames":I
    const-wide/16 v1, 0x0

    if-gtz v0, :cond_0

    .line 819
    monitor-exit p0

    return-wide v1

    .line 820
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 821
    .local v3, "first":Ljava/lang/Long;
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 822
    .local v4, "last":Ljava/lang/Long;
    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 826
    .local v1, "dtime":J
    int-to-long v5, v0

    div-long v5, v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v5

    .line 823
    .end local v1    # "dtime":J
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawHandler;
    :cond_2
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 816
    .end local v0    # "frames":I
    .end local v3    # "first":Ljava/lang/Long;
    .end local v4    # "last":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initRenderingConfigs()V
    .locals 8

    .line 555
    const-wide/16 v0, 0x10

    .line 556
    .local v0, "averageFrameConsumingTime":J
    long-to-float v2, v0

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    float-to-long v4, v2

    const-wide/16 v6, 0x21

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    .line 557
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    long-to-float v2, v4

    mul-float v2, v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    .line 558
    const-wide/16 v2, 0xf

    div-long v4, v0, v2

    mul-long v4, v4, v2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    .line 559
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThresholdTime:J

    .line 562
    return-void
.end method

.method private notifyRendering()V
    .locals 2

    .line 761
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-nez v0, :cond_0

    .line 762
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 767
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInSeparateThread:Z

    if-eqz v0, :cond_2

    .line 768
    monitor-enter p0

    .line 769
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 770
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    monitor-enter v0

    .line 772
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 773
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 770
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 775
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 776
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 777
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 779
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    .line 780
    return-void
.end method

.method private prepare(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 565
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->isDanmakuDrawingCacheEnabled()Z

    move-result v2

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    .line 567
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->getViewWidth()I

    move-result v5

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->getViewHeight()I

    move-result v6

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    .line 568
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->isHardwareAccelerated()Z

    move-result v7

    new-instance v8, Lmaster/flame/danmaku/controller/DrawHandler$3;

    invoke-direct {v8, p0, p1}, Lmaster/flame/danmaku/controller/DrawHandler$3;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/Runnable;)V

    .line 566
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lmaster/flame/danmaku/controller/DrawHandler;->createDrawTask(ZLmaster/flame/danmaku/danmaku/model/DanmakuTimer;Landroid/content/Context;IIZLmaster/flame/danmaku/controller/IDrawTask$TaskListener;)Lmaster/flame/danmaku/controller/IDrawTask;

    move-result-object v0

    iput-object v0, v1, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    goto :goto_0

    .line 608
    :cond_0
    move-object v1, p0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 610
    :goto_0
    return-void
.end method

.method private declared-synchronized quitUpdateThread()V
    .locals 3

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    .line 370
    .local v0, "thread":Lmaster/flame/danmaku/controller/UpdateThread;
    const/4 v1, 0x0

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    .line 371
    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :try_start_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 374
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :try_start_2
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/UpdateThread;->quit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    const-wide/16 v1, 0x7d0

    :try_start_3
    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/UpdateThread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    goto :goto_0

    .line 378
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawHandler;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 382
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 368
    .end local v0    # "thread":Lmaster/flame/danmaku/controller/UpdateThread;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method private declared-synchronized recordRenderingTime()V
    .locals 4

    monitor-enter p0

    .line 830
    :try_start_0
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 831
    .local v0, "lastTime":J
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 832
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 833
    .local v2, "frames":I
    const/16 v3, 0x1f4

    if-le v2, v3, :cond_0

    .line 834
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    const/16 v2, 0x1f4

    .line 837
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawHandler;
    :cond_0
    monitor-exit p0

    return-void

    .line 829
    .end local v0    # "lastTime":J
    .end local v2    # "frames":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private redrawIfNeeded()V
    .locals 3

    .line 754
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v0, :cond_0

    .line 755
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 756
    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 758
    :cond_0
    return-void
.end method

.method private final syncTimer(J)J
    .locals 16
    .param p1, "startMS"    # J

    .line 502
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSyncAction:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 505
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSyncAction:Z

    .line 506
    const-wide/16 v4, 0x0

    .line 507
    .local v4, "d":J
    iget-wide v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long v6, p1, v6

    .line 508
    .local v6, "time":J
    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mNonBlockModeEnable:Z

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    if-eqz v1, :cond_7

    .line 510
    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    iget-object v2, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/controller/DrawHandler$Callback;->updateTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 511
    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->lastInterval()J

    move-result-wide v4

    goto/16 :goto_3

    .line 513
    :cond_1
    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v1, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 520
    :cond_2
    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v1, v6, v1

    .line 521
    .local v1, "gapTime":J
    iget-wide v8, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getAverageRenderingTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 522
    .local v8, "averageTime":J
    const-wide/16 v10, 0x7d0

    cmp-long v3, v1, v10

    if-gtz v3, :cond_5

    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v10, v3, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    iget-wide v12, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v3, v10, v12

    if-gtz v3, :cond_5

    iget-wide v10, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_3

    goto :goto_0

    .line 526
    :cond_3
    iget-wide v10, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    div-long v10, v1, v10

    add-long/2addr v10, v8

    .line 527
    .end local v4    # "d":J
    .local v10, "d":J
    iget-wide v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 528
    .end local v10    # "d":J
    .local v3, "d":J
    iget-wide v10, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 529
    iget-wide v10, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    sub-long v10, v3, v10

    .line 530
    .local v10, "a":J
    const-wide/16 v12, 0x3

    cmp-long v5, v10, v12

    if-lez v5, :cond_4

    const-wide/16 v12, 0x8

    cmp-long v5, v10, v12

    if-gez v5, :cond_4

    iget-wide v12, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    iget-wide v14, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    cmp-long v5, v12, v14

    if-ltz v5, :cond_4

    iget-wide v12, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    iget-wide v14, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v5, v12, v14

    if-gtz v5, :cond_4

    .line 531
    iget-wide v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    .line 533
    :cond_4
    sub-long/2addr v1, v3

    .line 534
    iput-wide v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    move-wide v4, v3

    goto :goto_1

    .line 523
    .end local v3    # "d":J
    .end local v10    # "a":J
    .restart local v4    # "d":J
    :cond_5
    :goto_0
    move-wide v3, v1

    .line 524
    .end local v4    # "d":J
    .restart local v3    # "d":J
    const-wide/16 v1, 0x0

    move-wide v4, v3

    .line 536
    .end local v3    # "d":J
    .restart local v4    # "d":J
    :goto_1
    iput-wide v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mRemainingTime:J

    .line 537
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v3, v4, v5}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 538
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    if-eqz v3, :cond_7

    .line 539
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    iget-object v10, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-interface {v3, v10}, Lmaster/flame/danmaku/controller/DrawHandler$Callback;->updateTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    goto :goto_3

    .line 514
    .end local v1    # "gapTime":J
    .end local v8    # "averageTime":J
    :cond_6
    :goto_2
    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v1, v6, v7}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 515
    iput-wide v2, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mRemainingTime:J

    .line 516
    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    if-eqz v1, :cond_7

    .line 517
    iget-object v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    iget-object v2, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/controller/DrawHandler$Callback;->updateTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 544
    :cond_7
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSyncAction:Z

    .line 545
    return-wide v4

    .line 503
    .end local v4    # "d":J
    .end local v6    # "time":J
    :cond_8
    :goto_4
    return-wide v2
.end method

.method private syncTimerIfNeeded()V
    .locals 2

    .line 549
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimer(J)J

    .line 552
    :cond_0
    return-void
.end method

.method private updateInChoreographer()V
    .locals 9

    .line 472
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v0, :cond_0

    .line 473
    return-void

    .line 475
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameCallback:Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 476
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 477
    .local v0, "startMS":J
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimer(J)J

    move-result-wide v2

    .line 478
    .local v2, "d":J
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 479
    invoke-virtual {p0, v6}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 480
    return-void

    .line 482
    :cond_1
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v4}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    move-result-wide v2

    .line 483
    invoke-virtual {p0, v6}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 484
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 485
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v4, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 486
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 488
    :cond_2
    iget-boolean v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-nez v4, :cond_3

    .line 489
    const-wide/32 v4, 0x989680

    invoke-direct {p0, v4, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    .line 490
    return-void

    .line 491
    :cond_3
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v4, v4, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    if-eqz v4, :cond_4

    .line 492
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iget-object v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v6, v6, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v4, v6

    .line 493
    .local v4, "dTime":J
    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 494
    const-wide/16 v6, 0xa

    sub-long v6, v4, v6

    invoke-direct {p0, v6, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    .line 495
    return-void

    .line 499
    .end local v4    # "dTime":J
    :cond_4
    return-void
.end method

.method private updateInCurrentThread()V
    .locals 10

    .line 385
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v0, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 389
    .local v0, "startMS":J
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimer(J)J

    move-result-wide v2

    .line 390
    .local v2, "d":J
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    iget-boolean v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mNonBlockModeEnable:Z

    if-nez v4, :cond_1

    .line 391
    invoke-virtual {p0, v6}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 392
    const-wide/16 v4, 0x3c

    sub-long/2addr v4, v2

    invoke-virtual {p0, v6, v4, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    return-void

    .line 395
    :cond_1
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v4}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    move-result-wide v2

    .line 396
    invoke-virtual {p0, v6}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 397
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    cmp-long v7, v2, v4

    if-lez v7, :cond_2

    .line 398
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v4, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 399
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 401
    :cond_2
    iget-boolean v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-nez v4, :cond_3

    .line 402
    const-wide/32 v4, 0x989680

    invoke-direct {p0, v4, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    .line 403
    return-void

    .line 404
    :cond_3
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v4, v4, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    if-eqz v4, :cond_4

    .line 405
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v4, v7

    .line 406
    .local v4, "dTime":J
    const-wide/16 v7, 0x1f4

    cmp-long v9, v4, v7

    if-lez v9, :cond_4

    .line 407
    const-wide/16 v6, 0xa

    sub-long v6, v4, v6

    invoke-direct {p0, v6, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    .line 408
    return-void

    .line 412
    .end local v4    # "dTime":J
    :cond_4
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    cmp-long v7, v2, v4

    if-gez v7, :cond_5

    .line 413
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    sub-long/2addr v4, v2

    invoke-virtual {p0, v6, v4, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 414
    return-void

    .line 416
    :cond_5
    invoke-virtual {p0, v6}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 417
    return-void
.end method

.method private updateInNewThread()V
    .locals 2

    .line 420
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    if-eqz v0, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    new-instance v0, Lmaster/flame/danmaku/controller/DrawHandler$2;

    const-string v1, "DFM Update"

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler$2;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    .line 459
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/UpdateThread;->start()V

    .line 460
    return-void
.end method

.method private waitRendering(J)V
    .locals 5
    .param p1, "dTime"    # J

    .line 783
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 786
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    .line 788
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInSeparateThread:Z

    const-wide/32 v1, 0x989680

    const/16 v3, 0xb

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    if-nez v0, :cond_1

    .line 790
    return-void

    .line 793
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    cmp-long v4, p1, v1

    if-nez v4, :cond_2

    .line 795
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 797
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 799
    :goto_0
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 800
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "dTime":J
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 801
    .restart local p1    # "dTime":J
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 803
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_2

    .line 805
    :cond_3
    const/4 v0, 0x2

    cmp-long v4, p1, v1

    if-nez v4, :cond_4

    .line 806
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 807
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    goto :goto_2

    .line 809
    :cond_4
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 810
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 811
    invoke-virtual {p0, v3, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 814
    :goto_2
    return-void

    .line 784
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 647
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    .line 649
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 650
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/IDrawTask;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 651
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 653
    :cond_0
    return-void
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .line 887
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 888
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 714
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    return-object v0

    .line 717
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-nez v0, :cond_5

    .line 718
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->danmakuSync:Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;

    .line 719
    .local v0, "danmakuSync":Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;
    if-eqz v0, :cond_5

    .line 721
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;->isSyncPlayingState()Z

    move-result v1

    .line 722
    .local v1, "isSyncPlayingState":Z
    if-nez v1, :cond_1

    iget-boolean v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v2, :cond_1

    .line 723
    goto :goto_1

    .line 725
    :cond_1
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;->getSyncState()I

    move-result v2

    .line 726
    .local v2, "syncState":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 727
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v5, v3, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 728
    .local v5, "fromTime":J
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;->getUptimeMillis()J

    move-result-wide v7

    .line 729
    .local v7, "toTime":J
    sub-long v9, v7, v5

    .line 730
    .local v9, "offset":J
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;->getThresholdTimeMills()J

    move-result-wide v11

    cmp-long v13, v3, v11

    if-lez v13, :cond_4

    .line 731
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v3, :cond_2

    .line 732
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->resume()V

    .line 734
    :cond_2
    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface/range {v4 .. v10}, Lmaster/flame/danmaku/controller/IDrawTask;->requestSync(JJJ)V

    .line 735
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v3, v7, v8}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 736
    iget-wide v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v3, v9

    iput-wide v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 737
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRemainingTime:J

    goto :goto_0

    .line 739
    .end local v5    # "fromTime":J
    .end local v7    # "toTime":J
    .end local v9    # "offset":J
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 740
    if-eqz v1, :cond_5

    iget-boolean v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-nez v3, :cond_5

    .line 741
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->pause()V

    goto :goto_1

    .line 739
    :cond_4
    :goto_0
    nop

    .line 747
    .end local v0    # "danmakuSync":Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;
    .end local v1    # "isSyncPlayingState":Z
    .end local v2    # "syncState":I
    :cond_5
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setExtraData(Ljava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/controller/IDrawTask;->draw(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->set(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V

    .line 749
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->recordRenderingTime()V

    .line 750
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    return-object v0
.end method

.method public enableNonBlockMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 167
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mNonBlockModeEnable:Z

    .line 168
    return-void
.end method

.method public forceRender()V
    .locals 1

    .line 705
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 706
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 707
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 891
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 4

    .line 874
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    if-nez v0, :cond_0

    .line 875
    const-wide/16 v0, 0x0

    return-wide v0

    .line 877
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    if-eqz v0, :cond_1

    .line 878
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDesireSeekingTime:J

    return-wide v0

    .line 880
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 883
    :cond_2
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 881
    :cond_3
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRemainingTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 3

    .line 866
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/controller/IDrawTask;->getVisibleDanmakusOnTime(J)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    return-object v0

    .line 870
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayer()Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .locals 1

    .line 840
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    .line 198
    .local v2, "what":I
    const-wide/16 v3, 0x64

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    move-object v3, v9

    .local v3, "updateFlag":Ljava/lang/Boolean;
    .local v10, "resume":Z
    move-object v4, v9

    .local v4, "start":Ljava/lang/Long;
    move-object v5, v9

    .line 361
    .local v5, "quitDrawTask":Ljava/lang/Boolean;
    .local v9, "startTime":Ljava/lang/Long;
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v6, :cond_16

    .line 362
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v6}, Lmaster/flame/danmaku/controller/IDrawTask;->requestRender()V

    goto/16 :goto_7

    .line 198
    .end local v3    # "updateFlag":Ljava/lang/Boolean;
    .end local v4    # "start":Ljava/lang/Long;
    .end local v5    # "quitDrawTask":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_1
    move-object v3, v9

    .restart local v3    # "updateFlag":Ljava/lang/Boolean;
    .restart local v10    # "resume":Z
    move-object v4, v9

    .restart local v4    # "start":Ljava/lang/Long;
    move-object v5, v9

    .line 356
    .restart local v5    # "quitDrawTask":Ljava/lang/Boolean;
    .restart local v9    # "startTime":Ljava/lang/Long;
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v6, :cond_16

    .line 357
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lmaster/flame/danmaku/controller/IDrawTask;->clearDanmakusOnScreen(J)V

    goto/16 :goto_7

    .line 198
    .end local v3    # "updateFlag":Ljava/lang/Boolean;
    .end local v4    # "start":Ljava/lang/Long;
    .end local v5    # "quitDrawTask":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_2
    move-object v3, v9

    .restart local v3    # "updateFlag":Ljava/lang/Boolean;
    .restart local v10    # "resume":Z
    move-object v4, v9

    .restart local v4    # "start":Ljava/lang/Long;
    move-object v5, v9

    .line 349
    .restart local v5    # "quitDrawTask":Ljava/lang/Boolean;
    .restart local v9    # "startTime":Ljava/lang/Long;
    iget-boolean v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v6, :cond_16

    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    if-eqz v6, :cond_16

    .line 350
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v6}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 351
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v6}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    .line 352
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    goto/16 :goto_7

    .line 198
    .end local v3    # "updateFlag":Ljava/lang/Boolean;
    .end local v4    # "start":Ljava/lang/Long;
    .end local v5    # "quitDrawTask":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_3
    move-object v3, v9

    .restart local v3    # "updateFlag":Ljava/lang/Boolean;
    .restart local v10    # "resume":Z
    move-object v4, v9

    .restart local v4    # "start":Ljava/lang/Long;
    move-object v5, v9

    .line 346
    .restart local v5    # "quitDrawTask":Ljava/lang/Boolean;
    .restart local v9    # "startTime":Ljava/lang/Long;
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 347
    goto/16 :goto_7

    .line 198
    .end local v3    # "updateFlag":Ljava/lang/Boolean;
    .end local v4    # "start":Ljava/lang/Long;
    .end local v5    # "quitDrawTask":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    :pswitch_4
    move-object v3, v9

    .line 288
    .local v3, "start":Ljava/lang/Long;
    .restart local v9    # "startTime":Ljava/lang/Long;
    iget-object v4, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v4, v5}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->notifyDispSizeChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 289
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 290
    .local v4, "updateFlag":Ljava/lang/Boolean;
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 291
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 292
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 293
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v5}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClearRetainer()V

    goto/16 :goto_7

    .line 198
    .end local v3    # "start":Ljava/lang/Long;
    .end local v4    # "updateFlag":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_5
    move-object v3, v9

    .local v3, "updateFlag":Ljava/lang/Boolean;
    .restart local v10    # "resume":Z
    move-object v4, v9

    .line 297
    .local v4, "start":Ljava/lang/Long;
    .restart local v9    # "startTime":Ljava/lang/Long;
    iput-boolean v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 298
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    if-eqz v6, :cond_0

    .line 299
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v6}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->clear()V

    .line 301
    :cond_0
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v6, :cond_1

    .line 302
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v6}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 303
    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v6}, Lmaster/flame/danmaku/controller/IDrawTask;->requestHide()V

    .line 305
    :cond_1
    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    .line 306
    .local v6, "quitDrawTask":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v11, :cond_2

    .line 307
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v11}, Lmaster/flame/danmaku/controller/IDrawTask;->quit()V

    .line 309
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_6

    .line 310
    goto/16 :goto_7

    .line 217
    .end local v3    # "updateFlag":Ljava/lang/Boolean;
    .end local v4    # "start":Ljava/lang/Long;
    .end local v6    # "quitDrawTask":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_6
    iput-boolean v8, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 218
    iget-object v9, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    .line 219
    .local v9, "start":Ljava/lang/Long;
    const/4 v10, 0x0

    .line 220
    .restart local v10    # "resume":Z
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v11, :cond_4

    .line 221
    if-nez v9, :cond_3

    .line 222
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 223
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v11}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v11}, Lmaster/flame/danmaku/controller/IDrawTask;->start()V

    .line 226
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v11, v12, v13}, Lmaster/flame/danmaku/controller/IDrawTask;->seek(J)V

    .line 227
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v11}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 228
    const/4 v10, 0x1

    .line 231
    :cond_4
    :goto_0
    iget-boolean v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v11, :cond_5

    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    if-eqz v11, :cond_5

    .line 232
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v11}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    .line 234
    :cond_5
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 235
    if-nez v10, :cond_11

    .line 236
    goto/16 :goto_7

    .line 198
    .end local v9    # "start":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_7
    move-object v3, v9

    .restart local v3    # "updateFlag":Ljava/lang/Boolean;
    .restart local v10    # "resume":Z
    move-object v4, v9

    .restart local v4    # "start":Ljava/lang/Long;
    move-object v6, v9

    .line 313
    .restart local v6    # "quitDrawTask":Ljava/lang/Boolean;
    .local v9, "startTime":Ljava/lang/Long;
    :cond_6
    invoke-virtual {v0, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 314
    invoke-virtual {v0, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 315
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v5, :cond_7

    .line 316
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v5, v7}, Lmaster/flame/danmaku/controller/IDrawTask;->onPlayStateChanged(I)V

    goto :goto_1

    .line 198
    .end local v3    # "updateFlag":Ljava/lang/Boolean;
    .end local v4    # "start":Ljava/lang/Long;
    .end local v6    # "quitDrawTask":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_8
    move-object v3, v9

    .restart local v3    # "updateFlag":Ljava/lang/Boolean;
    .restart local v10    # "resume":Z
    move-object v4, v9

    .restart local v4    # "start":Ljava/lang/Long;
    move-object v6, v9

    .line 319
    .restart local v6    # "quitDrawTask":Ljava/lang/Boolean;
    .restart local v9    # "startTime":Ljava/lang/Long;
    :cond_7
    :goto_1
    const/4 v5, 0x6

    if-ne v2, v5, :cond_8

    .line 320
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 322
    :cond_8
    iput-boolean v8, v0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 323
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimerIfNeeded()V

    .line 324
    iget-object v7, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iput-wide v7, v0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 325
    iget-boolean v7, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInSeparateThread:Z

    if-eqz v7, :cond_9

    .line 326
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 327
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->quitUpdateThread()V

    .line 329
    :cond_9
    iget-object v7, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameCallback:Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;

    if-eqz v7, :cond_a

    .line 330
    nop

    .line 331
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v7

    iget-object v8, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameCallback:Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;

    invoke-virtual {v7, v8}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 334
    :cond_a
    if-ne v2, v5, :cond_16

    .line 335
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v5, :cond_b

    .line 336
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v5}, Lmaster/flame/danmaku/controller/IDrawTask;->quit()V

    .line 338
    :cond_b
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-eqz v5, :cond_c

    .line 339
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->release()V

    .line 341
    :cond_c
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v5, v7, :cond_16

    .line 342
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    goto/16 :goto_7

    .line 200
    .end local v3    # "updateFlag":Ljava/lang/Boolean;
    .end local v4    # "start":Ljava/lang/Long;
    .end local v6    # "quitDrawTask":Ljava/lang/Boolean;
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    :pswitch_9
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 201
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-eqz v5, :cond_e

    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v5}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->isViewReady()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    .line 204
    :cond_d
    new-instance v3, Lmaster/flame/danmaku/controller/DrawHandler$1;

    invoke-direct {v3, v0}, Lmaster/flame/danmaku/controller/DrawHandler$1;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;)V

    invoke-direct {v0, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->prepare(Ljava/lang/Runnable;)V

    .line 215
    goto/16 :goto_7

    .line 202
    :cond_e
    :goto_2
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v3, v4}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 198
    .restart local v10    # "resume":Z
    :pswitch_a
    move-object v11, v9

    .restart local v9    # "startTime":Ljava/lang/Long;
    .local v11, "start":Ljava/lang/Long;
    goto :goto_4

    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v11    # "start":Ljava/lang/Long;
    :pswitch_b
    move-object v11, v9

    .restart local v9    # "startTime":Ljava/lang/Long;
    .restart local v11    # "start":Ljava/lang/Long;
    goto/16 :goto_6

    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v11    # "start":Ljava/lang/Long;
    :pswitch_c
    move-object v3, v9

    .line 279
    .local v3, "start":Ljava/lang/Long;
    .restart local v9    # "startTime":Ljava/lang/Long;
    iget-object v4, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->updateMethod:B

    if-nez v4, :cond_f

    .line 280
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->updateInChoreographer()V

    goto/16 :goto_7

    .line 281
    :cond_f
    iget-object v4, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->updateMethod:B

    if-ne v4, v8, :cond_10

    .line 282
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->updateInNewThread()V

    goto/16 :goto_7

    .line 283
    :cond_10
    iget-object v4, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->updateMethod:B

    if-ne v4, v7, :cond_16

    .line 284
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->updateInCurrentThread()V

    goto/16 :goto_7

    .line 239
    .end local v3    # "start":Ljava/lang/Long;
    .local v9, "start":Ljava/lang/Long;
    :cond_11
    :pswitch_d
    iget-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 240
    .local v11, "startTime":Ljava/lang/Long;
    if-eqz v11, :cond_12

    .line 241
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    goto :goto_3

    .line 243
    :cond_12
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 246
    :goto_3
    move-object/from16 v16, v11

    move-object v11, v9

    move-object/from16 v9, v16

    .local v9, "startTime":Ljava/lang/Long;
    .local v11, "start":Ljava/lang/Long;
    :goto_4
    const/4 v12, 0x4

    if-ne v2, v12, :cond_14

    .line 247
    iput-boolean v8, v0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 248
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->quitUpdateThread()V

    .line 249
    iget-object v12, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    .line 250
    .local v12, "position":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v15, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v3, v15, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v13, v3

    .line 251
    .local v13, "deltaMs":J
    iget-wide v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v3, v13

    iput-wide v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 252
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-object v15, v9

    .end local v9    # "startTime":Ljava/lang/Long;
    .local v15, "startTime":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 253
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 254
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v3, :cond_13

    .line 255
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v3, v8, v9}, Lmaster/flame/danmaku/controller/IDrawTask;->seek(J)V

    .line 256
    :cond_13
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    goto :goto_5

    .line 246
    .end local v12    # "position":Ljava/lang/Long;
    .end local v13    # "deltaMs":J
    .end local v15    # "startTime":Ljava/lang/Long;
    .restart local v9    # "startTime":Ljava/lang/Long;
    :cond_14
    move-object v15, v9

    .line 259
    .end local v9    # "startTime":Ljava/lang/Long;
    .restart local v15    # "startTime":Ljava/lang/Long;
    :goto_5
    move-object v9, v15

    .end local v15    # "startTime":Ljava/lang/Long;
    .restart local v9    # "startTime":Ljava/lang/Long;
    :goto_6
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 260
    iput-boolean v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 261
    iget-boolean v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    if-eqz v3, :cond_15

    .line 262
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->reset()V

    .line 263
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 264
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    sub-long/2addr v12, v14

    iput-wide v12, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 265
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v12, v0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    invoke-virtual {v3, v12, v13}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 266
    invoke-virtual {v0, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 267
    invoke-virtual {v0, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 268
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v3}, Lmaster/flame/danmaku/controller/IDrawTask;->start()V

    .line 269
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 270
    iput-boolean v6, v0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    .line 271
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v3, :cond_16

    .line 272
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lmaster/flame/danmaku/controller/IDrawTask;->onPlayStateChanged(I)V

    goto :goto_7

    .line 275
    :cond_15
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v5, v3, v4}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    nop

    .line 366
    .end local v9    # "startTime":Ljava/lang/Long;
    .end local v10    # "resume":Z
    .end local v11    # "start":Ljava/lang/Long;
    :cond_16
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideDanmakus(Z)J
    .locals 2
    .param p1, "quitDrawTask"    # Z

    .line 695
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    return-wide v0

    .line 697
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 698
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 699
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 700
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 701
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    return-wide v0
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .line 656
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 657
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0, p1, p2}, Lmaster/flame/danmaku/controller/IDrawTask;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 659
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->redrawIfNeeded()V

    .line 660
    return-void
.end method

.method public isPrepared()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    return v0
.end method

.method public notifyDispSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 844
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    if-nez v0, :cond_0

    .line 845
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 848
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setSize(II)V

    .line 849
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 851
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 680
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 681
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimerIfNeeded()V

    .line 682
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 683
    return-void
.end method

.method public prepare()V
    .locals 3

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    .line 669
    nop

    .line 672
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->updateMethod:B

    if-nez v1, :cond_0

    .line 673
    new-instance v1, Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;Lmaster/flame/danmaku/controller/DrawHandler$1;)V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameCallback:Lmaster/flame/danmaku/controller/DrawHandler$FrameCallback;

    .line 675
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->updateMethod:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInSeparateThread:Z

    .line 676
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 677
    return-void
.end method

.method public quit()V
    .locals 1

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 188
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method

.method public removeAllDanmakus(Z)V
    .locals 1
    .param p1, "isClearDanmakusOnScreen"    # Z

    .line 854
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/IDrawTask;->removeAllDanmakus(Z)V

    .line 857
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .line 860
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDrawTask;->removeAllLiveDanmakus()V

    .line 863
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 663
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 664
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 665
    return-void
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 2
    .param p1, "ms"    # Ljava/lang/Long;

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    .line 639
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDesireSeekingTime:J

    .line 640
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 641
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 642
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 643
    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 644
    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V
    .locals 0
    .param p1, "cb"    # Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 183
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 184
    return-void
.end method

.method public setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 0
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 171
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 172
    return-void
.end method

.method public setIdleSleep(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 163
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    .line 164
    return-void
.end method

.method public setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V
    .locals 1
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 175
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 176
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    .line 177
    .local v0, "timer":Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    if-eqz v0, :cond_0

    .line 178
    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 180
    :cond_0
    return-void
.end method

.method public showDanmakus(Ljava/lang/Long;)V
    .locals 2
    .param p1, "position"    # Ljava/lang/Long;

    .line 686
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v0, :cond_0

    .line 687
    return-void

    .line 688
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 689
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 690
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 691
    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 692
    return-void
.end method

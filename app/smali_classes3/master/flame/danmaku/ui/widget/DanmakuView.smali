.class public Lmaster/flame/danmaku/ui/widget/DanmakuView;
.super Landroid/view/View;
.source "DanmakuView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDanmakuView;
.implements Lmaster/flame/danmaku/controller/IDanmakuViewController;


# static fields
.field private static final MAX_RECORD_SIZE:I = 0x32

.field private static final ONE_SECOND:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "DanmakuView"


# instance fields
.field protected volatile handler:Lmaster/flame/danmaku/controller/DrawHandler;

.field private isSurfaceCreated:Z

.field private mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

.field protected mClearFlag:Z

.field private mDanmakuVisible:Z

.field private mDrawFinished:Z

.field private mDrawMonitor:Ljava/lang/Object;

.field private mDrawTimes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawingThreadType:I

.field private mEnableDanmakuDrwaingCache:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

.field protected mRequestRender:Z

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mResumeTryCount:I

.field private mShowFps:Z

.field private mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

.field private mUiThreadId:J

.field private mXOff:F

.field private mYOff:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 72
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 78
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 80
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 368
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 370
    new-instance v0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    .line 86
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 72
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 78
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 80
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 368
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 370
    new-instance v0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    .line 99
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 72
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 78
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 80
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 368
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 370
    new-instance v0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    .line 104
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->init()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 46
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    return v0
.end method

.method static synthetic access$008(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I
    .locals 2
    .param p0, "x0"    # Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 46
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    return v0
.end method

.method static synthetic access$101(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/ui/widget/DanmakuView;

    .line 46
    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method private fps()F
    .locals 7

    .line 247
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 248
    .local v0, "lastTime":J
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 250
    .local v2, "first":Ljava/lang/Long;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 251
    return v3

    .line 253
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    .line 254
    .local v4, "dtime":F
    iget-object v5, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 255
    .local v5, "frames":I
    const/16 v6, 0x32

    if-le v5, v6, :cond_1

    .line 256
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 258
    :cond_1
    cmpl-float v6, v4, v3

    if-lez v6, :cond_2

    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    div-float/2addr v3, v4

    :cond_2
    return v3
.end method

.method private init()V
    .locals 2

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mUiThreadId:J

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setBackgroundColor(I)V

    .line 92
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setDrawingCacheBackgroundColor(I)V

    .line 93
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lmaster/flame/danmaku/controller/DrawHelper;->useDrawColorToClearCanvas(ZZ)V

    .line 94
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->instance(Lmaster/flame/danmaku/controller/IDanmakuView;)Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    .line 95
    return-void
.end method

.method private lockCanvasAndClear()V
    .locals 1

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    .line 304
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->lockCanvas()V

    .line 305
    return-void
.end method

.method private postInvalidateCompat()V
    .locals 1

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 274
    nop

    .line 275
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidateOnAnimation()V

    .line 279
    return-void
.end method

.method private prepare()V
    .locals 3

    .line 211
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lmaster/flame/danmaku/controller/DrawHandler;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/controller/DrawHandler;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/IDanmakuViewController;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 213
    :cond_0
    return-void
.end method

.method private declared-synchronized stopDraw()V
    .locals 3

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 166
    .local v0, "handler":Lmaster/flame/danmaku/controller/DrawHandler;
    const/4 v1, 0x0

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 167
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->unlockCanvasAndPost()V

    .line 168
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->quit()V

    .line 171
    .end local p0    # "this":Lmaster/flame/danmaku/ui/widget/DanmakuView;
    :cond_1
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 172
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    if-eqz v2, :cond_2

    .line 175
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 179
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :cond_2
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "handler":Lmaster/flame/danmaku/controller/DrawHandler;
    .end local v2    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private unlockCanvasAndPost()V
    .locals 2

    .line 308
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 310
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 108
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 111
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 5

    .line 508
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isViewReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mUiThreadId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 515
    :cond_1
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->lockCanvasAndClear()V

    goto :goto_1

    .line 512
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    .line 513
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidateCompat()V

    .line 517
    :goto_1
    return-void
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .line 550
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->clearDanmakusOnScreen()V

    .line 553
    :cond_0
    return-void
.end method

.method public drawDanmakus()J
    .locals 4

    .line 262
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    if-nez v0, :cond_0

    .line 263
    const-wide/16 v0, 0x0

    return-wide v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const-wide/16 v0, -0x1

    return-wide v0

    .line 266
    :cond_1
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 267
    .local v0, "stime":J
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->lockCanvas()V

    .line 268
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public enableDanmakuDrawingCache(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 445
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 446
    return-void
.end method

.method public forceRender()V
    .locals 1

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 584
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->forceRender()V

    .line 585
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 231
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 531
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v0

    return-wide v0

    .line 534
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .line 136
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized getLooper(I)Landroid/os/Looper;
    .locals 3
    .param p1, "type"    # I

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 190
    .end local p0    # "this":Lmaster/flame/danmaku/ui/widget/DanmakuView;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    .local v0, "priority":I
    goto :goto_0

    .line 197
    .end local v0    # "priority":I
    :pswitch_0
    const/16 v0, 0x13

    .line 198
    .restart local v0    # "priority":I
    goto :goto_0

    .line 194
    .end local v0    # "priority":I
    :pswitch_1
    const/4 v0, -0x8

    .line 195
    .restart local v0    # "priority":I
    goto :goto_0

    .line 192
    .end local v0    # "priority":I
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 204
    .restart local v0    # "priority":I
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DFM Handler Thread #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "threadName":Ljava/lang/String;
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 206
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 207
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 183
    .end local v0    # "priority":I
    .end local v1    # "threadName":Ljava/lang/String;
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;
    .locals 1

    .line 569
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 470
    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    .line 465
    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 460
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXOff()F
    .locals 1

    .line 574
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mXOff:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .line 579
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mYOff:F

    return v0
.end method

.method public hide()V
    .locals 2

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 491
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v1, :cond_0

    .line 492
    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    .line 495
    return-void
.end method

.method public hideAndPauseDrawTask()J
    .locals 2

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 500
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 501
    const-wide/16 v0, 0x0

    return-wide v0

    .line 503
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .line 115
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public isDanmakuDrawingCacheEnabled()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .line 541
    nop

    .line 542
    invoke-super {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    return v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewReady()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    return v0
.end method

.method protected lockCanvas()V
    .locals 4

    .line 282
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidateCompat()V

    .line 286
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 289
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :goto_1
    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v2}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 294
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 292
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    nop

    .line 298
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 316
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    if-nez v0, :cond_0

    .line 317
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 318
    return-void

    .line 320
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {p1}, Lmaster/flame/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 322
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->draw(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0

    .line 326
    .local v0, "rs":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mShowFps:Z

    if-eqz v2, :cond_3

    .line 327
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    if-nez v2, :cond_2

    .line 328
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    .line 329
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 330
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->fps()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    .line 331
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v3, 0x3

    aput-object v6, v7, v3

    .line 329
    const-string v3, "fps %.2f,time:%d s,cache:%d,miss:%d"

    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "fps":Ljava/lang/String;
    invoke-static {p1, v2}, Lmaster/flame/danmaku/controller/DrawHelper;->drawFPS(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 336
    .end local v0    # "rs":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .end local v2    # "fps":Ljava/lang/String;
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 337
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->unlockCanvasAndPost()V

    .line 338
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 342
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 343
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    iget-object v1, p1, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p1, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    sub-int v2, p5, p3

    sub-int v3, v0, p4

    invoke-virtual {v1, v2, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyDispSizeChanged(II)V

    .line 346
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    .line 347
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 430
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 431
    .local v0, "isEventConsumed":Z
    if-nez v0, :cond_0

    .line 432
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 434
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 362
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->pause()V

    .line 366
    :cond_0
    return-void
.end method

.method public prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 217
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->prepare()V

    .line 218
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 219
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 220
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 221
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->prepare()V

    .line 222
    return-void
.end method

.method public release()V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stop()V

    .line 153
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 154
    :cond_0
    return-void
.end method

.method public removeAllDanmakus(Z)V
    .locals 1
    .param p1, "isClearDanmakusOnScreen"    # Z

    .line 122
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllDanmakus(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .line 129
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllLiveDanmakus()V

    .line 132
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 0

    .line 405
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stop()V

    .line 406
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start()V

    .line 407
    return-void
.end method

.method public resume()V
    .locals 2

    .line 388
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 390
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->restart()V

    .line 394
    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 1
    .param p1, "ms"    # Ljava/lang/Long;

    .line 438
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->seekTo(Ljava/lang/Long;)V

    .line 441
    :cond_0
    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V
    .locals 1
    .param p1, "callback"    # Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 144
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 145
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 526
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 527
    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;)V
    .locals 0
    .param p1, "listener"    # Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 557
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 558
    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;FF)V
    .locals 0
    .param p1, "listener"    # Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;
    .param p2, "xOff"    # F
    .param p3, "yOff"    # F

    .line 562
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 563
    iput p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mXOff:F

    .line 564
    iput p3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mYOff:F

    .line 565
    return-void
.end method

.method public show()V
    .locals 1

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->showAndResumeDrawTask(Ljava/lang/Long;)V

    .line 476
    return-void
.end method

.method public showAndResumeDrawTask(Ljava/lang/Long;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/Long;

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    .line 482
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    .line 486
    return-void
.end method

.method public showFPS(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 239
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mShowFps:Z

    .line 240
    return-void
.end method

.method public start()V
    .locals 2

    .line 411
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start(J)V

    .line 412
    return-void
.end method

.method public start(J)V
    .locals 3
    .param p1, "position"    # J

    .line 416
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 417
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->prepare()V

    .line 419
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    goto :goto_0

    .line 421
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 423
    :goto_0
    if-eqz v0, :cond_1

    .line 424
    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 426
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stopDraw()V

    .line 159
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start()V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->resume()V

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->pause()V

    .line 358
    :cond_2
    :goto_0
    return-void
.end method

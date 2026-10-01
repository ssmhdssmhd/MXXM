.class public Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
.super Landroid/view/TextureView;
.source "DanmakuTextureView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDanmakuView;
.implements Lmaster/flame/danmaku/controller/IDanmakuViewController;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final MAX_RECORD_SIZE:I = 0x32

.field private static final ONE_SECOND:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "DanmakuTextureView"


# instance fields
.field private handler:Lmaster/flame/danmaku/controller/DrawHandler;

.field private isSurfaceCreated:Z

.field private mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

.field private mDanmakuVisible:Z

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

.field private mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

.field private mShowFps:Z

.field private mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

.field private mXOff:F

.field private mYOff:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 78
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 84
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->init()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 78
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 101
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->init()V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 78
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 106
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->init()V

    .line 107
    return-void
.end method

.method private fps()F
    .locals 7

    .line 265
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 266
    .local v0, "lastTime":J
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 267
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 268
    .local v2, "first":Ljava/lang/Long;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 269
    return v3

    .line 271
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    .line 272
    .local v4, "dtime":F
    iget-object v5, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 273
    .local v5, "frames":I
    const/16 v6, 0x32

    if-le v5, v6, :cond_1

    .line 274
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 276
    :cond_1
    cmpl-float v6, v4, v3

    if-lez v6, :cond_2

    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

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

    .line 89
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setOpaque(Z)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setWillNotCacheDrawing(Z)V

    .line 92
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setDrawingCacheEnabled(Z)V

    .line 93
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setWillNotDraw(Z)V

    .line 94
    invoke-virtual {p0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 95
    invoke-static {v1, v1}, Lmaster/flame/danmaku/controller/DrawHelper;->useDrawColorToClearCanvas(ZZ)V

    .line 96
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->instance(Lmaster/flame/danmaku/controller/IDanmakuView;)Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    .line 97
    return-void
.end method

.method private prepare()V
    .locals 3

    .line 231
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lmaster/flame/danmaku/controller/DrawHandler;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/controller/DrawHandler;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/IDanmakuViewController;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 233
    :cond_0
    return-void
.end method

.method private declared-synchronized stopDraw()V
    .locals 2

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->quit()V

    .line 189
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 191
    .end local p0    # "this":Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 192
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v0, :cond_1

    .line 195
    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 199
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :cond_1
    monitor-exit p0

    return-void

    .line 186
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 110
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 113
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 472
    :try_start_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isViewReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 473
    monitor-exit p0

    return-void

    .line 475
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 476
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 477
    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 478
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    .end local p0    # "this":Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
    :cond_1
    monitor-exit p0

    return-void

    .line 471
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .line 508
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->clearDanmakusOnScreen()V

    .line 511
    :cond_0
    return-void
.end method

.method public declared-synchronized drawDanmakus()J
    .locals 14

    monitor-enter p0

    .line 281
    :try_start_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 282
    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 283
    :cond_0
    :try_start_1
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 284
    .local v0, "stime":J
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isShown()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 285
    monitor-exit p0

    const-wide/16 v2, -0x1

    return-wide v2

    .line 286
    :cond_1
    const-wide/16 v2, 0x0

    .line 287
    .local v2, "dtime":J
    :try_start_2
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    .line 288
    .local v4, "canvas":Landroid/graphics/Canvas;
    if-eqz v4, :cond_4

    .line 289
    iget-object v5, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v5, :cond_3

    .line 290
    iget-object v5, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v5, v4}, Lmaster/flame/danmaku/controller/DrawHandler;->draw(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v5

    .line 291
    .local v5, "rs":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    iget-boolean v6, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mShowFps:Z

    if-eqz v6, :cond_3

    .line 292
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    if-nez v6, :cond_2

    .line 293
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    .line 294
    .end local p0    # "this":Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
    :cond_2
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 295
    .end local v2    # "dtime":J
    .local v6, "dtime":J
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "fps %.2f,time:%d s,cache:%d,miss:%d"

    .line 296
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->fps()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->getCurrentTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, v5, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    .line 297
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v5, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v8, 0x1

    aput-object v9, v12, v8

    const/4 v8, 0x2

    aput-object v10, v12, v8

    const/4 v8, 0x3

    aput-object v11, v12, v8

    .line 295
    invoke-static {v2, v3, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "fps":Ljava/lang/String;
    invoke-static {v4, v2}, Lmaster/flame/danmaku/controller/DrawHelper;->drawFPS(Landroid/graphics/Canvas;Ljava/lang/String;)V

    move-wide v2, v6

    .line 301
    .end local v5    # "rs":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .end local v6    # "dtime":J
    .local v2, "dtime":J
    :cond_3
    iget-boolean v5, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    if-eqz v5, :cond_4

    .line 302
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 304
    :cond_4
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v5, v0

    .line 305
    .end local v2    # "dtime":J
    .local v5, "dtime":J
    monitor-exit p0

    return-wide v5

    .line 280
    .end local v0    # "stime":J
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "dtime":J
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public enableDanmakuDrawingCache(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 378
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 379
    return-void
.end method

.method public forceRender()V
    .locals 0

    .line 468
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 251
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 495
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v0

    return-wide v0

    .line 498
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .line 138
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized getLooper(I)Landroid/os/Looper;
    .locals 3
    .param p1, "type"    # I

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 210
    .end local p0    # "this":Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    .local v0, "priority":I
    goto :goto_0

    .line 217
    .end local v0    # "priority":I
    :pswitch_0
    const/16 v0, 0x13

    .line 218
    .restart local v0    # "priority":I
    goto :goto_0

    .line 214
    .end local v0    # "priority":I
    :pswitch_1
    const/4 v0, -0x8

    .line 215
    .restart local v0    # "priority":I
    goto :goto_0

    .line 212
    .end local v0    # "priority":I
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 224
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

    .line 225
    .local v1, "threadName":Ljava/lang/String;
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 226
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 227
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 203
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

    .line 452
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 403
    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    .line 398
    invoke-super {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 393
    invoke-super {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXOff()F
    .locals 1

    .line 457
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mXOff:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .line 462
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mYOff:F

    return v0
.end method

.method public hide()V
    .locals 2

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 423
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v1, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    .line 427
    return-void
.end method

.method public hideAndPauseDrawTask()J
    .locals 2

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 432
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 433
    const-wide/16 v0, 0x0

    return-wide v0

    .line 435
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .line 117
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public isDanmakuDrawingCacheEnabled()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    return v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

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

    .line 485
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/TextureView;->isShown()Z

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

    .line 388
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    .line 155
    return-void
.end method

.method public declared-synchronized onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    monitor-enter p0

    .line 159
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 158
    .end local p0    # "this":Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
    .end local p1    # "surface":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 165
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p2, p3}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyDispSizeChanged(II)V

    .line 168
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 173
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 364
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 365
    .local v0, "isEventConsumed":Z
    if-nez v0, :cond_0

    .line 366
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 368
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 321
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->pause()V

    .line 323
    :cond_0
    return-void
.end method

.method public prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 237
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->prepare()V

    .line 238
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 239
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 240
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 241
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->prepare()V

    .line 242
    return-void
.end method

.method public release()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->stop()V

    .line 178
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 179
    :cond_0
    return-void
.end method

.method public removeAllDanmakus(Z)V
    .locals 1
    .param p1, "isClearDanmakusOnScreen"    # Z

    .line 124
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllDanmakus(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .line 131
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllLiveDanmakus()V

    .line 134
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->stop()V

    .line 344
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->start()V

    .line 345
    return-void
.end method

.method public resume()V
    .locals 1

    .line 327
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->resume()V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->restart()V

    .line 332
    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 1
    .param p1, "ms"    # Ljava/lang/Long;

    .line 372
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->seekTo(Ljava/lang/Long;)V

    .line 375
    :cond_0
    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V
    .locals 1
    .param p1, "callback"    # Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 146
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 147
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 150
    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 490
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 491
    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;)V
    .locals 0
    .param p1, "listener"    # Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 440
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 441
    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;FF)V
    .locals 0
    .param p1, "listener"    # Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;
    .param p2, "xOff"    # F
    .param p3, "yOff"    # F

    .line 445
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 446
    iput p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mXOff:F

    .line 447
    iput p3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mYOff:F

    .line 448
    return-void
.end method

.method public show()V
    .locals 1

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->showAndResumeDrawTask(Ljava/lang/Long;)V

    .line 409
    return-void
.end method

.method public showAndResumeDrawTask(Ljava/lang/Long;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/Long;

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 414
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    .line 418
    return-void
.end method

.method public showFPS(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 259
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mShowFps:Z

    .line 260
    return-void
.end method

.method public start()V
    .locals 2

    .line 349
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->start(J)V

    .line 350
    return-void
.end method

.method public start(J)V
    .locals 3
    .param p1, "postion"    # J

    .line 354
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->prepare()V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 360
    return-void
.end method

.method public stop()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->stopDraw()V

    .line 184
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 309
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->start()V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->resume()V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->pause()V

    .line 317
    :cond_2
    :goto_0
    return-void
.end method

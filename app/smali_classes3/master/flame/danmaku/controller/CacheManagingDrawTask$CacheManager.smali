.class public Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/ICacheManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/CacheManagingDrawTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;
    }
.end annotation


# static fields
.field public static final RESULT_FAILED:B = 0x1t

.field public static final RESULT_FAILED_OVERSIZE:B = 0x2t

.field public static final RESULT_SUCCESS:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "CacheManager"


# instance fields
.field mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/objectpool/Pool<",
            "Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;",
            ">;"
        }
    .end annotation
.end field

.field mCachePoolManager:Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

.field mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

.field private mEndFlag:Z

.field private mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

.field private mMaxSize:I

.field private mRealSize:I

.field private mScreenSize:I

.field public mThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;II)V
    .locals 2
    .param p1, "this$0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask;
    .param p2, "maxSize"    # I
    .param p3, "screenSize"    # I

    .line 216
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 202
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePoolManager:Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

    .line 204
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePoolManager:Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

    const/16 v1, 0x320

    invoke-static {v0, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pools;->finitePool(Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;I)Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    .line 210
    const/4 v0, 0x3

    iput v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    .line 218
    iput v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 219
    iput p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    .line 220
    iput p3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    .line 221
    return-void
.end method

.method static synthetic access$1200(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    return v0
.end method

.method static synthetic access$1500(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
    .param p1, "x1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->findReusableCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    return v0
.end method

.method static synthetic access$1800(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    return v0
.end method

.method static synthetic access$1900(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 190
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutAndFilteredCaches(IZ)V

    return-void
.end method

.method static synthetic access$200(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    return v0
.end method

.method static synthetic access$300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAllNotInScreen()V

    return-void
.end method

.method static synthetic access$400(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
    .param p1, "x1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->push(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J
    .locals 2
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
    .param p1, "x1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 190
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutCaches()V

    return-void
.end method

.method static synthetic access$800(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAll()V

    return-void
.end method

.method static synthetic access$900(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearCachePool()V

    return-void
.end method

.method private clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J
    .locals 5
    .param p1, "oldValue"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 353
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 354
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 355
    return-wide v1

    .line 357
    :cond_0
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 358
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->decreaseReference()V

    .line 359
    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 360
    return-wide v1

    .line 362
    :cond_1
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->sizeOf(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v1

    int-to-long v1, v1

    .line 363
    .local v1, "size":J
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->destroy()V

    .line 364
    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 365
    return-wide v1
.end method

.method private clearCachePool()V
    .locals 2

    .line 377
    nop

    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v1, v0

    .local v1, "item":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->destroy()V

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method private clearTimeOutAndFilteredCaches(IZ)V
    .locals 3
    .param p1, "expectedFreeSize"    # I
    .param p2, "forcePush"    # Z

    .line 986
    move v0, p1

    .line 987
    .local v0, "fexpectedFreeSize":I
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    new-instance v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;

    invoke-direct {v2, p0, v0, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$5;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;IZ)V

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 1006
    return-void
.end method

.method private clearTimeOutCaches()V
    .locals 2

    .line 395
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    new-instance v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$3;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$3;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 423
    return-void
.end method

.method private evictAll()V
    .locals 2

    .line 311
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    new-instance v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$1;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$1;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 319
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->clear()V

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 322
    return-void
.end method

.method private evictAllNotInScreen()V
    .locals 2

    .line 325
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    new-instance v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$2;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$2;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 337
    :cond_0
    return-void
.end method

.method private findReusableCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 8
    .param p1, "refDanmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "strictMode"    # Z
    .param p3, "maximumTimes"    # I

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "slopPixel":I
    if-nez p2, :cond_0

    .line 430
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getSlopPixel()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .line 432
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->reusableOffsetPixel:I

    add-int v7, v0, v1

    .line 433
    .local v7, "finalSlopPixel":I
    new-instance v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v4, p3

    .end local p1    # "refDanmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p2    # "strictMode":Z
    .end local p3    # "maximumTimes":I
    .local v4, "maximumTimes":I
    .local v5, "refDanmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v6, "strictMode":Z
    invoke-direct/range {v2 .. v7}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;ILmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)V

    .line 480
    .local v2, "consumer":Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    iget-object p1, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {p1, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 481
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    return-object p1
.end method

.method private push(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "itemSize"    # I
    .param p3, "forcePush"    # Z

    .line 383
    move v0, p2

    .line 384
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 385
    invoke-direct {p0, v0, p3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutAndFilteredCaches(IZ)V

    .line 388
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v1, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 389
    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 391
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 233
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_2

    .line 234
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->forceBuildCacheInSameThread:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->createCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 238
    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    :cond_2
    return-void
.end method

.method public begin()V
    .locals 2

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    .line 255
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DFM Cache-Building Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    .line 257
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 261
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->begin()V

    .line 262
    return-void
.end method

.method public end()V
    .locals 2

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    .line 266
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$000(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$000(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->pause()V

    .line 272
    iput-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 274
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 276
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 281
    iput-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    .line 283
    :cond_1
    return-void

    .line 268
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 6
    .param p1, "evicted"    # Z
    .param p2, "oldValue"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "newValue"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 340
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDrawingCache()Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-result-object v0

    .line 341
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    if-eqz v0, :cond_2

    .line 342
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J

    move-result-wide v1

    .line 343
    .local v1, "releasedSize":J
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v3

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getCacheStuffer()Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 346
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    return-void

    .line 347
    :cond_1
    iget v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    int-to-long v3, v3

    sub-long/2addr v3, v1

    long-to-int v4, v3

    iput v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 348
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    move-object v4, v0

    check-cast v4, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    invoke-interface {v3, v4}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 350
    .end local v1    # "releasedSize":J
    :cond_2
    return-void
.end method

.method public getFirstCacheTime()J
    .locals 3

    .line 1009
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1010
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 1011
    .local v0, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-nez v0, :cond_0

    .line 1012
    return-wide v1

    .line 1013
    :cond_0
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v1

    return-wide v1

    .line 1015
    .end local v0    # "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_1
    return-wide v1
.end method

.method public getPoolPercent()F
    .locals 2

    .line 300
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    return v0

    .line 303
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .line 245
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 247
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 249
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    .line 251
    :cond_0
    return-void
.end method

.method public isPoolFull()Z
    .locals 2

    .line 307
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/lit16 v0, v0, 0x1400

    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPlayStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 294
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->onPlayStateChanged(Z)V

    .line 297
    :cond_1
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1052
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 1053
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->post(Ljava/lang/Runnable;)Z

    .line 1056
    return-void
.end method

.method public requestBuild(J)V
    .locals 1
    .param p1, "correctionTime"    # J

    .line 1019
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestBuildCacheAndDraw(J)V

    .line 1022
    :cond_0
    return-void
.end method

.method public requestClearAll()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 1026
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 1029
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 1030
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 1031
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 1032
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 1033
    return-void
.end method

.method public requestClearTimeout()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 1048
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 1049
    return-void
.end method

.method public requestClearUnused()V
    .locals 2

    .line 1036
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 1037
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 1040
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 1041
    return-void
.end method

.method public resume()V
    .locals 1

    .line 286
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->resume()V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->begin()V

    .line 291
    :goto_0
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "mills"    # J

    .line 224
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 227
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

.method protected sizeOf(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 1
    .param p1, "value"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 369
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->size()I

    move-result v0

    return v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

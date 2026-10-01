.class public Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;
.super Landroid/os/Handler;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheHandler"
.end annotation


# static fields
.field public static final ADD_DANMAKU:I = 0x2

.field public static final BUILD_CACHES:I = 0x3

.field public static final CLEAR_ALL_CACHES:I = 0x7

.field public static final CLEAR_OUTSIDE_CACHES:I = 0x8

.field public static final CLEAR_OUTSIDE_CACHES_AND_RESET:I = 0x9

.field public static final CLEAR_TIMEOUT_CACHES:I = 0x4

.field public static final DISABLE_CANCEL_FLAG:I = 0x12

.field public static final DISPATCH_ACTIONS:I = 0x10

.field private static final PREPARE:I = 0x1

.field public static final QUIT:I = 0x6

.field public static final REBUILD_CACHE:I = 0x11

.field public static final SEEK:I = 0x5


# instance fields
.field private mCancelFlag:Z

.field private mIsPlayerPause:Z

.field private mPause:Z

.field private mSeekedFlag:Z

.field final synthetic this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 518
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 519
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 520
    return-void
.end method

.method static synthetic access$1000(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 484
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    return v0
.end method

.method static synthetic access$1100(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 484
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    return v0
.end method

.method static synthetic access$1300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 484
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mIsPlayerPause:Z

    return v0
.end method

.method static synthetic access$1400(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;
    .param p1, "x1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "x2"    # Z

    .line 484
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->buildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B

    move-result v0

    return v0
.end method

.method private final addDanmakuAndBuildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 6
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 938
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v0

    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    return-void

    .line 944
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDrawingCache()Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-result-object v0

    .line 945
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 946
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->buildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B

    .line 948
    :cond_3
    return-void

    .line 939
    .end local v0    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    :cond_4
    :goto_0
    return-void
.end method

.method private buildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B
    .locals 7
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "forceInsert"    # Z

    .line 871
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 875
    :cond_0
    const/4 v0, 0x0

    .line 878
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v3, v3, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->maxTimesOfStrictReusableFinds:I

    invoke-static {v2, p1, v1, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1500(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 879
    .local v2, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v2, :cond_1

    .line 880
    iget-object v3, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    check-cast v3, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v0, v3

    .line 882
    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 883
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->increaseReference()V

    .line 884
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 886
    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1600(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v4

    invoke-static {v4, p1, v3, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$400(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    .line 887
    return v3

    .line 891
    :cond_2
    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->maxTimesOfReusableFinds:I

    invoke-static {v4, p1, v3, v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1500(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v4

    .line 892
    .end local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v4, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v4, :cond_3

    .line 893
    iget-object v2, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v0, v2

    .line 895
    :cond_3
    if-eqz v0, :cond_4

    .line 896
    const/4 v2, 0x0

    iput-object v2, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 898
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    invoke-static {p1, v2, v0, v5}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;I)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v2

    move-object v0, v2

    .line 899
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 900
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1600(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v2

    invoke-static {v2, p1, v3, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$400(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    .line 901
    return v3

    .line 905
    :cond_4
    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-int v2, v2

    iget v5, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    float-to-int v5, v5

    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v6, v6, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    div-int/lit8 v6, v6, 0x8

    invoke-static {v2, v5, v6}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->getCacheSize(III)I

    move-result v2

    .line 906
    .local v2, "cacheSize":I
    mul-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$100(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)I

    move-result v6

    if-le v5, v6, :cond_5

    .line 908
    return v1

    .line 910
    :cond_5
    if-nez p2, :cond_6

    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1800(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v6

    if-le v5, v6, :cond_6

    .line 912
    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1600(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1900(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;IZ)V

    .line 913
    return v1

    .line 916
    :cond_6
    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v5}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    move-result-object v5

    check-cast v5, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v0, v5

    .line 917
    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v6, v6, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    invoke-static {p1, v5, v0, v6}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;I)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v5

    move-object v0, v5

    .line 918
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 919
    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1600(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v5

    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v6, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->sizeOf(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v6

    invoke-static {v5, p1, v6, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$400(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    move-result v5

    .line 920
    .local v5, "pushed":Z
    if-nez v5, :cond_7

    .line 921
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_7
    if-eqz v5, :cond_8

    const/4 v1, 0x0

    :cond_8
    return v1

    .line 930
    .end local v2    # "cacheSize":I
    .end local v4    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v5    # "pushed":Z
    :catch_0
    move-exception v2

    .line 932
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V

    .line 933
    return v1

    .line 926
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 928
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V

    .line 929
    return v1
.end method

.method private dispatchAction()J
    .locals 14

    .line 630
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v2, v4

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_1

    .line 631
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->periodOfRecycle:J

    const-wide/16 v2, -0x1

    cmp-long v7, v0, v2

    if-eqz v7, :cond_0

    .line 632
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 635
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 636
    return-wide v5

    .line 638
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->getPoolPercent()F

    move-result v0

    .line 639
    .local v0, "level":F
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 641
    .local v1, "firstCache":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v2

    iget-object v7, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v7, v7, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v7, v7, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v2, v7

    goto :goto_0

    :cond_2
    move-wide v2, v5

    .line 642
    .local v2, "gapTime":J
    :goto_0
    iget-object v7, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v7, v7, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v7, v7, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v9, 0x2

    mul-long v7, v7, v9

    .line 643
    .local v7, "doubleScreenDuration":J
    const v9, 0x3f19999a    # 0.6f

    cmpg-float v9, v0, v9

    if-gez v9, :cond_3

    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v9, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v9, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    cmp-long v11, v2, v9

    if-lez v11, :cond_3

    .line 644
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v9

    iget-object v10, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v9, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 645
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 646
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 647
    return-wide v5

    .line 648
    :cond_3
    const v9, 0x3ecccccd    # 0.4f

    cmpl-float v9, v0, v9

    if-lez v9, :cond_4

    neg-long v9, v7

    cmp-long v11, v2, v9

    if-gez v11, :cond_4

    .line 650
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 651
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 652
    return-wide v5

    .line 655
    :cond_4
    const v9, 0x3f666666    # 0.9f

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_5

    .line 656
    return-wide v5

    .line 659
    :cond_5
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v9

    iget-wide v9, v9, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v11, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v11, v11, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v11, v11, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v11, v11, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v9, v11

    .line 660
    .local v9, "deltaTime":J
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v11, v11, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v11, v11, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v11, v11, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v11, v11, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    neg-long v11, v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_6

    .line 661
    iget-object v11, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v11, v11, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v11}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v11

    iget-object v12, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v12, v12, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v12, v12, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v12, v12, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v11, v12, v13}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 662
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 663
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 664
    return-wide v5

    .line 665
    :cond_6
    cmp-long v11, v9, v7

    if-lez v11, :cond_7

    .line 666
    return-wide v5

    .line 669
    :cond_7
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 670
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 671
    return-wide v5
.end method

.method private preMeasure()V
    .locals 8

    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 691
    .local v1, "begin":J
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    add-long/2addr v3, v1

    .line 692
    .local v3, "end":J
    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v6, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long v6, v1, v6

    invoke-interface {v5, v6, v7, v3, v4}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 695
    .end local v1    # "begin":J
    .end local v3    # "end":J
    goto :goto_0

    .line 693
    :catch_0
    move-exception v1

    .line 696
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    new-instance v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$1;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$1;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 720
    return-void

    .line 697
    :cond_1
    :goto_1
    return-void
.end method

.method private prepareCaches(Z)J
    .locals 32
    .param p1, "repositioned"    # Z

    .line 723
    move-object/from16 v1, p0

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->preMeasure()V

    .line 724
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-wide v2, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    const-wide/16 v4, 0x1e

    sub-long/2addr v2, v4

    .line 725
    .local v2, "curr":J
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1200(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v0

    int-to-long v8, v0

    mul-long v6, v6, v8

    add-long v11, v2, v6

    .line 726
    .local v11, "end":J
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    const-wide/16 v8, 0x0

    cmp-long v0, v11, v6

    if-gez v0, :cond_0

    .line 727
    return-wide v8

    .line 729
    :cond_0
    move-wide v6, v8

    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 730
    .local v9, "startTime":J
    const/4 v0, 0x0

    .line 731
    .local v0, "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    const/4 v8, 0x0

    .line 732
    .local v8, "tryCount":I
    const/4 v13, 0x0

    move v14, v13

    move v13, v8

    move-object v8, v0

    .line 735
    .end local v0    # "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .local v8, "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .local v13, "tryCount":I
    .local v14, "hasException":Z
    :goto_0
    const-wide/16 v15, 0xa

    :try_start_0
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, v2, v3, v11, v12}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v8    # "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .restart local v0    # "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    move/from16 v17, v14

    move-object v14, v0

    goto :goto_1

    .line 736
    .end local v0    # "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .restart local v8    # "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    .line 738
    invoke-static/range {v15 .. v16}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->sleep(J)V

    move/from16 v17, v14

    move-object v14, v8

    .line 740
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .local v14, "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .local v17, "hasException":Z
    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x3

    if-ge v13, v0, :cond_2

    if-nez v14, :cond_2

    if-nez v17, :cond_1

    goto :goto_2

    :cond_1
    move-object v8, v14

    move/from16 v14, v17

    goto :goto_0

    .line 741
    :cond_2
    :goto_2
    if-nez v14, :cond_3

    .line 742
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 743
    return-wide v6

    .line 745
    :cond_3
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v18

    .line 746
    .local v18, "first":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    move-wide v5, v2

    move-wide/from16 v7, v28

    move-wide/from16 v3, v30

    .end local v2    # "curr":J
    .local v5, "curr":J
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 747
    .local v2, "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v18, :cond_8

    if-nez v2, :cond_4

    move-object/from16 v23, v2

    move-wide/from16 v21, v3

    goto/16 :goto_6

    .line 751
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v19

    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v19, v19, v3

    .line 752
    .local v19, "deltaTime":J
    cmp-long v0, v19, v21

    if-gez v0, :cond_5

    move-wide v3, v7

    goto :goto_3

    :cond_5
    mul-long v15, v15, v19

    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    div-long/2addr v15, v3

    add-long v3, v15, v7

    .line 753
    .local v3, "sleepTime":J
    :goto_3
    const-wide/16 v7, 0x64

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 754
    if-eqz p1, :cond_6

    .line 755
    const-wide/16 v3, 0x0

    move-wide v15, v3

    goto :goto_4

    .line 754
    :cond_6
    move-wide v15, v3

    .line 757
    .end local v3    # "sleepTime":J
    .local v15, "sleepTime":J
    :goto_4
    move-wide v7, v15

    .line 759
    .local v7, "finalSleepTime":J
    const/16 v21, 0x0

    .line 760
    .local v21, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const-wide/16 v22, 0x0

    .line 761
    .local v22, "consumingTime":J
    const/16 v24, 0x0

    .line 762
    .local v24, "orderInScreen":I
    const/16 v25, 0x0

    .line 763
    .local v25, "currScreenIndex":I
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->size()I

    move-result v4

    .line 766
    .local v4, "sizeInScreen":I
    new-instance v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;

    move/from16 v3, p1

    invoke-direct/range {v0 .. v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler$2;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZIJJJ)V

    invoke-interface {v14, v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 830
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v9

    .line 831
    .end local v22    # "consumingTime":J
    .local v26, "consumingTime":J
    if-eqz v21, :cond_7

    .line 832
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    move-object/from16 v23, v2

    .end local v2    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v23, "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual/range {v21 .. v21}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    goto :goto_5

    .line 835
    .end local v23    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v2    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_7
    move-object/from16 v23, v2

    .end local v2    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v23    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 837
    :goto_5
    return-wide v26

    .line 747
    .end local v4    # "sizeInScreen":I
    .end local v7    # "finalSleepTime":J
    .end local v15    # "sleepTime":J
    .end local v19    # "deltaTime":J
    .end local v21    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v23    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v24    # "orderInScreen":I
    .end local v25    # "currScreenIndex":I
    .end local v26    # "consumingTime":J
    .restart local v2    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_8
    move-object/from16 v23, v2

    move-wide/from16 v21, v3

    .line 748
    .end local v2    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v23    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_6
    iget-object v0, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 749
    return-wide v21
.end method

.method private releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "cache"    # Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .line 675
    if-nez p2, :cond_0

    .line 676
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-object p2, v0

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .line 678
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 679
    if-nez p2, :cond_1

    .line 680
    return-void

    .line 682
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->destroy()V

    .line 683
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v0, p2}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 684
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 3

    .line 951
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 952
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 953
    return-void
.end method

.method public createCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 6
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 842
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 845
    :cond_0
    const/4 v0, 0x0

    .line 847
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    move-result-object v4

    check-cast v4, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v0, v4

    .line 848
    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    invoke-static {p1, v4, v0, v5}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;I)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v4

    move-object v0, v4

    .line 849
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    nop

    .line 865
    return v1

    .line 857
    :catch_0
    move-exception v1

    .line 859
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 860
    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v4, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 862
    :cond_1
    iput-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 863
    return v2

    .line 850
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    if-eqz v0, :cond_2

    .line 853
    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v4, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 855
    :cond_2
    iput-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 856
    return v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    .line 529
    .local v2, "what":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move/from16 v18, v2

    .end local v2    # "what":I
    .local v18, "what":I
    goto/16 :goto_7

    .end local v18    # "what":I
    .restart local v2    # "what":I
    :pswitch_1
    move-object v3, v6

    .local v3, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object v5, v6

    .line 624
    .local v5, "seekMills":Ljava/lang/Long;
    .local v6, "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v7, "delayed":J
    .local v9, "repositioned":Z
    iput-boolean v4, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    move/from16 v18, v2

    goto/16 :goto_7

    .line 560
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v5    # "seekMills":Ljava/lang/Long;
    .local v6, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :pswitch_2
    iget-object v10, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 561
    .local v10, "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v10, :cond_4

    .line 562
    invoke-virtual {v10}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDrawingCache()Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-result-object v11

    .line 563
    .local v11, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    iget v12, v10, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/2addr v12, v5

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 564
    .local v12, "requestRemeasure":Z
    :goto_0
    if-nez v12, :cond_1

    if-eqz v11, :cond_1

    invoke-interface {v11}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v11}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v13

    if-nez v13, :cond_1

    .line 565
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v13, v10, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    check-cast v13, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    iget-object v14, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v14, v14, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v14, v14, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v14, v14, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iget v14, v14, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->bitsPerPixelOfCache:I

    invoke-static {v10, v3, v13, v14}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;I)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v3

    .line 566
    .end local v11    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .local v3, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    iput-object v3, v10, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 567
    iget-object v11, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v11, v10, v4, v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$400(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    .line 568
    return-void

    .line 570
    .end local v3    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .restart local v11    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    :cond_1
    iget-boolean v4, v10, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v4, :cond_2

    .line 571
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3, v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$500(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J

    .line 572
    invoke-virtual {v0, v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->createCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto :goto_1

    .line 574
    :cond_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 575
    invoke-interface {v11}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->destroy()V

    .line 577
    :cond_3
    iget-object v4, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v4, v5, v10, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 578
    invoke-direct {v0, v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->addDanmakuAndBuildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 580
    .end local v11    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .end local v12    # "requestRemeasure":Z
    :goto_1
    move/from16 v18, v2

    goto/16 :goto_7

    .line 561
    :cond_4
    move/from16 v18, v2

    goto/16 :goto_7

    .line 529
    .end local v6    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    .end local v10    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :pswitch_3
    move/from16 v18, v2

    goto/16 :goto_6

    :pswitch_4
    move-object v3, v6

    .local v3, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object v4, v6

    .line 619
    .local v4, "seekMills":Ljava/lang/Long;
    .local v6, "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v7    # "delayed":J
    .restart local v9    # "repositioned":Z
    iget-object v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 620
    iget-object v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v5

    iget-object v10, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v5, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 621
    iget-object v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-virtual {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->requestClear()V

    .line 622
    move/from16 v18, v2

    goto/16 :goto_7

    .line 529
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v4    # "seekMills":Ljava/lang/Long;
    .end local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    :pswitch_5
    move-object v3, v6

    .restart local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object v4, v6

    .line 615
    .restart local v4    # "seekMills":Ljava/lang/Long;
    .restart local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v7    # "delayed":J
    .restart local v9    # "repositioned":Z
    iget-object v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 616
    iget-object v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v5

    iget-object v10, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v5, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 617
    move/from16 v18, v2

    goto/16 :goto_7

    .line 529
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v4    # "seekMills":Ljava/lang/Long;
    .end local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    :pswitch_6
    move-object v3, v6

    .restart local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object v4, v6

    .line 610
    .restart local v4    # "seekMills":Ljava/lang/Long;
    .restart local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v7    # "delayed":J
    .restart local v9    # "repositioned":Z
    iget-object v10, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$800(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 611
    iget-object v10, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v10

    iget-object v11, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v11, v11, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v11, v11, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v11, v11, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v13, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v13, v13, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v13, v13, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v13, v13, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v13, v13, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 612
    iput-boolean v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 613
    move/from16 v18, v2

    goto/16 :goto_7

    .line 529
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v4    # "seekMills":Ljava/lang/Long;
    .end local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    :pswitch_7
    move-object v4, v6

    .local v4, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    move-object v10, v6

    .line 603
    .restart local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v7    # "delayed":J
    .restart local v9    # "repositioned":Z
    .local v10, "seekMills":Ljava/lang/Long;
    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 604
    iput-boolean v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 605
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$800(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 606
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$900(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 607
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 608
    move/from16 v18, v2

    goto/16 :goto_7

    .line 529
    .end local v4    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    .end local v10    # "seekMills":Ljava/lang/Long;
    :pswitch_8
    move-object v3, v6

    .line 586
    .restart local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v7    # "delayed":J
    .restart local v9    # "repositioned":Z
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 587
    .local v4, "seekMills":Ljava/lang/Long;
    if-eqz v4, :cond_7

    .line 588
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 589
    .local v10, "seekCacheTime":J
    iget-object v12, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v12, v12, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v12}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v12

    iget-wide v12, v12, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 590
    .local v12, "oldCacheTime":J
    iget-object v14, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v14, v14, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v14}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 591
    iput-boolean v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 592
    iget-object v14, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v14}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->getFirstCacheTime()J

    move-result-wide v14

    .line 593
    .local v14, "firstCacheTime":J
    cmp-long v16, v10, v12

    if-gtz v16, :cond_6

    sub-long v16, v14, v10

    iget-object v5, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "what":I
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v18    # "what":I
    .local v19, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-wide v2, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    cmp-long v5, v16, v2

    if-lez v5, :cond_5

    goto :goto_2

    .line 596
    :cond_5
    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$600(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    goto :goto_3

    .line 593
    .end local v18    # "what":I
    .end local v19    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v2    # "what":I
    .restart local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_6
    move/from16 v18, v2

    move-object/from16 v19, v3

    .line 594
    .end local v2    # "what":I
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v18    # "what":I
    .restart local v19    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_2
    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 598
    :goto_3
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->prepareCaches(Z)J

    .line 599
    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->resume()V

    .line 600
    .end local v10    # "seekCacheTime":J
    .end local v12    # "oldCacheTime":J
    .end local v14    # "firstCacheTime":J
    goto/16 :goto_7

    .line 587
    .end local v18    # "what":I
    .end local v19    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v2    # "what":I
    .restart local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_7
    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "what":I
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v18    # "what":I
    .restart local v19    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    goto/16 :goto_7

    .line 529
    .end local v4    # "seekMills":Ljava/lang/Long;
    .end local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    .end local v18    # "what":I
    .end local v19    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v2    # "what":I
    :pswitch_9
    move/from16 v18, v2

    .end local v2    # "what":I
    .restart local v18    # "what":I
    move-object v2, v6

    .line 583
    .local v2, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v7    # "delayed":J
    .restart local v9    # "repositioned":Z
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$600(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 584
    goto/16 :goto_7

    .line 529
    .end local v6    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    .end local v18    # "what":I
    .local v2, "what":I
    :pswitch_a
    move/from16 v18, v2

    .line 544
    .end local v2    # "what":I
    .restart local v7    # "delayed":J
    .restart local v18    # "what":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 545
    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-boolean v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    if-eqz v2, :cond_9

    :cond_8
    iget-boolean v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    .line 546
    .local v2, "repositioned":Z
    :goto_4
    invoke-direct {v0, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->prepareCaches(Z)J

    .line 547
    if-eqz v2, :cond_b

    .line 548
    iput-boolean v4, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 549
    :cond_b
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-boolean v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    if-nez v3, :cond_e

    .line 550
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v3}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->ready()V

    .line 551
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    goto :goto_7

    .line 529
    .end local v7    # "delayed":J
    .end local v18    # "what":I
    .local v2, "what":I
    :pswitch_b
    move/from16 v18, v2

    .line 556
    .end local v2    # "what":I
    .restart local v7    # "delayed":J
    .restart local v9    # "repositioned":Z
    .restart local v18    # "what":I
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 557
    .local v2, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-direct {v0, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->addDanmakuAndBuildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 558
    goto :goto_7

    .line 531
    .end local v7    # "delayed":J
    .end local v9    # "repositioned":Z
    .end local v18    # "what":I
    .local v2, "what":I
    :pswitch_c
    move/from16 v18, v2

    .end local v2    # "what":I
    .restart local v18    # "what":I
    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$300(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 532
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    const/16 v3, 0x12c

    if-ge v2, v3, :cond_c

    .line 533
    iget-object v3, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    new-instance v4, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    invoke-direct {v4}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;-><init>()V

    invoke-interface {v3, v4}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 537
    .end local v2    # "i":I
    :cond_c
    :goto_6
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->dispatchAction()J

    move-result-wide v2

    .line 538
    .local v2, "delayed":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_d

    .line 539
    iget-object v4, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v6, 0x2

    div-long v2, v4, v6

    .line 541
    :cond_d
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 542
    nop

    .line 627
    .end local v2    # "delayed":J
    :cond_e
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isPause()Z
    .locals 1

    .line 969
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    return v0
.end method

.method public onPlayStateChanged(Z)V
    .locals 1
    .param p1, "isPlaying"    # Z

    .line 981
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mIsPlayerPause:Z

    .line 982
    return-void
.end method

.method public pause()V
    .locals 1

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 957
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 958
    return-void
.end method

.method public requestBuildCacheAndDraw(J)V
    .locals 4
    .param p1, "correctionTime"    # J

    .line 973
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 974
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 975
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 976
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$700(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 977
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 978
    return-void
.end method

.method public requestCancelCaching()V
    .locals 1

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    .line 524
    return-void
.end method

.method public resume()V
    .locals 3

    .line 961
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 963
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 964
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 965
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 966
    return-void
.end method

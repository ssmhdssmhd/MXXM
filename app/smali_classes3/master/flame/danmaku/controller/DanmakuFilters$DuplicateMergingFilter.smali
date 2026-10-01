.class public Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicateMergingFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field protected final currentDanmakus:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private final passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 371
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 373
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 374
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    .line 375
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    return-void
.end method

.method private removeTimeoutDanmakus(Ljava/util/LinkedHashMap;I)V
    .locals 8
    .param p2, "limitTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;I)V"
        }
    .end annotation

    .line 400
    .local p1, "danmakus":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;>;"
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 402
    .local v1, "startTime":J
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 405
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 406
    .local v4, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    .end local v4    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    nop

    .line 414
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v5, p2

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 415
    goto :goto_0

    .line 409
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    .restart local v4    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_1
    goto :goto_0

    .line 411
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    .end local v4    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :catch_0
    move-exception v3

    .line 412
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 418
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private final removeTimeoutDanmakus(Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)V
    .locals 1
    .param p1, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .param p2, "limitTime"    # J

    .line 378
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;

    invoke-direct {v0, p0, p2, p3}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter$1;-><init>(Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;J)V

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 396
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 468
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->reset()V

    .line 469
    return-void
.end method

.method public filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "index"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 447
    invoke-virtual/range {p0 .. p5}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z

    move-result v0

    .line 448
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    .line 449
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 451
    :cond_0
    return v0
.end method

.method public declared-synchronized needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "index"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)V

    .line 423
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-direct {p0, v0, v1, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)V

    .line 424
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Ljava/util/LinkedHashMap;I)V

    .line 425
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->contains(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 426
    monitor-exit p0

    return v1

    .line 428
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->contains(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 429
    monitor-exit p0

    return v2

    .line 431
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 434
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    monitor-exit p0

    return v1

    .line 437
    :cond_2
    :try_start_3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    monitor-exit p0

    return v2

    .line 421
    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p2    # "index":I
    .end local p3    # "totalsizeInScreen":I
    .end local p4    # "timer":Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .end local p5    # "fromCachingTask":Z
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    .line 462
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    .line 463
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 460
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 371
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->setData(Ljava/lang/Void;)V

    return-void
.end method

.method public setData(Ljava/lang/Void;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Void;

    .line 457
    return-void
.end method

.class public Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElapsedTimeFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mMaxTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 180
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 182
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->mMaxTime:J

    return-void
.end method

.method private declared-synchronized needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z
    .locals 6
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z

    monitor-enter p0

    .line 186
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p4, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v1, v3

    .line 191
    .local v1, "elapsedTime":J
    iget-wide v3, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->mMaxTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 192
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 194
    :cond_1
    monitor-exit p0

    return v0

    .line 185
    .end local v1    # "elapsedTime":J
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;
    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p2    # "orderInScreen":I
    .end local p3    # "totalsizeInScreen":I
    .end local p4    # "timer":Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .end local p5    # "fromCachingTask":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 187
    .restart local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local p2    # "orderInScreen":I
    .restart local p3    # "totalsizeInScreen":I
    .restart local p4    # "timer":Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .restart local p5    # "fromCachingTask":Z
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->reset()V

    .line 220
    return-void
.end method

.method public filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 200
    invoke-direct/range {p0 .. p5}, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z

    move-result v0

    .line 201
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    .line 202
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 204
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    .line 215
    monitor-exit p0

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->reset()V

    .line 210
    return-void
.end method

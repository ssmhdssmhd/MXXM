.class public Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuantityDanmakuFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilterFactor:F

.field protected mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field protected mMaximumSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mFilterFactor:F

    return-void
.end method

.method private needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalSizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 121
    iget v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v3

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 131
    .local v3, "gapTime":J
    iget-object v0, p6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_Duration_Scroll_Danmaku:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 132
    .local v0, "maximumScrollDuration":Lmaster/flame/danmaku/danmaku/model/Duration;
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    if-eqz v0, :cond_2

    long-to-float v5, v3

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    long-to-float v6, v6

    iget v7, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mFilterFactor:F

    mul-float v6, v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 133
    return v2

    .line 136
    :cond_2
    iget v5, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-le p2, v5, :cond_3

    .line 137
    return v2

    .line 139
    :cond_3
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 140
    return v1

    .line 126
    .end local v0    # "maximumScrollDuration":Lmaster/flame/danmaku/danmaku/model/Duration;
    .end local v3    # "gapTime":J
    :cond_4
    :goto_0
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 127
    return v1

    .line 122
    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->reset()V

    .line 172
    return-void
.end method

.method public declared-synchronized filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "orderInScreen"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p6

    move p6, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 147
    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v0, "filtered":Z
    .local v1, "config":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .local p2, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local p3, "orderInScreen":I
    .local p4, "totalsizeInScreen":I
    .local p5, "timer":Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .local p6, "fromCachingTask":Z
    if-eqz v0, :cond_0

    .line 148
    :try_start_1
    iget v2, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;
    :cond_0
    monitor-exit p0

    return v0

    .line 145
    .end local v0    # "filtered":Z
    .end local v1    # "config":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .end local p2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p3    # "orderInScreen":I
    .end local p4    # "totalsizeInScreen":I
    .end local p5    # "timer":Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .end local p6    # "fromCachingTask":Z
    :catchall_0
    move-exception v0

    move-object p1, p0

    :goto_0
    move-object p2, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 166
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setData(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Integer;

    .line 155
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->reset()V

    .line 156
    if-nez p1, :cond_0

    .line 157
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-eq v0, v1, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    .line 160
    iget v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mFilterFactor:F

    .line 162
    :cond_1
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->setData(Ljava/lang/Integer;)V

    return-void
.end method

.class public Lmaster/flame/danmaku/controller/DrawTask;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDrawTask;


# instance fields
.field protected clearRetainerFlag:Z

.field protected danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field private danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field private mConfigChangedCallback:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

.field protected final mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field protected final mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

.field private mIsHidden:Z

.field private mLastBeginMills:J

.field private mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private mLastEndMills:J

.field private mLiveDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

.field protected mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

.field protected mPlayState:I

.field protected mReadyState:Z

.field final mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

.field private final mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

.field private mRequestRender:Z

.field private mRunningDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field private mStartRenderTime:J

.field mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

.field mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;)V
    .locals 4
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p2, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p3, "taskListener"    # Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 55
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 57
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 71
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLiveDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 77
    new-instance v0, Lmaster/flame/danmaku/controller/DrawTask$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/controller/DrawTask$1;-><init>(Lmaster/flame/danmaku/controller/DrawTask;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mConfigChangedCallback:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .line 86
    if-eqz p2, :cond_4

    .line 89
    iput-object p2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 90
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .line 91
    iput-object p3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    .line 92
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-direct {v0, p2}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;-><init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    .line 93
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    new-instance v1, Lmaster/flame/danmaku/controller/DrawTask$2;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/DrawTask$2;-><init>(Lmaster/flame/danmaku/controller/DrawTask;)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setOnDanmakuShownListener(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;)V

    .line 102
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isPreventOverlappingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isMaxLinesLimited()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setVerifierEnabled(Z)V

    .line 103
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask;->initTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 104
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isDuplicateMergingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 105
    .local v0, "enable":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "1017_Filter"

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    goto :goto_2

    .line 109
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 112
    :cond_3
    :goto_2
    return-void

    .line 87
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beginTracing(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;Lmaster/flame/danmaku/danmaku/model/IDanmakus;Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V
    .locals 3
    .param p1, "renderingState"    # Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .param p2, "runningDanmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .param p3, "screenDanmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 500
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->reset()V

    .line 501
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 502
    const/4 v0, 0x0

    iput v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->indexInScreen:I

    .line 503
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->size()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    iput v1, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalSizeInScreen:I

    .line 504
    return-void
.end method

.method private endTracing(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V
    .locals 4
    .param p1, "renderingState"    # Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 507
    iget v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 508
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 509
    iput-wide v1, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 511
    :cond_1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->lastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 512
    .local v0, "lastDanmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v3, 0x0

    iput-object v3, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->lastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 513
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v1

    :cond_2
    iput-wide v1, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 514
    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-static {}, Lmaster/flame/danmaku/danmaku/util/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    move-result-wide v1

    iput-wide v1, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    .line 515
    return-void
.end method


# virtual methods
.method public declared-synchronized addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 7
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLiveDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 124
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawTask;->removeUnusedLiveDanmakusIn(I)V

    .line 126
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawTask;
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->size()I

    move-result v0

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    .line 127
    const/4 v0, 0x1

    .line 128
    .local v0, "subAdded":Z
    iget-wide v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 129
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    :try_start_2
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v2

    move v0, v2

    .line 131
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    .line 132
    :cond_2
    iget-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v1, :cond_3

    .line 133
    const/4 v0, 0x0

    .line 135
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 136
    .local v1, "added":Z
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    :try_start_4
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v3, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v3

    move v1, v3

    .line 138
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    .line 140
    :cond_4
    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 142
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v2, :cond_6

    .line 143
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v2, p1}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->onDanmakuAdd(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 145
    :cond_6
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v2, :cond_7

    if-eqz p1, :cond_8

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v2

    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    .line 146
    :cond_7
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    :cond_8
    monitor-exit p0

    return-void

    .line 138
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 119
    .end local v0    # "subAdded":Z
    .end local v1    # "added":Z
    .end local p1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method public clearDanmakusOnScreen(J)V
    .locals 1
    .param p1, "currMillis"    # J

    .line 290
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawTask;->reset()V

    .line 291
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 292
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFirstShownFlag()V

    .line 293
    iput-wide p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 294
    return-void
.end method

.method public declared-synchronized draw(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 1
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/DrawTask;->drawDanmakus(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 256
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawTask;
    .end local p1    # "displayer":Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected drawDanmakus(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 21
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;
    .param p2, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lmaster/flame/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->clearRetainer()V

    .line 348
    iput-boolean v3, v0, Lmaster/flame/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    .line 350
    :cond_0
    iget-object v2, v0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 351
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getExtraData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    .line 352
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 353
    iget-boolean v5, v0, Lmaster/flame/danmaku/controller/DrawTask;->mIsHidden:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRequestRender:Z

    if-nez v5, :cond_1

    .line 354
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    return-object v3

    .line 357
    :cond_1
    iput-boolean v3, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRequestRender:Z

    .line 358
    iget-object v10, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 360
    .local v10, "renderingState":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    iget-wide v5, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v7, v0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x64

    sub-long/2addr v5, v7

    .line 361
    .local v5, "beginMills":J
    iget-wide v7, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v9, v0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v9, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v11, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long/2addr v7, v11

    .line 362
    .local v7, "endMills":J
    iget-object v9, v0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 363
    .local v9, "screenDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    iget-wide v11, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    cmp-long v13, v11, v5

    if-gtz v13, :cond_3

    iget-wide v11, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v13, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    cmp-long v15, v11, v13

    if-lez v15, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    iget-wide v5, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 372
    iget-wide v7, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    move-wide v11, v5

    move-wide v13, v7

    move-object v7, v9

    goto :goto_1

    .line 364
    :cond_3
    :goto_0
    iget-object v11, v0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v11, v5, v6, v7, v8}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->sub(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v9

    .line 365
    if-eqz v9, :cond_4

    .line 366
    iput-object v9, v0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 368
    :cond_4
    iput-wide v5, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 369
    iput-wide v7, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    move-wide v11, v5

    move-wide v13, v7

    move-object v7, v9

    .line 376
    .end local v5    # "beginMills":J
    .end local v9    # "screenDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .local v7, "screenDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .local v11, "beginMills":J
    .local v13, "endMills":J
    :goto_1
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRunningDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 377
    .local v5, "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    invoke-direct {v0, v10, v5, v7}, Lmaster/flame/danmaku/controller/DrawTask;->beginTracing(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;Lmaster/flame/danmaku/danmaku/model/IDanmakus;Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V

    .line 378
    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 379
    iget-object v8, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iput-boolean v6, v8, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->isRunningDanmakus:Z

    .line 380
    iget-object v15, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    const-wide/16 v18, 0x0

    iget-object v8, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move-object/from16 v20, v8

    .end local v5    # "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .local v17, "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    invoke-interface/range {v15 .. v20}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/IDanmakus;JLmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V

    goto :goto_2

    .line 378
    .end local v17    # "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .restart local v5    # "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :cond_5
    move-object/from16 v17, v5

    .line 384
    .end local v5    # "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .restart local v17    # "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :goto_2
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iput-boolean v3, v5, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->isRunningDanmakus:Z

    .line 385
    if-eqz v7, :cond_9

    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 386
    iget-object v5, v0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v6, v0, Lmaster/flame/danmaku/controller/DrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-wide v8, v0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    invoke-interface/range {v5 .. v10}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/IDanmakus;JLmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V

    .line 387
    invoke-direct {v0, v10}, Lmaster/flame/danmaku/controller/DrawTask;->endTracing(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V

    .line 388
    iget-boolean v3, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v3, :cond_8

    .line 389
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 390
    iput-object v4, v0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 391
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v3, :cond_6

    .line 392
    iget-object v3, v0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v3}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->onDanmakusDrawingFinished()V

    .line 395
    :cond_6
    iget-wide v3, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    const-wide/16 v5, -0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_7

    .line 396
    iput-wide v11, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 398
    :cond_7
    iget-wide v3, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    cmp-long v8, v3, v5

    if-nez v8, :cond_8

    .line 399
    iput-wide v13, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 402
    :cond_8
    return-object v10

    .line 404
    :cond_9
    iput-boolean v6, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 405
    iput-wide v11, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 406
    iput-wide v13, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 407
    return-object v10

    .line 410
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "screenDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .end local v10    # "renderingState":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .end local v11    # "beginMills":J
    .end local v13    # "endMills":J
    .end local v17    # "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :cond_a
    return-object v4
.end method

.method public getVisibleDanmakusOnTime(J)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 8
    .param p1, "time"    # J

    .line 226
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x64

    sub-long/2addr v0, v2

    .line 227
    .local v0, "beginMills":J
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long/2addr v2, p1

    .line 228
    .local v2, "endMills":J
    const/4 v4, 0x0

    .line 229
    .local v4, "subDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    const/4 v5, 0x0

    .line 230
    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    const/4 v7, 0x3

    if-ge v5, v7, :cond_0

    .line 232
    :try_start_0
    iget-object v5, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v5, v0, v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 233
    goto :goto_1

    .line 234
    :catch_0
    move-exception v5

    .line 236
    move v5, v6

    goto :goto_0

    .line 238
    :cond_0
    :goto_1
    new-instance v5, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v5}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 239
    .local v5, "visibleDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 240
    new-instance v7, Lmaster/flame/danmaku/controller/DrawTask$5;

    invoke-direct {v7, p0, v5}, Lmaster/flame/danmaku/controller/DrawTask$5;-><init>(Lmaster/flame/danmaku/controller/DrawTask;Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V

    invoke-interface {v4, v7}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 251
    :cond_1
    return-object v5
.end method

.method protected handleOnDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p2, "tag"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    .param p3, "values"    # [Ljava/lang/Object;

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "handled":Z
    if-eqz p2, :cond_c

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 459
    :cond_0
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 460
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    .line 461
    .local v1, "enable":Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    .line 462
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "1017_Filter"

    if-eqz v2, :cond_1

    .line 463
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    goto :goto_0

    .line 465
    :cond_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 467
    :goto_0
    const/4 v0, 0x1

    .line 469
    .end local v1    # "enable":Ljava/lang/Boolean;
    :cond_2
    goto/16 :goto_4

    :cond_3
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_MARGIN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 472
    :cond_4
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 477
    :cond_5
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->ALIGN_BOTTOM:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 478
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    .line 479
    .restart local v1    # "enable":Ljava/lang/Boolean;
    if-eqz v1, :cond_d

    .line 480
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v2, :cond_6

    .line 481
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->alignBottom(Z)V

    .line 483
    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    .line 473
    .end local v1    # "enable":Ljava/lang/Boolean;
    :cond_7
    :goto_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v1, :cond_a

    .line 474
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isPreventOverlappingEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isMaxLinesLimited()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    invoke-interface {v1, v2}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setVerifierEnabled(Z)V

    .line 476
    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    .line 470
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawTask;->requestClearRetainer()V

    .line 471
    const/4 v0, 0x0

    goto :goto_4

    .line 458
    :cond_c
    :goto_3
    const/4 v0, 0x1

    .line 486
    :cond_d
    :goto_4
    return v0
.end method

.method protected initTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V
    .locals 0
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 115
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 116
    return-void
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .line 152
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getCacheStuffer()Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 153
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 154
    if-eqz p2, :cond_0

    .line 155
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 156
    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 157
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 158
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measureResetFlag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measureResetFlag:I

    .line 160
    :cond_0
    return-void
.end method

.method protected loadDanmakus(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 326
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setDisplayer(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v0

    new-instance v1, Lmaster/flame/danmaku/controller/DrawTask$6;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/DrawTask$6;-><init>(Lmaster/flame/danmaku/controller/DrawTask;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setListener(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser$Listener;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 334
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->resetAll()V

    .line 335
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 338
    :cond_0
    return-void
.end method

.method public varargs onDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p2, "tag"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    .param p3, "values"    # [Ljava/lang/Object;

    .line 448
    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/DrawTask;->handleOnDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result v0

    .line 449
    .local v0, "handled":Z
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v1}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->onDanmakuConfigChanged()V

    .line 452
    :cond_0
    return v0
.end method

.method protected onDanmakuRemoved(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 180
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 322
    iput p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mPlayState:I

    .line 323
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 309
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-nez v0, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawTask;->loadDanmakus(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 314
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->ready()V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mReadyState:Z

    .line 318
    :cond_1
    return-void
.end method

.method public quit()V
    .locals 1

    .line 303
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->unregisterAllConfigChangedCallbacks()V

    .line 304
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->release()V

    .line 306
    :cond_0
    return-void
.end method

.method public declared-synchronized removeAllDanmakus(Z)V
    .locals 7
    .param p1, "isClearDanmakusOnScreen"    # Z

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 167
    if-nez p1, :cond_1

    .line 168
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    sub-long/2addr v1, v3

    .line 169
    .local v1, "beginMills":J
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v3, v3, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v5, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long/2addr v3, v5

    .line 170
    .local v3, "endMills":J
    iget-object v5, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v5, v1, v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v5

    .line 171
    .local v5, "tempDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    if-eqz v5, :cond_1

    .line 172
    iput-object v5, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 174
    .end local v1    # "beginMills":J
    .end local v3    # "endMills":J
    .end local v5    # "tempDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    .line 175
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawTask;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 165
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 163
    .end local p1    # "isClearDanmakusOnScreen":Z
    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized removeAllLiveDanmakus()V
    .locals 3

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 187
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    new-instance v2, Lmaster/flame/danmaku/controller/DrawTask$3;

    invoke-direct {v2, p0}, Lmaster/flame/danmaku/controller/DrawTask$3;-><init>(Lmaster/flame/danmaku/controller/DrawTask;)V

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 197
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawTask;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 185
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 183
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected declared-synchronized removeUnusedLiveDanmakusIn(I)V
    .locals 2
    .param p1, "msec"    # I

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLiveDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLiveDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    new-instance v1, Lmaster/flame/danmaku/controller/DrawTask$4;

    invoke-direct {v1, p0, p1}, Lmaster/flame/danmaku/controller/DrawTask$4;-><init>(Lmaster/flame/danmaku/controller/DrawTask;I)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 202
    .end local p0    # "this":Lmaster/flame/danmaku/controller/DrawTask;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    .end local p1    # "msec":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public requestClear()V
    .locals 2

    .line 415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mIsHidden:Z

    .line 417
    return-void
.end method

.method public requestClearRetainer()V
    .locals 1

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    .line 422
    return-void
.end method

.method public requestHide()V
    .locals 1

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mIsHidden:Z

    .line 492
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRequestRender:Z

    .line 497
    return-void
.end method

.method public requestSync(JJJ)V
    .locals 2
    .param p1, "fromTimeMills"    # J
    .param p3, "toTimeMills"    # J
    .param p5, "offsetMills"    # J

    .line 427
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->obtainRunningDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    .line 428
    .local v0, "runningDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRunningDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 430
    new-instance v1, Lmaster/flame/danmaku/controller/DrawTask$7;

    invoke-direct {v1, p0, p5, p6}, Lmaster/flame/danmaku/controller/DrawTask$7;-><init>(Lmaster/flame/danmaku/controller/DrawTask;J)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 443
    iput-wide p3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 444
    return-void
.end method

.method public reset()V
    .locals 1

    .line 261
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 263
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->clear()V

    .line 265
    :cond_1
    return-void
.end method

.method public seek(J)V
    .locals 6
    .param p1, "mills"    # J

    .line 269
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawTask;->reset()V

    .line 270
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 271
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFirstShownFlag()V

    .line 272
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateSyncOffsetTimeFlag()V

    .line 273
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updatePrepareFlag()V

    .line 274
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRunningDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 275
    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 276
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->reset()V

    .line 277
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    iput-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 278
    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 280
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 282
    .local v0, "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 286
    .end local v0    # "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_1
    return-void
.end method

.method public setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V
    .locals 1
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 341
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mReadyState:Z

    .line 343
    return-void
.end method

.method public start()V
    .locals 2

    .line 298
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mConfigChangedCallback:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->registerConfigChangedCallback(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;)V

    .line 299
    return-void
.end method

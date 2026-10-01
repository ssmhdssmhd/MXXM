.class public Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;
.super Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.source "R2LDanmaku.java"


# static fields
.field protected static final CORDON_RENDERING_TIME:J = 0x28L

.field protected static final MAX_RENDERING_TIME:J = 0x64L


# instance fields
.field protected RECT:[F

.field protected mDistance:I

.field protected mLastTime:J

.field protected mStepX:F

.field protected x:F

.field protected y:F


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V
    .locals 1
    .param p1, "duration"    # Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 39
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->x:F

    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->y:F

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    .line 40
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 41
    return-void
.end method


# virtual methods
.method protected getAccurateLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)F
    .locals 5
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "currTime"    # J

    .line 63
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->getActualTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 64
    .local v0, "elapsedTime":J
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 65
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->paintWidth:F

    neg-float v2, v2

    return v2

    .line 68
    :cond_0
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    long-to-float v3, v0

    iget v4, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mStepX:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method public getBottom()F
    .locals 2

    .line 103
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->y:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->paintHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 88
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->x:F

    return v0
.end method

.method public getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F
    .locals 4
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "time"    # J

    .line 73
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->getAccurateLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)F

    move-result v0

    .line 76
    .local v0, "left":F
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    .line 79
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 80
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    const/4 v2, 0x1

    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->y:F

    aput v3, v1, v2

    .line 81
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->paintWidth:F

    add-float/2addr v2, v0

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 82
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->y:F

    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->paintHeight:F

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 83
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->RECT:[F

    return-object v1
.end method

.method public getRight()F
    .locals 2

    .line 98
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->x:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 93
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->y:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V
    .locals 7
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 45
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 47
    .local v0, "currMS":J
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->getActualTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 48
    .local v2, "deltaDuration":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->getAccurateLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)F

    move-result v4

    iput v4, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->x:F

    .line 50
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->isShown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->y:F

    .line 52
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->setVisibility(Z)V

    .line 54
    :cond_0
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mLastTime:J

    .line 55
    return-void

    .line 57
    :cond_1
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mLastTime:J

    .line 59
    .end local v0    # "currMS":J
    .end local v2    # "deltaDuration":J
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->setVisibility(Z)V

    .line 60
    return-void
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V
    .locals 3
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "fromWorkerThread"    # Z

    .line 113
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 114
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mDistance:I

    .line 115
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mDistance:I

    int-to-float v0, v0

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/R2LDanmaku;->mStepX:F

    .line 116
    return-void
.end method

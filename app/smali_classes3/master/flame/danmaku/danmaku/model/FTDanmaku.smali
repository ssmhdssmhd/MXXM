.class public Lmaster/flame/danmaku/danmaku/model/FTDanmaku;
.super Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.source "FTDanmaku.java"


# instance fields
.field private RECT:[F

.field private mLastDispWidth:I

.field private mLastLeft:F

.field private mLastPaintWidth:F

.field private x:F

.field protected y:F


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/Duration;)V
    .locals 1
    .param p1, "duration"    # Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 36
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    .line 26
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    .line 37
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 38
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 2

    .line 103
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 88
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    return v0
.end method

.method protected getLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)F
    .locals 2
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 61
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastDispWidth:I

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastPaintWidth:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 62
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastLeft:F

    return v0

    .line 64
    :cond_0
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 65
    .local v0, "left":F
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v1

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastDispWidth:I

    .line 66
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastPaintWidth:F

    .line 67
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mLastLeft:F

    .line 68
    return v0
.end method

.method public getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F
    .locals 4
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "time"    # J

    .line 73
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->getLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)F

    move-result v0

    .line 76
    .local v0, "left":F
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    .line 79
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 80
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x1

    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    aput v3, v1, v2

    .line 81
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    add-float/2addr v2, v0

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 82
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintHeight:F

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 83
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->RECT:[F

    return-object v1
.end method

.method public getRight()F
    .locals 2

    .line 98
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 93
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 108
    const/4 v0, 0x5

    return v0
.end method

.method public layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V
    .locals 5
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 42
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->getActualTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 44
    .local v0, "deltaDuration":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/Duration;->value:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 45
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->getLeft(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)F

    move-result v2

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    .line 47
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->setVisibility(Z)V

    .line 50
    :cond_0
    return-void

    .line 53
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->setVisibility(Z)V

    .line 54
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->y:F

    .line 55
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/FTDanmaku;->x:F

    .line 58
    .end local v0    # "deltaDuration":J
    :cond_2
    return-void
.end method

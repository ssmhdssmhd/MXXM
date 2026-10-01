.class public Lmaster/flame/danmaku/danmaku/model/Danmaku;
.super Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.source "Danmaku.java"


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 23
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;-><init>()V

    .line 24
    invoke-static {p0, p1}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->fillText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F
    .locals 1
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "time"    # J

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRight()F
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V
    .locals 0
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 35
    return-void
.end method

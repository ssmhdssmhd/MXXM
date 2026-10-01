.class public Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "FixedSpeedScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 13
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->mDuration:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 13
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->mDuration:I

    .line 21
    return-void
.end method


# virtual methods
.method public getmDuration()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->mDuration:I

    return v0
.end method

.method public setmDuration(I)V
    .locals 0
    .param p1, "time"    # I

    .line 42
    iput p1, p0, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->mDuration:I

    .line 43
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 32
    iget v5, p0, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "startX":I
    .end local p2    # "startY":I
    .end local p3    # "dx":I
    .end local p4    # "dy":I
    .local v1, "startX":I
    .local v2, "startY":I
    .local v3, "dx":I
    .local v4, "dy":I
    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 33
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 26
    iget v5, p0, Lcom/shenma/tvlauncher/ui/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "startX":I
    .end local p2    # "startY":I
    .end local p3    # "dx":I
    .end local p4    # "dy":I
    .local v1, "startX":I
    .local v2, "startY":I
    .local v3, "dx":I
    .local v4, "dy":I
    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 27
    return-void
.end method

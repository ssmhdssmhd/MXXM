.class public Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;
.super Ljava/lang/Object;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleFactor"
.end annotation


# instance fields
.field flag:I

.field height:I

.field scaleX:F

.field scaleY:F

.field width:I


# direct methods
.method public constructor <init>(IIFF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->flag:I

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->update(IIFF)V

    .line 30
    return-void
.end method


# virtual methods
.method public isUpdated(III)Z
    .locals 1
    .param p1, "flag"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 43
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->flag:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->width:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->height:I

    if-eq v0, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update(IIFF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F

    .line 33
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->scaleX:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->scaleY:F

    invoke-static {v0, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->flag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->flag:I

    .line 36
    :cond_1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->width:I

    .line 37
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->height:I

    .line 38
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->scaleX:F

    .line 39
    iput p4, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->scaleY:F

    .line 40
    return-void
.end method

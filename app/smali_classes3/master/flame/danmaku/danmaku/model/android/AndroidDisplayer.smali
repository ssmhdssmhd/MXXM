.class public Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;
.super Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;
.source "AndroidDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/AbsDisplayer<",
        "Landroid/graphics/Canvas;",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field private camera:Landroid/graphics/Camera;

.field public canvas:Landroid/graphics/Canvas;

.field private density:F

.field private densityDpi:I

.field private height:I

.field private locationZ:F

.field private final mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

.field private mIsHardwareAccelerated:Z

.field private mMaximumBitmapHeight:I

.field private mMaximumBitmapWidth:I

.field private mSlopPixel:I

.field private matrix:Landroid/graphics/Matrix;

.field private sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

.field private scaledDensity:F

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 270
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;-><init>()V

    .line 262
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    .line 264
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    .line 266
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    .line 268
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .line 362
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->density:F

    .line 364
    const/16 v1, 0xa0

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    .line 366
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    .line 372
    const/16 v0, 0x800

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    .line 374
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    .line 272
    return-void
.end method

.method private calcPaintWH(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "fromWorkerThread"    # Z

    .line 526
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V

    .line 527
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-direct {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setDanmakuPaintWidthAndHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FF)V

    .line 528
    return-void
.end method

.method private static final getMaximumBitmapHeight(Landroid/graphics/Canvas;)I
    .locals 1
    .param p0, "c"    # Landroid/graphics/Canvas;

    .line 285
    nop

    .line 286
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v0

    return v0
.end method

.method private static final getMaximumBitmapWidth(Landroid/graphics/Canvas;)I
    .locals 1
    .param p0, "c"    # Landroid/graphics/Canvas;

    .line 276
    nop

    .line 277
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v0

    return v0
.end method

.method private declared-synchronized getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 503
    .end local p0    # "this":Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;
    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p2    # "fromWorkerThread":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private resetPaintAlpha(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 469
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v1, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq v0, v1, :cond_0

    .line 470
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 472
    :cond_0
    return-void
.end method

.method private restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 476
    return-void
.end method

.method private saveCanvas(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)I
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 479
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 480
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->locationZ:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->locationZ:F

    invoke-virtual {v0, v1, v1, v2}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 483
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationY:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 484
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationZ:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 485
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 486
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 487
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 488
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 489
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 490
    .local v0, "count":I
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 491
    return v0
.end method

.method private setDanmakuPaintWidthAndHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FF)V
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "w"    # F
    .param p3, "h"    # F

    .line 531
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, p2

    .line 532
    .local v0, "pw":F
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p3

    .line 533
    .local v1, "ph":F
    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v2, :cond_0

    .line 534
    const/16 v2, 0x8

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 535
    add-float/2addr v1, v2

    .line 537
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getStrokeWidth()F

    move-result v2

    add-float/2addr v2, v0

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 538
    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 539
    return-void
.end method

.method private update(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 377
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    .line 378
    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->width:I

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->height:I

    .line 381
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    if-eqz v0, :cond_0

    .line 382
    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getMaximumBitmapWidth(Landroid/graphics/Canvas;)I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    .line 383
    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getMaximumBitmapHeight(Landroid/graphics/Canvas;)I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method public clearTextHeightCache()V
    .locals 1

    .line 543
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->clearCaches()V

    .line 544
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->clearTextHeightCache()V

    .line 545
    return-void
.end method

.method public draw(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 9
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 410
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v4

    .line 411
    .local v4, "top":F
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v3

    .line 412
    .local v3, "left":F
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "alphaPaint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 416
    .local v2, "needRestore":Z
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    .line 417
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v5

    sget v6, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->TRANSPARENT:I

    if-ne v5, v6, :cond_0

    .line 418
    return v1

    .line 420
    :cond_0
    iget v5, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationZ:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget v5, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationY:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 421
    :cond_1
    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v5, v3, v4}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->saveCanvas(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)I

    .line 422
    const/4 v2, 0x1

    .line 425
    :cond_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v5

    .line 426
    .local v5, "alpha":I
    sget v6, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq v5, v6, :cond_3

    .line 427
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-static {v6}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->access$200(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)Landroid/graphics/Paint;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v5, v0

    move v7, v2

    goto :goto_0

    .line 426
    :cond_3
    move-object v5, v0

    move v7, v2

    goto :goto_0

    .line 416
    .end local v5    # "alpha":I
    :cond_4
    move-object v5, v0

    move v7, v2

    .line 433
    .end local v0    # "alphaPaint":Landroid/graphics/Paint;
    .end local v2    # "needRestore":Z
    .local v5, "alphaPaint":Landroid/graphics/Paint;
    .local v7, "needRestore":Z
    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v2, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->TRANSPARENT:I

    if-ne v0, v2, :cond_5

    .line 434
    return v1

    .line 438
    :cond_5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iget-object v6, v1, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    move-object v1, p1

    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v1, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Landroid/text/TextPaint;)Z

    move-result p1

    .line 439
    move-object v6, v5

    .end local v5    # "alphaPaint":Landroid/graphics/Paint;
    .local v6, "alphaPaint":Landroid/graphics/Paint;
    .local p1, "cacheDrawn":Z
    const/4 v8, 0x1

    .line 440
    .local v8, "result":I
    if-nez p1, :cond_7

    .line 441
    if-eqz v6, :cond_6

    .line 442
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 443
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT_DUPLICATE:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_1

    .line 445
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->resetPaintAlpha(Landroid/graphics/Paint;)V

    .line 447
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V

    .line 448
    move-object v2, v1

    .end local v1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v2, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v8, 0x2

    goto :goto_2

    .line 440
    .end local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_7
    move-object v0, p0

    move-object v2, v1

    .line 451
    .end local v1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_2
    if-eqz v7, :cond_8

    .line 452
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->restoreCanvas(Landroid/graphics/Canvas;)V

    .line 455
    :cond_8
    return v8

    .line 458
    .end local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v6    # "alphaPaint":Landroid/graphics/Paint;
    .end local v7    # "needRestore":Z
    .end local v8    # "result":I
    .local p1, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_9
    return v1
.end method

.method public declared-synchronized drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "fromWorkerThread"    # Z

    monitor-enter p0

    .line 497
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p2    # "canvas":Landroid/graphics/Canvas;
    .end local p3    # "left":F
    .end local p4    # "top":F
    .end local p5    # "fromWorkerThread":Z
    .local v2, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .local v4, "left":F
    .local v5, "top":F
    .local v6, "fromWorkerThread":Z
    invoke-virtual/range {v1 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 497
    .end local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "fromWorkerThread":Z
    .end local p0    # "this":Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;
    .restart local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local p2    # "canvas":Landroid/graphics/Canvas;
    .restart local p3    # "left":F
    .restart local p4    # "top":F
    .restart local p5    # "fromWorkerThread":Z
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 500
    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p2    # "canvas":Landroid/graphics/Canvas;
    .end local p3    # "left":F
    .end local p4    # "top":F
    .end local p5    # "fromWorkerThread":Z
    .restart local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "left":F
    .restart local v5    # "top":F
    .restart local v6    # "fromWorkerThread":Z
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    .end local v2    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "fromWorkerThread":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Object;FFZ)V
    .locals 6

    .line 37
    move-object v2, p2

    check-cast v2, Landroid/graphics/Canvas;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V

    return-void
.end method

.method public getAllMarginTop()I
    .locals 1

    .line 351
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->access$100(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)I

    move-result v0

    return v0
.end method

.method public getCacheStuffer()Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
    .locals 1

    .line 331
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 400
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->density:F

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .line 405
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    return v0
.end method

.method public getExtraData()Landroid/graphics/Canvas;
    .locals 1

    .line 617
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public bridge synthetic getExtraData()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getExtraData()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 395
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->height:I

    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 341
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->access$000(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)I

    move-result v0

    return v0
.end method

.method public getMaximumCacheHeight()I
    .locals 1

    .line 642
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    return v0
.end method

.method public getMaximumCacheWidth()I
    .locals 1

    .line 637
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .line 549
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    return v0
.end method

.method public getSlopPixel()I
    .locals 1

    .line 563
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 622
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 390
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->width:I

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    return v0
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    .line 515
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v0

    .line 516
    .local v0, "paint":Landroid/text/TextPaint;
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->access$300(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 519
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->calcPaintWH(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V

    .line 520
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->access$300(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 523
    :cond_1
    return-void
.end method

.method public prepare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    .line 508
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->prepare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 511
    :cond_0
    return-void
.end method

.method public recycle(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 463
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 466
    :cond_0
    return-void
.end method

.method public resetSlopPixel(F)V
    .locals 3
    .param p1, "factor"    # F

    .line 554
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 555
    .local v0, "d":F
    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v0

    .line 556
    .local v1, "slop":F
    float-to-int v2, v1

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 557
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 558
    mul-float v2, v1, p1

    float-to-int v2, v2

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 559
    :cond_0
    return-void
.end method

.method public setAllMarginTop(I)V
    .locals 1
    .param p1, "m"    # I

    .line 346
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-static {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->access$102(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;I)I

    .line 347
    return-void
.end method

.method public setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;)V
    .locals 1
    .param p1, "cacheStuffer"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .line 324
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    if-eq p1, v0, :cond_0

    .line 325
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->sStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .line 327
    :cond_0
    return-void
.end method

.method public setDanmakuStyle(I[F)V
    .locals 3
    .param p1, "style"    # I
    .param p2, "values"    # [F

    .line 582
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 602
    :pswitch_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v2, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_SHADOW:Z

    .line 603
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v2, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_STROKE:Z

    .line 604
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v0, v2, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_PROJECTION:Z

    .line 605
    aget v1, p2, v1

    aget v0, p2, v0

    const/4 v2, 0x2

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setProjectionConfig(FFI)V

    goto :goto_0

    .line 589
    :pswitch_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v0, v2, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_SHADOW:Z

    .line 590
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_STROKE:Z

    .line 591
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_PROJECTION:Z

    .line 592
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setShadowRadius(F)V

    .line 593
    goto :goto_0

    .line 584
    :pswitch_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_SHADOW:Z

    .line 585
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_STROKE:Z

    .line 586
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_PROJECTION:Z

    .line 587
    goto :goto_0

    .line 596
    :pswitch_3
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v2, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_SHADOW:Z

    .line 597
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v0, v2, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_STROKE:Z

    .line 598
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_PROJECTION:Z

    .line 599
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setPaintStorkeWidth(F)V

    .line 600
    nop

    .line 608
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setDensities(FIF)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F

    .line 568
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->density:F

    .line 569
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    .line 570
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    .line 571
    return-void
.end method

.method public setExtraData(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "data"    # Landroid/graphics/Canvas;

    .line 612
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->update(Landroid/graphics/Canvas;)V

    .line 613
    return-void
.end method

.method public bridge synthetic setExtraData(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setExtraData(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 1
    .param p1, "fakeBoldText"    # Z

    .line 309
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->setFakeBoldText(Z)V

    .line 310
    return-void
.end method

.method public setHardwareAccelerated(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 627
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    .line 628
    return-void
.end method

.method public setMargin(I)V
    .locals 1
    .param p1, "m"    # I

    .line 336
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-static {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->access$002(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;I)I

    .line 337
    return-void
.end method

.method public setPaintStorkeWidth(F)V
    .locals 1
    .param p1, "s"    # F

    .line 301
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->setStrokeWidth(F)V

    .line 302
    return-void
.end method

.method public setProjectionConfig(FFI)V
    .locals 1
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "alpha"    # I

    .line 305
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->setProjectionConfig(FFI)V

    .line 306
    return-void
.end method

.method public setScaleTextSizeFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .line 319
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->setScaleTextSizeFactor(F)V

    .line 320
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "s"    # F

    .line 297
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->setShadowRadius(F)V

    .line 298
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 575
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->width:I

    .line 576
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->height:I

    .line 577
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fdeb7c166fdfe3aL    # 0.4799655442984406

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->locationZ:F

    .line 578
    return-void
.end method

.method public setTransparency(I)V
    .locals 1
    .param p1, "newTransparency"    # I

    .line 314
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->setTransparency(I)V

    .line 315
    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 293
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->mDisplayConfig:Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    return-void
.end method

.method public bridge synthetic setTypeFace(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;->setTypeFace(Landroid/graphics/Typeface;)V

    return-void
.end method

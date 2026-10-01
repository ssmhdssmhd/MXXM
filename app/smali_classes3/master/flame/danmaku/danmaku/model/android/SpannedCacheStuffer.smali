.class public Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;
.super Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;
.source "SpannedCacheStuffer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 91
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 92
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 95
    :cond_0
    return-void
.end method

.method public clearCaches()V
    .locals 0

    .line 85
    invoke-super {p0}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->clearCaches()V

    .line 86
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 87
    return-void
.end method

.method public drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lineText"    # Ljava/lang/String;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 36
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 37
    invoke-super/range {p0 .. p6}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 39
    :cond_0
    return-void
.end method

.method public drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 16
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lineText"    # Ljava/lang/String;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "paint"    # Landroid/text/TextPaint;
    .param p7, "fromWorkerThread"    # Z

    .line 43
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 44
    invoke-super/range {p0 .. p7}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 48
    .local v3, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/text/StaticLayout;>;"
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/StaticLayout;

    .line 49
    .local v4, "staticLayout":Landroid/text/StaticLayout;
    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 50
    .local v5, "requestRemeasure":Z
    :goto_0
    iget v8, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 52
    .local v6, "requestInvalidate":Z
    :goto_1
    if-nez v6, :cond_3

    if-nez v4, :cond_6

    .line 53
    :cond_3
    if-eqz v6, :cond_4

    .line 54
    iget v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/lit8 v7, v7, -0x3

    iput v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 56
    :cond_4
    iget-object v9, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 57
    .local v9, "text":Ljava/lang/CharSequence;
    if-eqz v9, :cond_9

    .line 58
    if-eqz v5, :cond_5

    .line 59
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    move-object/from16 v10, p6

    invoke-static {v7, v10}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 60
    .end local v4    # "staticLayout":Landroid/text/StaticLayout;
    .local v8, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 61
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 62
    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    move-object v4, v8

    goto :goto_2

    .line 64
    .end local v8    # "staticLayout":Landroid/text/StaticLayout;
    .restart local v4    # "staticLayout":Landroid/text/StaticLayout;
    :cond_5
    new-instance v8, Landroid/text/StaticLayout;

    iget v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-int v11, v7

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v10, p6

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v4, v8

    .line 66
    :goto_2
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    .line 71
    .end local v9    # "text":Ljava/lang/CharSequence;
    :cond_6
    const/4 v7, 0x0

    .line 72
    .local v7, "needRestore":Z
    const/4 v8, 0x0

    cmpl-float v9, v2, v8

    if-eqz v9, :cond_7

    cmpl-float v8, p5, v8

    if-eqz v8, :cond_7

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 74
    invoke-virtual/range {p6 .. p6}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    add-float v8, p5, v8

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    const/4 v7, 0x1

    .line 77
    :cond_7
    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 78
    if-eqz v7, :cond_8

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    :cond_8
    return-void

    .line 68
    .end local v7    # "needRestore":Z
    .restart local v9    # "text":Ljava/lang/CharSequence;
    :cond_9
    return-void
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
    .locals 9
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "fromWorkerThread"    # Z

    .line 21
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 22
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 23
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 24
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v4, v3

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p2

    .end local p2    # "paint":Landroid/text/TextPaint;
    .local v3, "paint":Landroid/text/TextPaint;
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 25
    .local v1, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 26
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 27
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->obj:Ljava/lang/Object;

    .line 28
    return-void

    .line 23
    .end local v1    # "staticLayout":Landroid/text/StaticLayout;
    .end local v3    # "paint":Landroid/text/TextPaint;
    .restart local p2    # "paint":Landroid/text/TextPaint;
    :cond_0
    move-object v3, p2

    .end local p2    # "paint":Landroid/text/TextPaint;
    .restart local v3    # "paint":Landroid/text/TextPaint;
    goto :goto_0

    .line 21
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "paint":Landroid/text/TextPaint;
    .restart local p2    # "paint":Landroid/text/TextPaint;
    :cond_1
    move-object v3, p2

    .line 31
    .end local p2    # "paint":Landroid/text/TextPaint;
    .restart local v3    # "paint":Landroid/text/TextPaint;
    :goto_0
    invoke-super {p0, p1, v3, p3}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V

    .line 32
    return-void
.end method

.method public releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 99
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/SpannedCacheStuffer;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 100
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 101
    return-void
.end method

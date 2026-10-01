.class public Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;
.super Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
.source "SimpleTextCacheStuffer.java"


# static fields
.field private static final sTextHeightCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    .line 78
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    return-void
.end method

.method protected drawBackground(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 83
    return-void
.end method

.method public drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)V
    .locals 16
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "fromWorkerThread"    # Z
    .param p6, "displayerConfig"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    .line 87
    move-object/from16 v1, p1

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p3

    .line 88
    .local v9, "_left":F
    move/from16 v10, p4

    .line 89
    .local v10, "_top":F
    iget v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    int-to-float v0, v0

    add-float v0, p3, v0

    .line 90
    .end local p3    # "left":F
    .local v0, "left":F
    iget v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    int-to-float v2, v2

    add-float v2, p4, v2

    .line 91
    .end local p4    # "top":F
    .local v2, "top":F
    iget v3, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v3, :cond_0

    .line 92
    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v0, v3

    .line 93
    add-float/2addr v2, v3

    move v11, v0

    move v12, v2

    goto :goto_0

    .line 91
    :cond_0
    move v11, v0

    move v12, v2

    .line 96
    .end local v0    # "left":F
    .end local v2    # "top":F
    .local v11, "left":F
    .local v12, "top":F
    :goto_0
    invoke-virtual {v8, v7}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->definePaintParams(Z)V

    .line 97
    invoke-virtual {v8, v1, v7}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v6

    .line 98
    .local v6, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v3, v9, v10}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawBackground(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)V

    .line 99
    iget-object v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_9

    .line 100
    iget-object v15, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    .line 101
    .local v15, "lines":[Ljava/lang/String;
    array-length v2, v15

    if-ne v2, v14, :cond_3

    .line 102
    invoke-virtual {v8, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v8, v1, v6, v14}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 104
    move v2, v11

    .line 105
    .local v2, "strokeLeft":F
    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float v4, v12, v4

    .line 106
    .local v4, "strokeTop":F
    iget-boolean v5, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v5, :cond_1

    .line 107
    iget v5, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetX:F

    add-float/2addr v2, v5

    .line 108
    iget v5, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetY:F

    add-float/2addr v4, v5

    move v5, v4

    move v4, v2

    goto :goto_1

    .line 106
    :cond_1
    move v5, v4

    move v4, v2

    .line 110
    .end local v2    # "strokeLeft":F
    .local v4, "strokeLeft":F
    .local v5, "strokeTop":F
    :goto_1
    aget-object v2, v15, v13

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 112
    .end local v4    # "strokeLeft":F
    .end local v5    # "strokeTop":F
    :cond_2
    invoke-virtual {v8, v1, v6, v13}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 113
    aget-object v2, v15, v13

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    sub-float v5, v12, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move v4, v11

    .end local v11    # "left":F
    .local v4, "left":F
    invoke-virtual/range {v0 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    move v7, v4

    .end local v4    # "left":F
    .local v7, "left":F
    goto/16 :goto_6

    .line 115
    .end local v7    # "left":F
    .restart local v11    # "left":F
    :cond_3
    move v7, v11

    .end local v11    # "left":F
    .restart local v7    # "left":F
    iget v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    iget v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    array-length v2, v15

    int-to-float v2, v2

    div-float v11, v0, v2

    .line 116
    .local v11, "textHeight":F
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_2
    array-length v2, v15

    if-ge v0, v2, :cond_8

    .line 117
    aget-object v2, v15, v0

    if-eqz v2, :cond_7

    aget-object v2, v15, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 118
    move v14, v0

    goto :goto_5

    .line 120
    :cond_4
    invoke-virtual {v8, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    invoke-virtual {v8, v1, v6, v14}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 122
    move v2, v7

    .line 123
    .restart local v2    # "strokeLeft":F
    int-to-float v3, v0

    mul-float v3, v3, v11

    add-float/2addr v3, v12

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    .line 124
    .local v3, "strokeTop":F
    iget-boolean v4, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v4, :cond_5

    .line 125
    iget v4, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetX:F

    add-float/2addr v2, v4

    .line 126
    iget v4, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetY:F

    add-float/2addr v3, v4

    move v4, v2

    move v5, v3

    goto :goto_3

    .line 124
    :cond_5
    move v4, v2

    move v5, v3

    .line 128
    .end local v2    # "strokeLeft":F
    .end local v3    # "strokeTop":F
    .local v4, "strokeLeft":F
    .restart local v5    # "strokeTop":F
    :goto_3
    aget-object v2, v15, v0

    move-object/from16 v3, p2

    move v14, v0

    move-object/from16 v0, p0

    .end local v0    # "t":I
    .local v14, "t":I
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 120
    .end local v4    # "strokeLeft":F
    .end local v5    # "strokeTop":F
    .end local v14    # "t":I
    .restart local v0    # "t":I
    :cond_6
    move v14, v0

    .line 130
    .end local v0    # "t":I
    .restart local v14    # "t":I
    :goto_4
    invoke-virtual {v8, v1, v6, v13}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 131
    aget-object v2, v15, v14

    int-to-float v0, v14

    mul-float v0, v0, v11

    add-float/2addr v0, v12

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float v5, v0, v3

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move v4, v7

    move/from16 v7, p5

    .end local v7    # "left":F
    .local v4, "left":F
    invoke-virtual/range {v0 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    move v7, v4

    .end local v4    # "left":F
    .restart local v7    # "left":F
    goto :goto_5

    .line 117
    .end local v14    # "t":I
    .restart local v0    # "t":I
    :cond_7
    move v14, v0

    .line 116
    .end local v0    # "t":I
    .restart local v14    # "t":I
    :goto_5
    add-int/lit8 v0, v14, 0x1

    const/4 v14, 0x1

    .end local v14    # "t":I
    .restart local v0    # "t":I
    goto :goto_2

    :cond_8
    move v14, v0

    .line 134
    .end local v0    # "t":I
    .end local v11    # "textHeight":F
    .end local v15    # "lines":[Ljava/lang/String;
    :goto_6
    move v11, v7

    move-object v7, v6

    move-object v6, v1

    goto :goto_8

    .line 135
    .end local v7    # "left":F
    .local v11, "left":F
    :cond_9
    move v7, v11

    .end local v11    # "left":F
    .restart local v7    # "left":F
    invoke-virtual {v8, v1}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    const/4 v0, 0x1

    invoke-virtual {v8, v1, v6, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 137
    move v0, v7

    .line 138
    .local v0, "strokeLeft":F
    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v2, v12, v2

    .line 140
    .local v2, "strokeTop":F
    iget-boolean v3, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v3, :cond_a

    .line 141
    iget v3, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetX:F

    add-float/2addr v0, v3

    .line 142
    iget v3, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetY:F

    add-float/2addr v2, v3

    move v4, v0

    move v5, v2

    goto :goto_7

    .line 140
    :cond_a
    move v4, v0

    move v5, v2

    .line 144
    .end local v0    # "strokeLeft":F
    .end local v2    # "strokeTop":F
    .local v4, "strokeLeft":F
    .restart local v5    # "strokeTop":F
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 147
    .end local v4    # "strokeLeft":F
    .end local v5    # "strokeTop":F
    :cond_b
    invoke-virtual {v8, v1, v6, v13}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 148
    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    sub-float v5, v12, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move v4, v7

    move/from16 v7, p5

    .end local v7    # "left":F
    .local v4, "left":F
    invoke-virtual/range {v0 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    move v11, v4

    move-object v7, v6

    move-object v6, v1

    .line 152
    .end local v4    # "left":F
    .end local v6    # "paint":Landroid/text/TextPaint;
    .local v7, "paint":Landroid/text/TextPaint;
    .restart local v11    # "left":F
    :goto_8
    iget v0, v6, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    if-eqz v0, :cond_c

    .line 153
    invoke-virtual {v8, v6}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getUnderlinePaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v5

    .line 154
    .local v5, "linePaint":Landroid/graphics/Paint;
    iget v0, v6, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v0, v10

    iget v1, v8, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_HEIGHT:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    .line 155
    .local v2, "bottom":F
    iget v0, v6, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v3, v9, v0

    move v4, v2

    move-object/from16 v0, p2

    move v1, v9

    .end local v9    # "_left":F
    .local v1, "_left":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 152
    .end local v1    # "_left":F
    .end local v2    # "bottom":F
    .end local v5    # "linePaint":Landroid/graphics/Paint;
    .restart local v9    # "_left":F
    :cond_c
    move v1, v9

    .line 159
    .end local v9    # "_left":F
    .restart local v1    # "_left":F
    :goto_9
    iget v0, v6, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v0, :cond_d

    .line 160
    invoke-virtual {v8, v6}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getBorderPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v5

    .line 161
    .local v5, "borderPaint":Landroid/graphics/Paint;
    iget v0, v6, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v3, v1, v0

    iget v0, v6, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float v4, v10, v0

    move-object/from16 v0, p2

    move v2, v10

    .end local v10    # "_top":F
    .local v2, "_top":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 159
    .end local v2    # "_top":F
    .end local v5    # "borderPaint":Landroid/graphics/Paint;
    .restart local v10    # "_top":F
    :cond_d
    move v2, v10

    .line 165
    .end local v10    # "_top":F
    .restart local v2    # "_top":F
    :goto_a
    return-void
.end method

.method protected drawStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lineText"    # Ljava/lang/String;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 63
    :goto_0
    return-void
.end method

.method protected drawText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lineText"    # Ljava/lang/String;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "paint"    # Landroid/text/TextPaint;
    .param p7, "fromWorkerThread"    # Z

    .line 66
    if-eqz p7, :cond_0

    instance-of v0, p1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    if-eqz v0, :cond_0

    .line 67
    const/16 v0, 0xff

    invoke-virtual {p6, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 69
    :cond_0
    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    :goto_0
    return-void
.end method

.method protected getCacheHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)Ljava/lang/Float;
    .locals 5
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 22
    .local v0, "textSize":Ljava/lang/Float;
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 23
    .local v1, "textHeight":Ljava/lang/Float;
    if-nez v1, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 25
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 26
    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    :cond_0
    return-object v1
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
    .locals 7
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "fromWorkerThread"    # Z

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "w":F
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 35
    .local v1, "textHeight":Ljava/lang/Float;
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 36
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 40
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->getCacheHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v1

    .line 42
    :goto_0
    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 43
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/SimpleTextCacheStuffer;->getCacheHeight(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v1

    .line 46
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 47
    .local v5, "tempStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 48
    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 49
    .local v6, "tr":F
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 46
    .end local v5    # "tempStr":Ljava/lang/String;
    .end local v6    # "tr":F
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    :cond_3
    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 53
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 55
    :goto_2
    return-void
.end method

.class public Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;
.super Ljava/lang/Object;
.source "DanmakuUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;I)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    .locals 12
    .param p0, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "cache"    # Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    .param p3, "bitsPerPixel"    # I

    .line 89
    if-nez p2, :cond_0

    .line 90
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;-><init>()V

    move-object p2, v0

    goto :goto_0

    .line 89
    :cond_0
    move-object v0, p2

    .line 92
    .end local p2    # "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :goto_0
    iget p2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p2, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getDensityDpi()I

    move-result v3

    const/4 v4, 0x0

    move v5, p3

    .end local p3    # "bitsPerPixel":I
    .local v5, "bitsPerPixel":I
    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->build(IIIZI)V

    .line 93
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->get()Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    move-result-object p2

    .line 94
    .local p2, "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    if-eqz p2, :cond_1

    .line 95
    move-object v6, p1

    check-cast v6, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v8, p2, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    move-object v7, p0

    .end local p0    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v7, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual/range {v6 .. v11}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Object;FFZ)V

    .line 96
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->isHardwareAccelerated()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 97
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result p0

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result p3

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheWidth()I

    move-result v1

    .line 98
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheHeight()I

    move-result v2

    .line 97
    invoke-virtual {p2, p0, p3, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->splitWith(IIII)V

    goto :goto_1

    .line 94
    .end local v7    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local p0    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_1
    move-object v7, p0

    .line 101
    .end local p0    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v7    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static checkHit(II[F[F)Z
    .locals 4
    .param p0, "type1"    # I
    .param p1, "type2"    # I
    .param p2, "rectArr1"    # [F
    .param p3, "rectArr2"    # [F

    .line 72
    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    .line 73
    return v0

    .line 74
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 76
    aget v3, p3, v0

    aget v1, p2, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 79
    :cond_2
    const/4 v3, 0x6

    if-ne p0, v3, :cond_4

    .line 81
    aget v1, p3, v1

    aget v3, p2, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 84
    :cond_4
    return v0
.end method

.method private static checkHitAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;J)Z
    .locals 4
    .param p0, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p1, "d1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "d2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "time"    # J

    .line 63
    invoke-virtual {p1, p0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F

    move-result-object v0

    .line 64
    .local v0, "rectArr1":[F
    invoke-virtual {p2, p0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F

    move-result-object v1

    .line 65
    .local v1, "rectArr2":[F
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->checkHit(II[F[F)Z

    move-result v2

    return v2

    .line 66
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public static final compare(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 7
    .param p0, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 130
    if-ne p0, p1, :cond_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    const/4 v0, -0x1

    if-nez p0, :cond_1

    .line 135
    return v0

    .line 138
    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 139
    return v1

    .line 142
    :cond_2
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 143
    .local v2, "val":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 144
    return v1

    .line 145
    :cond_3
    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    .line 146
    return v0

    .line 148
    :cond_4
    iget v4, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    iget v5, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    sub-int/2addr v4, v5

    .line 149
    .local v4, "r":I
    if-eqz v4, :cond_6

    .line 150
    if-gez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 152
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 153
    .end local v4    # "r":I
    .local v0, "r":I
    return v0
.end method

.method public static fillText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 161
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 168
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    .line 170
    :cond_1
    return-void

    .line 163
    .end local v0    # "lines":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public static getCacheSize(III)I
    .locals 1
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "bytesPerPixel"    # I

    .line 105
    mul-int v0, p0, p1

    mul-int v0, v0, p2

    return v0
.end method

.method public static final isDuplicate(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 4
    .param p0, "obj1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p1, "obj2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 109
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 110
    return v0

    .line 119
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 120
    return v3

    .line 122
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    return v3

    .line 125
    :cond_2
    return v0
.end method

.method public static final isOverSize(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p0, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 157
    invoke-interface {p0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    invoke-interface {p0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-interface {p0}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMaximumCacheHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static willHitInDuration(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;JJ)Z
    .locals 12
    .param p0, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p1, "d1"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "d2"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "duration"    # J
    .param p5, "currTime"    # J

    .line 38
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    .line 39
    .local v0, "type1":I
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v1

    .line 41
    .local v1, "type2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 42
    return v2

    .line 44
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    return v2

    .line 47
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 48
    .local v3, "dTime":J
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-gtz v8, :cond_2

    .line 49
    return v7

    .line 50
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v8, v5, p3

    if-gez v8, :cond_8

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v5

    if-eqz v5, :cond_3

    move-wide/from16 v5, p5

    goto :goto_1

    .line 54
    :cond_3
    const/4 v5, 0x5

    if-eq v0, v5, :cond_7

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    move-wide/from16 v5, p5

    goto :goto_0

    .line 58
    :cond_4
    move-wide/from16 v5, p5

    invoke-static {p0, p1, p2, v5, v6}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->checkHitAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;J)Z

    move-result v8

    if-nez v8, :cond_5

    .line 59
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v8

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-static {p0, p1, p2, v8, v9}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->checkHitAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;J)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2

    .line 54
    :cond_7
    move-wide/from16 v5, p5

    .line 55
    :goto_0
    return v7

    .line 50
    :cond_8
    move-wide/from16 v5, p5

    .line 51
    :goto_1
    return v2
.end method

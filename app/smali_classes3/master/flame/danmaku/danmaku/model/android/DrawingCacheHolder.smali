.class public Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
.super Ljava/lang/Object;
.source "DrawingCacheHolder.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapArray:[[Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public drawn:Z

.field public extra:Ljava/lang/Object;

.field public height:I

.field private mDensity:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private eraseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 128
    :cond_0
    return-void
.end method

.method private eraseBitmapArray()V
    .locals 3

    .line 131
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 133
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->eraseBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private recycleBitmapArray()V
    .locals 5

    .line 141
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    .line 142
    .local v0, "bitmapArrayReserve":[[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    .line 143
    if-eqz v0, :cond_2

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 145
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 146
    aget-object v4, v0, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 147
    aget-object v4, v0, v2

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    aget-object v4, v0, v2

    aput-object v1, v4, v3

    .line 145
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public buildCache(IIIZI)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "density"    # I
    .param p4, "checkSizeEquals"    # Z
    .param p5, "bitsPerPixel"    # I

    .line 36
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    if-eqz p4, :cond_0

    if-ne p1, v2, :cond_1

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_0
    if-gt p1, v2, :cond_1

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    if-gt p2, v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 37
    .local v0, "reuse":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 40
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 41
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 43
    return-void

    .line 45
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycle()V

    .line 48
    :cond_3
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    .line 49
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    .line 50
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 51
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    const/16 v2, 0x20

    if-ne p5, v2, :cond_4

    .line 52
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 54
    :cond_4
    invoke-static {p1, p2, v1}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 55
    if-lez p3, :cond_5

    .line 56
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    .line 57
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 59
    :cond_5
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_6

    .line 60
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    .line 61
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p3}, Landroid/graphics/Canvas;->setDensity(I)V

    goto :goto_2

    .line 63
    :cond_6
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :goto_2
    return-void
.end method

.method public final declared-synchronized draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 158
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 159
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    .line 160
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int v4, v4, v2

    int-to-float v4, v4

    add-float/2addr v4, p2

    .line 162
    .local v4, "dleft":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 163
    goto :goto_2

    .line 165
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v5, v5, v0

    int-to-float v5, v5

    add-float/2addr v5, p3

    .line 166
    .local v5, "dtop":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    cmpg-float v6, v7, v6

    if-gez v6, :cond_1

    .line 167
    goto :goto_2

    .line 169
    :cond_1
    invoke-virtual {p1, v3, v4, v5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "dleft":F
    .end local v5    # "dtop":F
    .end local p0    # "this":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_4
    monitor-exit p0

    return v1

    .line 174
    :cond_5
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return v1

    .line 178
    :cond_6
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 155
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "left":F
    .end local p3    # "top":F
    .end local p4    # "paint":Landroid/graphics/Paint;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public erase()V
    .locals 1

    .line 67
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->eraseBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->eraseBitmapArray()V

    .line 69
    return-void
.end method

.method public declared-synchronized recycle()V
    .locals 3

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 73
    .local v0, "bitmapReserve":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    .end local p0    # "this":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 79
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->extra:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "bitmapReserve":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public splitWith(IIII)V
    .locals 18
    .param p1, "dispWidth"    # I
    .param p2, "dispHeight"    # I
    .param p3, "maximumCacheWidth"    # I
    .param p4, "maximumCacheHeight"    # I

    .line 84
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 85
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    if-lez v3, :cond_8

    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    if-lez v3, :cond_8

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    move/from16 v4, p2

    goto/16 :goto_4

    .line 88
    :cond_0
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    if-gt v3, v1, :cond_1

    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    if-gt v3, v2, :cond_1

    .line 89
    return-void

    .line 91
    :cond_1
    move/from16 v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92
    .end local p3    # "maximumCacheWidth":I
    .local v1, "maximumCacheWidth":I
    move/from16 v4, p2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    .end local p4    # "maximumCacheHeight":I
    .local v2, "maximumCacheHeight":I
    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    div-int/2addr v5, v1

    iget v6, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    rem-int/2addr v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :goto_0
    add-int/2addr v5, v6

    .line 94
    .local v5, "xCount":I
    iget v6, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    div-int/2addr v6, v2

    iget v9, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    rem-int/2addr v9, v2

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    :goto_1
    add-int/2addr v6, v9

    .line 95
    .local v6, "yCount":I
    iget v9, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    div-int/2addr v9, v5

    .line 96
    .local v9, "averageWidth":I
    iget v10, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    div-int/2addr v10, v6

    .line 97
    .local v10, "averageHeight":I
    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v5, v11, v8

    aput v6, v11, v7

    const-class v8, Landroid/graphics/Bitmap;

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Landroid/graphics/Bitmap;

    .line 98
    .local v8, "bmpArray":[[Landroid/graphics/Bitmap;
    iget-object v11, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    if-nez v11, :cond_4

    .line 99
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11}, Landroid/graphics/Canvas;-><init>()V

    iput-object v11, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    .line 100
    iget v11, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    if-lez v11, :cond_4

    .line 101
    iget-object v11, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget v12, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 104
    :cond_4
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .local v11, "rectSrc":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .local v12, "rectDst":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .local v13, "yIndex":I
    :goto_2
    if-ge v13, v6, :cond_7

    .line 107
    const/4 v14, 0x0

    .local v14, "xIndex":I
    :goto_3
    if-ge v14, v5, :cond_6

    .line 108
    aget-object v15, v8, v13

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v7}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v15, v14

    .line 110
    .local v7, "bmp":Landroid/graphics/Bitmap;
    iget v15, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    if-lez v15, :cond_5

    .line 111
    iget v15, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    invoke-virtual {v7, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 113
    :cond_5
    iget-object v15, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v15, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    mul-int v15, v14, v9

    move/from16 v16, v1

    .end local v1    # "maximumCacheWidth":I
    .local v15, "left":I
    .local v16, "maximumCacheWidth":I
    mul-int v1, v13, v10

    .line 115
    .local v1, "top":I
    move/from16 p4, v2

    .end local v2    # "maximumCacheHeight":I
    .restart local p4    # "maximumCacheHeight":I
    add-int v2, v15, v9

    add-int v3, v1, v10

    invoke-virtual {v11, v15, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "top":I
    .local v17, "top":I
    invoke-virtual {v12, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v11, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v15    # "left":I
    .end local v17    # "top":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p1

    move/from16 v2, p4

    move/from16 v1, v16

    const/4 v7, 0x0

    goto :goto_3

    .end local v16    # "maximumCacheWidth":I
    .end local p4    # "maximumCacheHeight":I
    .local v1, "maximumCacheWidth":I
    .restart local v2    # "maximumCacheHeight":I
    :cond_6
    move/from16 v16, v1

    move/from16 p4, v2

    .line 106
    .end local v1    # "maximumCacheWidth":I
    .end local v2    # "maximumCacheHeight":I
    .end local v14    # "xIndex":I
    .restart local v16    # "maximumCacheWidth":I
    .restart local p4    # "maximumCacheHeight":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p1

    const/4 v7, 0x0

    goto :goto_2

    .end local v16    # "maximumCacheWidth":I
    .end local p4    # "maximumCacheHeight":I
    .restart local v1    # "maximumCacheWidth":I
    .restart local v2    # "maximumCacheHeight":I
    :cond_7
    move/from16 v16, v1

    move/from16 p4, v2

    .line 120
    .end local v1    # "maximumCacheWidth":I
    .end local v2    # "maximumCacheHeight":I
    .end local v13    # "yIndex":I
    .restart local v16    # "maximumCacheWidth":I
    .restart local p4    # "maximumCacheHeight":I
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    iput-object v8, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    .line 122
    return-void

    .line 85
    .end local v5    # "xCount":I
    .end local v6    # "yCount":I
    .end local v8    # "bmpArray":[[Landroid/graphics/Bitmap;
    .end local v9    # "averageWidth":I
    .end local v10    # "averageHeight":I
    .end local v11    # "rectSrc":Landroid/graphics/Rect;
    .end local v12    # "rectDst":Landroid/graphics/Rect;
    .end local v16    # "maximumCacheWidth":I
    .restart local p3    # "maximumCacheWidth":I
    :cond_8
    move/from16 v4, p2

    .line 86
    :goto_4
    return-void
.end method

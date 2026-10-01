.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# instance fields
.field private final roundPixels:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "roundPixels"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    .line 40
    return-void
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPixels"    # I
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 156
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 162
    .local v3, "destRectF":Landroid/graphics/RectF;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 164
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    int-to-float v4, p1

    int-to-float v5, p1

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 167
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    invoke-virtual {v1, p0, p2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 170
    return-object v0
.end method

.method public static roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
    .locals 26
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "roundPixels"    # I

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 62
    .local v1, "bw":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 63
    .local v2, "bh":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 64
    .local v0, "vw":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 65
    .local v3, "vh":I
    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    move v4, v0

    .line 66
    .end local v0    # "vw":I
    .local v4, "vw":I
    if-gtz v3, :cond_1

    move v3, v2

    .line 71
    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object/from16 v19, v8

    move v0, v6

    .local v0, "destHeight":I
    move v5, v6

    .local v5, "destWidth":I
    move v8, v7

    .local v7, "bRation":F
    .local v8, "vRation":F
    move v9, v6

    .local v9, "width":I
    move v10, v6

    .local v10, "height":I
    move-object/from16 v11, v19

    .local v11, "destRect":Landroid/graphics/Rect;
    move-object/from16 v12, v19

    .local v12, "srcRect":Landroid/graphics/Rect;
    move v13, v6

    .line 95
    .local v6, "y":I
    .local v13, "x":I
    int-to-float v14, v4

    int-to-float v15, v3

    div-float/2addr v14, v15

    .line 96
    .end local v8    # "vRation":F
    .local v14, "vRation":F
    int-to-float v8, v1

    int-to-float v15, v2

    div-float/2addr v8, v15

    .line 97
    .end local v7    # "bRation":F
    .local v8, "bRation":F
    cmpl-float v7, v14, v8

    if-lez v7, :cond_4

    .line 98
    int-to-float v7, v1

    int-to-float v15, v2

    move/from16 v17, v0

    .end local v0    # "destHeight":I
    .local v17, "destHeight":I
    int-to-float v0, v3

    div-float/2addr v15, v0

    div-float/2addr v7, v15

    float-to-int v0, v7

    .line 99
    .end local v9    # "width":I
    .local v0, "width":I
    move v7, v3

    .end local v10    # "height":I
    .local v7, "height":I
    goto/16 :goto_2

    .line 71
    .end local v0    # "width":I
    .end local v5    # "destWidth":I
    .end local v6    # "y":I
    .end local v7    # "height":I
    .end local v8    # "bRation":F
    .end local v11    # "destRect":Landroid/graphics/Rect;
    .end local v12    # "srcRect":Landroid/graphics/Rect;
    .end local v13    # "x":I
    .end local v14    # "vRation":F
    .end local v17    # "destHeight":I
    :pswitch_1
    move v0, v6

    .local v0, "destHeight":I
    move v9, v6

    .local v9, "destWidth":I
    move v10, v7

    .local v7, "bRation":F
    .local v10, "vRation":F
    move v11, v6

    .local v11, "width":I
    move v12, v6

    .local v12, "height":I
    move-object v13, v8

    .local v13, "destRect":Landroid/graphics/Rect;
    move-object v14, v8

    .local v14, "srcRect":Landroid/graphics/Rect;
    move v15, v6

    .local v15, "x":I
    move/from16 v16, v6

    .local v16, "y":I
    move/from16 v17, v6

    .line 136
    .local v6, "srcWidth":I
    .local v17, "srcHeight":I
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 137
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 138
    sub-int v18, v1, v11

    div-int/lit8 v15, v18, 0x2

    .line 139
    sub-int v18, v2, v12

    move-object/from16 v19, v8

    div-int/lit8 v8, v18, 0x2

    .line 140
    .end local v16    # "y":I
    .local v8, "y":I
    new-instance v5, Landroid/graphics/Rect;

    move/from16 v18, v0

    .end local v0    # "destHeight":I
    .local v18, "destHeight":I
    add-int v0, v15, v11

    move/from16 v20, v6

    .end local v6    # "srcWidth":I
    .local v20, "srcWidth":I
    add-int v6, v8, v12

    invoke-direct {v5, v15, v8, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    .end local v14    # "srcRect":Landroid/graphics/Rect;
    .local v5, "srcRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v23, v0

    move-object/from16 v22, v5

    move/from16 v24, v11

    move/from16 v25, v12

    .end local v13    # "destRect":Landroid/graphics/Rect;
    .local v0, "destRect":Landroid/graphics/Rect;
    goto/16 :goto_3

    .line 71
    .end local v0    # "destRect":Landroid/graphics/Rect;
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    .end local v7    # "bRation":F
    .end local v8    # "y":I
    .end local v9    # "destWidth":I
    .end local v10    # "vRation":F
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v15    # "x":I
    .end local v17    # "srcHeight":I
    .end local v18    # "destHeight":I
    .end local v20    # "srcWidth":I
    :pswitch_2
    move-object/from16 v19, v8

    move v0, v6

    .local v0, "destHeight":I
    move v5, v6

    .local v5, "destWidth":I
    move v8, v7

    .restart local v7    # "bRation":F
    .local v8, "vRation":F
    move v9, v6

    .local v9, "width":I
    move v10, v6

    .local v10, "height":I
    move-object/from16 v11, v19

    .local v11, "destRect":Landroid/graphics/Rect;
    move-object/from16 v12, v19

    .local v12, "srcRect":Landroid/graphics/Rect;
    move v13, v6

    .local v13, "x":I
    move v14, v6

    .local v14, "y":I
    move v15, v6

    .line 129
    .restart local v6    # "srcWidth":I
    .local v15, "srcHeight":I
    move v9, v4

    .line 130
    move v10, v3

    .line 131
    move/from16 v17, v0

    .end local v0    # "destHeight":I
    .local v17, "destHeight":I
    new-instance v0, Landroid/graphics/Rect;

    move/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "destWidth":I
    .local v18, "destWidth":I
    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 132
    .end local v12    # "srcRect":Landroid/graphics/Rect;
    .local v0, "srcRect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v5, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .end local v11    # "destRect":Landroid/graphics/Rect;
    .local v12, "destRect":Landroid/graphics/Rect;
    move-object/from16 v22, v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v23, v12

    goto/16 :goto_3

    .line 71
    .end local v0    # "srcRect":Landroid/graphics/Rect;
    .end local v6    # "srcWidth":I
    .end local v7    # "bRation":F
    .end local v8    # "vRation":F
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v12    # "destRect":Landroid/graphics/Rect;
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v15    # "srcHeight":I
    .end local v17    # "destHeight":I
    .end local v18    # "destWidth":I
    :pswitch_3
    move-object/from16 v19, v8

    move v0, v6

    .local v0, "destHeight":I
    move v5, v6

    .restart local v5    # "destWidth":I
    move v8, v7

    .restart local v7    # "bRation":F
    .restart local v8    # "vRation":F
    move v9, v6

    .restart local v9    # "width":I
    move v10, v6

    .restart local v10    # "height":I
    move-object/from16 v11, v19

    .restart local v11    # "destRect":Landroid/graphics/Rect;
    move-object/from16 v12, v19

    .local v12, "srcRect":Landroid/graphics/Rect;
    move v13, v6

    .line 108
    .local v6, "y":I
    .restart local v13    # "x":I
    int-to-float v14, v4

    int-to-float v15, v3

    div-float/2addr v14, v15

    .line 109
    .end local v8    # "vRation":F
    .local v14, "vRation":F
    int-to-float v8, v1

    int-to-float v15, v2

    div-float/2addr v8, v15

    .line 112
    .end local v7    # "bRation":F
    .local v8, "bRation":F
    cmpl-float v7, v14, v8

    if-lez v7, :cond_2

    .line 113
    move v7, v1

    .line 114
    .local v7, "srcWidth":I
    int-to-float v15, v3

    move/from16 v17, v0

    .end local v0    # "destHeight":I
    .restart local v17    # "destHeight":I
    int-to-float v0, v1

    move/from16 v18, v0

    int-to-float v0, v4

    div-float v0, v18, v0

    mul-float v15, v15, v0

    float-to-int v0, v15

    .line 115
    .local v0, "srcHeight":I
    const/4 v13, 0x0

    .line 116
    sub-int v15, v2, v0

    div-int/lit8 v15, v15, 0x2

    .end local v6    # "y":I
    .local v15, "y":I
    goto :goto_0

    .line 112
    .end local v7    # "srcWidth":I
    .end local v15    # "y":I
    .end local v17    # "destHeight":I
    .local v0, "destHeight":I
    .restart local v6    # "y":I
    :cond_2
    move/from16 v17, v0

    .line 118
    .end local v0    # "destHeight":I
    .end local v6    # "y":I
    .end local v13    # "x":I
    .restart local v17    # "destHeight":I
    int-to-float v0, v4

    int-to-float v6, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    mul-float v0, v0, v6

    float-to-int v7, v0

    .line 119
    .restart local v7    # "srcWidth":I
    move v0, v2

    .line 120
    .local v0, "srcHeight":I
    sub-int v6, v1, v7

    div-int/lit8 v13, v6, 0x2

    .line 121
    .restart local v13    # "x":I
    const/4 v15, 0x0

    .line 123
    .restart local v15    # "y":I
    :goto_0
    move v6, v7

    .line 124
    .end local v9    # "width":I
    .local v6, "width":I
    move v9, v0

    .line 125
    .end local v10    # "height":I
    .local v9, "height":I
    new-instance v10, Landroid/graphics/Rect;

    move/from16 v18, v0

    .end local v0    # "srcHeight":I
    .local v18, "srcHeight":I
    add-int v0, v13, v7

    move/from16 v20, v5

    .end local v5    # "destWidth":I
    .local v20, "destWidth":I
    add-int v5, v15, v18

    invoke-direct {v10, v13, v15, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v10

    .line 126
    .end local v12    # "srcRect":Landroid/graphics/Rect;
    .local v5, "srcRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v0, v10, v10, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    .end local v11    # "destRect":Landroid/graphics/Rect;
    .local v0, "destRect":Landroid/graphics/Rect;
    move-object/from16 v23, v0

    move-object/from16 v22, v5

    move/from16 v24, v6

    move/from16 v25, v9

    goto :goto_3

    .line 73
    .end local v0    # "destRect":Landroid/graphics/Rect;
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    .end local v6    # "width":I
    .end local v7    # "srcWidth":I
    .end local v8    # "bRation":F
    .end local v9    # "height":I
    .end local v13    # "x":I
    .end local v14    # "vRation":F
    .end local v15    # "y":I
    .end local v17    # "destHeight":I
    .end local v18    # "srcHeight":I
    .end local v20    # "destWidth":I
    :pswitch_4
    move-object/from16 v19, v8

    int-to-float v0, v4

    int-to-float v5, v3

    div-float/2addr v0, v5

    .line 74
    .local v0, "vRation":F
    int-to-float v5, v1

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 77
    .local v5, "bRation":F
    cmpl-float v6, v0, v5

    if-lez v6, :cond_3

    .line 78
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 79
    .local v6, "destHeight":I
    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v6

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-int v7, v7

    .local v7, "destWidth":I
    goto :goto_1

    .line 81
    .end local v6    # "destHeight":I
    .end local v7    # "destWidth":I
    :cond_3
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 82
    .restart local v7    # "destWidth":I
    int-to-float v6, v2

    int-to-float v8, v1

    int-to-float v9, v7

    div-float/2addr v8, v9

    div-float/2addr v6, v8

    float-to-int v6, v6

    .line 84
    .restart local v6    # "destHeight":I
    :goto_1
    sub-int v8, v4, v7

    div-int/lit8 v8, v8, 0x2

    .line 85
    .local v8, "x":I
    sub-int v9, v3, v6

    div-int/lit8 v9, v9, 0x2

    .line 86
    .local v9, "y":I
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    .local v10, "srcRect":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    add-int v12, v8, v7

    add-int v13, v9, v6

    invoke-direct {v11, v8, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .restart local v11    # "destRect":Landroid/graphics/Rect;
    move v12, v4

    .line 89
    .local v12, "width":I
    move v13, v3

    .line 90
    .local v13, "height":I
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    goto :goto_3

    .line 97
    .end local v7    # "destWidth":I
    .local v0, "destHeight":I
    .local v5, "destWidth":I
    .local v6, "y":I
    .local v8, "bRation":F
    .local v9, "width":I
    .local v10, "height":I
    .local v12, "srcRect":Landroid/graphics/Rect;
    .local v13, "x":I
    .restart local v14    # "vRation":F
    :cond_4
    move/from16 v17, v0

    .line 101
    .end local v0    # "destHeight":I
    .end local v9    # "width":I
    .end local v10    # "height":I
    .restart local v17    # "destHeight":I
    move v0, v4

    .line 102
    .local v0, "width":I
    int-to-float v7, v2

    int-to-float v9, v1

    int-to-float v10, v4

    div-float/2addr v9, v10

    div-float/2addr v7, v9

    float-to-int v7, v7

    .line 104
    .local v7, "height":I
    :goto_2
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .end local v12    # "srcRect":Landroid/graphics/Rect;
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v10, v10, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .end local v11    # "destRect":Landroid/graphics/Rect;
    .local v12, "destRect":Landroid/graphics/Rect;
    move/from16 v24, v0

    move/from16 v25, v7

    move-object/from16 v22, v9

    move-object/from16 v23, v12

    .line 146
    .end local v0    # "width":I
    .end local v5    # "destWidth":I
    .end local v6    # "y":I
    .end local v7    # "height":I
    .end local v8    # "bRation":F
    .end local v9    # "srcRect":Landroid/graphics/Rect;
    .end local v12    # "destRect":Landroid/graphics/Rect;
    .end local v13    # "x":I
    .end local v14    # "vRation":F
    .end local v17    # "destHeight":I
    .local v22, "srcRect":Landroid/graphics/Rect;
    .local v23, "destRect":Landroid/graphics/Rect;
    .local v24, "width":I
    .local v25, "height":I
    :goto_3
    move-object/from16 v20, p0

    move/from16 v21, p2

    :try_start_0
    invoke-static/range {v20 .. v25}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "roundBitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 147
    .end local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    .local v19, "roundBitmap":Landroid/graphics/Bitmap;
    const-string v5, "Can\'t create bitmap with rounded corners. Not enough memory."

    const/4 v10, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    move-object/from16 v5, p0

    move-object v0, v5

    .line 152
    .end local v19    # "roundBitmap":Landroid/graphics/Bitmap;
    .local v0, "roundBitmap":Landroid/graphics/Bitmap;
    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 44
    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    invoke-static {p1, p2, v0}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "roundedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    return-object v0
.end method

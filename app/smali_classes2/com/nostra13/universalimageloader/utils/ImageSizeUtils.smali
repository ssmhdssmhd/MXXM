.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "powerOf2Scale"    # Z

    .line 112
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 113
    .local v0, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 114
    .local v1, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 115
    .local v2, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 117
    .local v3, "targetHeight":I
    const/4 v4, 0x1

    .line 119
    .local v4, "scale":I
    div-int v5, v0, v2

    .line 120
    .local v5, "widthScale":I
    div-int v6, v1, v3

    .line 122
    .local v6, "heightScale":I
    sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 135
    :pswitch_0
    if-eqz p3, :cond_0

    .line 136
    :goto_0
    div-int/lit8 v7, v0, 0x2

    if-lt v7, v2, :cond_3

    div-int/lit8 v7, v1, 0x2

    if-lt v7, v3, :cond_3

    .line 137
    div-int/lit8 v0, v0, 0x2

    .line 138
    div-int/lit8 v1, v1, 0x2

    .line 139
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 124
    :pswitch_1
    if-eqz p3, :cond_2

    .line 125
    :goto_1
    div-int/lit8 v7, v0, 0x2

    if-ge v7, v2, :cond_1

    div-int/lit8 v7, v1, 0x2

    if-lt v7, v3, :cond_3

    .line 126
    :cond_1
    div-int/lit8 v0, v0, 0x2

    .line 127
    div-int/lit8 v1, v1, 0x2

    .line 128
    mul-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 131
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 133
    nop

    .line 147
    :cond_3
    :goto_2
    const/4 v7, 0x1

    if-ge v4, v7, :cond_4

    .line 148
    const/4 v4, 0x1

    .line 151
    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 11
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "stretch"    # Z

    .line 177
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 178
    .local v0, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 179
    .local v1, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 180
    .local v2, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 182
    .local v3, "targetHeight":I
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 183
    .local v4, "widthScale":F
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 187
    .local v5, "heightScale":F
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_0

    cmpl-float v6, v4, v5

    if-gez v6, :cond_1

    :cond_0
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_2

    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    .line 188
    :cond_1
    move v6, v2

    .line 189
    .local v6, "destWidth":I
    int-to-float v7, v1

    div-float/2addr v7, v4

    float-to-int v7, v7

    .local v7, "destHeight":I
    goto :goto_0

    .line 191
    .end local v6    # "destWidth":I
    .end local v7    # "destHeight":I
    :cond_2
    int-to-float v6, v0

    div-float/2addr v6, v5

    float-to-int v6, v6

    .line 192
    .restart local v6    # "destWidth":I
    move v7, v3

    .line 195
    .restart local v7    # "destHeight":I
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 196
    .local v8, "scale":F
    if-nez p3, :cond_3

    if-ge v6, v0, :cond_3

    if-lt v7, v1, :cond_4

    :cond_3
    if-eqz p3, :cond_5

    if-eq v6, v0, :cond_5

    if-eq v7, v1, :cond_5

    .line 197
    :cond_4
    int-to-float v9, v6

    int-to-float v10, v0

    div-float v8, v9, v10

    .line 200
    :cond_5
    return v8
.end method

.method public static defineTargetSizeForView(Landroid/widget/ImageView;II)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 6
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "maxImageWidth"    # I
    .param p2, "maxImageHeight"    # I

    .line 51
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 54
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz v1, :cond_0

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 55
    .local v4, "width":I
    :goto_0
    if-gtz v4, :cond_1

    if-eqz v1, :cond_1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    :cond_1
    if-gtz v4, :cond_2

    const-string v5, "mMaxWidth"

    invoke-static {p0, v5}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    .line 57
    :cond_2
    if-gtz v4, :cond_3

    move v4, p1

    .line 58
    :cond_3
    if-gtz v4, :cond_4

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    :cond_4
    if-eqz v1, :cond_5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 61
    .local v2, "height":I
    :goto_1
    if-gtz v2, :cond_6

    if-eqz v1, :cond_6

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    :cond_6
    if-gtz v2, :cond_7

    const-string v3, "mMaxHeight"

    invoke-static {p0, v3}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 63
    :cond_7
    if-gtz v2, :cond_8

    move v2, p2

    .line 64
    :cond_8
    if-gtz v2, :cond_9

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    :cond_9
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v3, v4, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v3
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "value":I
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v2, "fieldValue":I
    if-lez v2, :cond_0

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_0

    .line 76
    move v0, v2

    .line 80
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :cond_0
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

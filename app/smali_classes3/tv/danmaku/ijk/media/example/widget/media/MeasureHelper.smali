.class public final Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method public static getAspectRatioText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aspectRatio"    # I

    .line 49
    packed-switch p1, :pswitch_data_0

    .line 69
    sget v0, Lcom/shenma/tvlauncher/R$string;->N_A:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_ar_4_3_fit_parent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_ar_16_9_fit_parent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_ar_match_parent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_3
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_ar_aspect_wrap_content:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_4
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_ar_aspect_fill_parent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_5
    sget v0, Lcom/shenma/tvlauncher/R$string;->VideoView_ar_aspect_fit_parent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "text":Ljava/lang/String;
    nop

    .line 72
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 104
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    if-ne v0, v1, :cond_1

    .line 105
    :cond_0
    move v0, p1

    .line 106
    .local v0, "tempSpec":I
    move p1, p2

    .line 107
    move p2, v0

    .line 110
    .end local v0    # "tempSpec":I
    :cond_1
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    .line 111
    .local v0, "width":I
    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    invoke-static {v3, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    .line 112
    .local v3, "height":I
    iget v4, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 113
    move v0, p1

    .line 114
    move v3, p2

    goto/16 :goto_4

    .line 115
    :cond_2
    iget v4, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    if-lez v4, :cond_10

    iget v4, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    if-lez v4, :cond_10

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 117
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 118
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 119
    .local v6, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 121
    .local v7, "heightSpecSize":I
    const/high16 v8, -0x80000000

    if-ne v4, v8, :cond_a

    if-ne v6, v8, :cond_a

    .line 122
    int-to-float v8, v5

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 124
    .local v8, "specAspectRatio":F
    iget v9, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    const/high16 v10, 0x3f800000    # 1.0f

    packed-switch v9, :pswitch_data_0

    .line 139
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    int-to-float v1, v1

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 140
    .local v9, "displayAspectRatio":F
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    if-lez v1, :cond_5

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    if-lez v1, :cond_5

    .line 141
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    int-to-float v2, v2

    div-float v9, v1, v2

    goto :goto_0

    .line 131
    .end local v9    # "displayAspectRatio":F
    :pswitch_0
    const v9, 0x3faaaaab

    .line 132
    .restart local v9    # "displayAspectRatio":F
    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    if-eq v11, v2, :cond_3

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    if-ne v2, v1, :cond_5

    .line 133
    :cond_3
    div-float v9, v10, v9

    goto :goto_0

    .line 126
    .end local v9    # "displayAspectRatio":F
    :pswitch_1
    const v9, 0x3fe38e39

    .line 127
    .restart local v9    # "displayAspectRatio":F
    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    if-eq v11, v2, :cond_4

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    if-ne v2, v1, :cond_5

    .line 128
    :cond_4
    div-float v9, v10, v9

    .line 144
    :cond_5
    :goto_0
    cmpl-float v1, v9, v8

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 146
    .local v1, "shouldBeWider":Z
    :goto_1
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v2, :pswitch_data_1

    .line 173
    :pswitch_2
    if-eqz v1, :cond_9

    .line 175
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    int-to-float v2, v0

    div-float/2addr v2, v9

    float-to-int v2, v2

    move v3, v2

    .end local v3    # "height":I
    .local v2, "height":I
    goto :goto_2

    .line 161
    .end local v2    # "height":I
    .restart local v3    # "height":I
    :pswitch_3
    if-eqz v1, :cond_7

    .line 163
    move v2, v7

    .line 164
    .end local v3    # "height":I
    .restart local v2    # "height":I
    int-to-float v3, v2

    mul-float v3, v3, v9

    float-to-int v0, v3

    move v3, v2

    goto :goto_2

    .line 167
    .end local v2    # "height":I
    .restart local v3    # "height":I
    :cond_7
    move v0, v5

    .line 168
    int-to-float v2, v0

    div-float/2addr v2, v9

    float-to-int v2, v2

    .line 170
    .end local v3    # "height":I
    .restart local v2    # "height":I
    move v3, v2

    goto :goto_2

    .line 150
    .end local v2    # "height":I
    .restart local v3    # "height":I
    :pswitch_4
    if-eqz v1, :cond_8

    .line 152
    move v0, v5

    .line 153
    int-to-float v2, v0

    div-float/2addr v2, v9

    float-to-int v2, v2

    move v3, v2

    .end local v3    # "height":I
    .restart local v2    # "height":I
    goto :goto_2

    .line 156
    .end local v2    # "height":I
    .restart local v3    # "height":I
    :cond_8
    move v2, v7

    .line 157
    .end local v3    # "height":I
    .restart local v2    # "height":I
    int-to-float v3, v2

    mul-float v3, v3, v9

    float-to-int v0, v3

    .line 159
    move v3, v2

    goto :goto_2

    .line 179
    .end local v2    # "height":I
    .restart local v3    # "height":I
    :cond_9
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 180
    .end local v3    # "height":I
    .restart local v2    # "height":I
    int-to-float v3, v2

    mul-float v3, v3, v9

    float-to-int v0, v3

    move v3, v2

    .line 184
    .end local v1    # "shouldBeWider":Z
    .end local v2    # "height":I
    .end local v8    # "specAspectRatio":F
    .end local v9    # "displayAspectRatio":F
    .restart local v3    # "height":I
    :goto_2
    goto/16 :goto_4

    :cond_a
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v4, v1, :cond_c

    if-ne v6, v1, :cond_c

    .line 186
    move v0, v5

    .line 187
    move v3, v7

    .line 190
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v1, v1, v3

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v2, v2, v0

    if-ge v1, v2, :cond_b

    .line 192
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v1, v1, v3

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int v0, v1, v2

    goto :goto_4

    .line 193
    :cond_b
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v1, v1, v3

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v2, v2, v0

    if-le v1, v2, :cond_10

    .line 195
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v1, v1, v0

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v3, v1, v2

    goto :goto_4

    .line 197
    :cond_c
    if-ne v4, v1, :cond_d

    .line 199
    move v0, v5

    .line 200
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v1, v1, v0

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v3, v1, v2

    .line 201
    if-ne v6, v8, :cond_10

    if-le v3, v7, :cond_10

    .line 203
    move v3, v7

    goto :goto_4

    .line 205
    :cond_d
    if-ne v6, v1, :cond_e

    .line 207
    move v3, v7

    .line 208
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v1, v1, v3

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int v0, v1, v2

    .line 209
    if-ne v4, v8, :cond_10

    if-le v0, v5, :cond_10

    .line 211
    move v0, v5

    goto :goto_4

    .line 215
    :cond_e
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    .line 216
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    .line 217
    .end local v3    # "height":I
    .local v1, "height":I
    if-ne v6, v8, :cond_f

    if-le v1, v7, :cond_f

    .line 219
    move v1, v7

    .line 220
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int v2, v2, v1

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int/2addr v2, v3

    move v0, v2

    move v3, v1

    .end local v0    # "width":I
    .local v2, "width":I
    goto :goto_3

    .line 222
    .end local v2    # "width":I
    .restart local v0    # "width":I
    :cond_f
    move v3, v1

    .end local v1    # "height":I
    .restart local v3    # "height":I
    :goto_3
    if-ne v4, v8, :cond_10

    if-le v0, v5, :cond_10

    .line 224
    move v0, v5

    .line 225
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int v1, v1, v0

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v3, v1, v2

    .line 232
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    .end local v6    # "heightSpecMode":I
    .end local v7    # "heightSpecSize":I
    :cond_10
    :goto_4
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredWidth:I

    .line 233
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredHeight:I

    .line 234
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 241
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 237
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public setAspectRatio(I)V
    .locals 0
    .param p1, "aspectRatio"    # I

    .line 245
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 246
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0
    .param p1, "videoRotationDegree"    # I

    .line 92
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    .line 93
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .line 87
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    .line 88
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    .line 89
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 82
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    .line 83
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    .line 84
    return-void
.end method

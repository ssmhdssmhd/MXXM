.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# static fields
.field private static final INTERPOLATOR_ACCELERATE:I = 0x0

.field private static final INTERPOLATOR_ACCELERATEDECELERATE:I = 0x2

.field private static final INTERPOLATOR_DECELERATE:I = 0x3

.field private static final INTERPOLATOR_LINEAR:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    sget v0, Lcom/shenma/tvlauncher/R$attr;->spbStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v2, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void

    .line 46
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar:[I

    const/4 v4, 0x0

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v1, v5, v3, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 50
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v7, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_color:I

    sget v8, Lcom/shenma/tvlauncher/R$color;->spb_default_color:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 51
    .local v7, "color":I
    sget v8, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_sections_count:I

    sget v9, Lcom/shenma/tvlauncher/R$integer;->spb_default_sections_count:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 52
    .local v8, "sectionsCount":I
    sget v9, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_stroke_separator_length:I

    sget v10, Lcom/shenma/tvlauncher/R$dimen;->spb_default_stroke_separator_length:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 53
    .local v9, "separatorLength":I
    sget v10, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_stroke_width:I

    sget v11, Lcom/shenma/tvlauncher/R$dimen;->spb_default_stroke_width:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 54
    .local v10, "strokeWidth":F
    sget v11, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_speed:I

    sget v12, Lcom/shenma/tvlauncher/R$string;->spb_default_speed:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 55
    .local v11, "speed":F
    sget v12, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_speed:I

    invoke-virtual {v3, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 56
    .local v12, "speedProgressiveStart":F
    sget v13, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStop_speed:I

    invoke-virtual {v3, v13, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 57
    .local v13, "speedProgressiveStop":F
    sget v14, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_interpolator:I

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 58
    .local v14, "iInterpolator":I
    sget v15, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_reversed:I

    sget v4, Lcom/shenma/tvlauncher/R$bool;->spb_default_reversed:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v3, v15, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 59
    .local v4, "reversed":Z
    sget v15, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_mirror_mode:I

    sget v5, Lcom/shenma/tvlauncher/R$bool;->spb_default_mirror_mode:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v3, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 60
    .local v5, "mirrorMode":Z
    sget v15, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_colors:I

    const/4 v6, 0x0

    invoke-virtual {v3, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 61
    .local v15, "colorsId":I
    sget v6, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    sget v0, Lcom/shenma/tvlauncher/R$bool;->spb_default_progressiveStart_activated:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 62
    .local v0, "progressiveStartActivated":Z
    sget v6, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_background:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 63
    .local v6, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v18, v7

    .end local v7    # "color":I
    .local v18, "color":I
    sget v7, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_generate_background_with_colors:I

    move-object/from16 v19, v6

    const/4 v6, 0x0

    .end local v6    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .local v19, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 64
    .local v7, "generateBackgroundWithColors":Z
    move/from16 v17, v7

    .end local v7    # "generateBackgroundWithColors":Z
    .local v17, "generateBackgroundWithColors":Z
    sget v7, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_gradients:I

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 65
    .local v6, "gradients":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    const/4 v7, 0x0

    .line 69
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v20, v3

    const/4 v3, -0x1

    .end local v3    # "a":Landroid/content/res/TypedArray;
    .local v20, "a":Landroid/content/res/TypedArray;
    if-ne v14, v3, :cond_1

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 72
    :cond_1
    if-nez v7, :cond_2

    .line 73
    packed-switch v14, :pswitch_data_0

    .line 85
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v7, v3

    goto :goto_0

    .line 78
    :pswitch_0
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v7, v3

    .line 79
    goto :goto_0

    .line 75
    :pswitch_1
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v7, v3

    .line 76
    goto :goto_0

    .line 81
    :pswitch_2
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v7, v3

    .line 82
    nop

    .line 89
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 91
    .local v3, "colors":[I
    if-eqz v15, :cond_3

    .line 92
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 95
    :cond_3
    move-object/from16 v16, v2

    .end local v2    # "res":Landroid/content/res/Resources;
    .local v16, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    invoke-direct {v2, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v2, v11}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->speed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v12}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStartSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v13}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStopSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v7}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v8}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->sectionsCount(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v9}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->separatorLength(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v10}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->strokeWidth(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->reversed(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v5}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mirrorMode(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStart(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v6}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v2

    .line 108
    .local v2, "builder":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    if-eqz v19, :cond_4

    .line 109
    move/from16 v21, v0

    move-object/from16 v0, v19

    .end local v19    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .local v21, "progressiveStartActivated":Z
    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    goto :goto_1

    .line 108
    .end local v21    # "progressiveStartActivated":Z
    .local v0, "progressiveStartActivated":Z
    .restart local v19    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    move/from16 v21, v0

    move-object/from16 v0, v19

    .line 112
    .end local v19    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "progressiveStartActivated":Z
    :goto_1
    if-eqz v17, :cond_5

    .line 113
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->generateBackgroundUsingColors()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 116
    :cond_5
    if-eqz v3, :cond_6

    move-object/from16 v19, v0

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    array-length v0, v3

    if-lez v0, :cond_7

    .line 117
    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->colors([I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move/from16 v0, v18

    goto :goto_2

    .line 116
    .end local v19    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v19, v0

    .line 119
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    move/from16 v0, v18

    .end local v18    # "color":I
    .local v0, "color":I
    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->color(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 121
    :goto_2
    move/from16 v18, v0

    .end local v0    # "color":I
    .restart local v18    # "color":I
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    .line 122
    .local v0, "d":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v1, :cond_0

    .line 217
    move-object v1, v0

    check-cast v1, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    return-object v1

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The drawable is not a SmoothProgressDrawable"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 5
    .param p1, "styleResId"    # I

    .line 126
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColor(I)V

    .line 131
    :cond_0
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_colors:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 133
    .local v1, "colorsId":I
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 135
    .local v2, "colors":[I
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColors([I)V

    .line 139
    .end local v1    # "colorsId":I
    .end local v2    # "colors":[I
    :cond_1
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_sections_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_sections_count:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSectionsCount(I)V

    .line 142
    :cond_2
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_stroke_separator_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_stroke_separator_length:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSeparatorLength(I)V

    .line 145
    :cond_3
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 146
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_stroke_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableStrokeWidth(F)V

    .line 148
    :cond_4
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_speed:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSpeed(F)V

    .line 151
    :cond_5
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_speed:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStartSpeed(F)V

    .line 154
    :cond_6
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStop_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStop_speed:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStopSpeed(F)V

    .line 157
    :cond_7
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_reversed:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_reversed:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableReversed(Z)V

    .line 160
    :cond_8
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_mirror_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_mirror_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableMirrorMode(Z)V

    .line 163
    :cond_9
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 164
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 166
    :cond_a
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 167
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_progressiveStart_activated:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 169
    :cond_b
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_gradients:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 170
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_gradients:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableUseGradients(Z)V

    .line 172
    :cond_c
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_generate_background_with_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 173
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_generate_background_with_colors:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 174
    nop

    .line 175
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->getColors()[I

    move-result-object v1

    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->getStrokeWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 174
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_d
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_interpolator:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 179
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->SmoothProgressBar_spb_interpolator:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 181
    .local v1, "iInterpolator":I
    packed-switch v1, :pswitch_data_0

    .line 195
    const/4 v2, 0x0

    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 186
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_0
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 187
    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 183
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 184
    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 189
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_2
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 190
    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 192
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_3
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 193
    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    nop

    .line 197
    :goto_0
    if-eqz v2, :cond_e

    .line 198
    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    .end local v1    # "iInterpolator":I
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 206
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local p0    # "this":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;
    :cond_0
    monitor-exit p0

    return-void

    .line 205
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public progressiveStart()V
    .locals 1

    .line 289
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->progressiveStart()V

    .line 290
    return-void
.end method

.method public progressiveStop()V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->progressiveStop()V

    .line 294
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 222
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 223
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v1, :cond_0

    .line 225
    move-object v1, v0

    check-cast v1, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v1, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    :cond_0
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 1
    .param p1, "progressiveStartActivated"    # Z

    .line 273
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartActivated(Z)V

    .line 274
    return-void
.end method

.method public setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 281
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void
.end method

.method public setSmoothProgressDrawableCallbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 277
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setCallbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V

    .line 278
    return-void
.end method

.method public setSmoothProgressDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 237
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setColor(I)V

    .line 238
    return-void
.end method

.method public setSmoothProgressDrawableColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .line 233
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setColors([I)V

    .line 234
    return-void
.end method

.method public setSmoothProgressDrawableInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 229
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    return-void
.end method

.method public setSmoothProgressDrawableMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .line 269
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setMirrorMode(Z)V

    .line 270
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStartSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 245
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartSpeed(F)V

    .line 246
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStopSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 249
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStopSpeed(F)V

    .line 250
    return-void
.end method

.method public setSmoothProgressDrawableReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .line 265
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setReversed(Z)V

    .line 266
    return-void
.end method

.method public setSmoothProgressDrawableSectionsCount(I)V
    .locals 1
    .param p1, "sectionsCount"    # I

    .line 253
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setSectionsCount(I)V

    .line 254
    return-void
.end method

.method public setSmoothProgressDrawableSeparatorLength(I)V
    .locals 1
    .param p1, "separatorLength"    # I

    .line 257
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setSeparatorLength(I)V

    .line 258
    return-void
.end method

.method public setSmoothProgressDrawableSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 241
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setSpeed(F)V

    .line 242
    return-void
.end method

.method public setSmoothProgressDrawableStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 261
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setStrokeWidth(F)V

    .line 262
    return-void
.end method

.method public setSmoothProgressDrawableUseGradients(Z)V
    .locals 1
    .param p1, "useGradients"    # Z

    .line 285
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setUseGradients(Z)V

    .line 286
    return-void
.end method

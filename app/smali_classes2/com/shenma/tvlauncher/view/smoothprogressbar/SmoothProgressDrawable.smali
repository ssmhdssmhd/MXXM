.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;,
        Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    }
.end annotation


# static fields
.field private static final FRAME_DURATION:J = 0x10L

.field private static final OFFSET_PER_FRAME:F = 0.01f


# instance fields
.field private final fBackgroundRect:Landroid/graphics/Rect;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mColors:[I

.field private mColorsIndex:I

.field private mCurrentOffset:F

.field private mCurrentSections:I

.field private mFinishing:Z

.field private mFinishingOffset:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearGradientColors:[I

.field private mLinearGradientPositions:[F

.field private mMaxOffset:F

.field private mMirrorMode:Z

.field private mNewTurn:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mRunning:Z

.field private mSectionsCount:I

.field private mSeparatorLength:I

.field private mSpeed:F

.field private mStartSection:I

.field private mStrokeWidth:F

.field private final mUpdater:Ljava/lang/Runnable;

.field private mUseGradients:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinishingOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressiveStartSpeed(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressiveStopSpeed(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpeed(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdater(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFinishingOffset(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;F)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNewTurn(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V
    .locals 12
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "sectionsCount"    # I
    .param p3, "separatorLength"    # I
    .param p4, "colors"    # [I
    .param p5, "strokeWidth"    # F
    .param p6, "speed"    # F
    .param p7, "progressiveStartSpeed"    # F
    .param p8, "progressiveStopSpeed"    # F
    .param p9, "reversed"    # Z
    .param p10, "mirrorMode"    # Z
    .param p11, "callbacks"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;
    .param p12, "progressiveStartActivated"    # Z
    .param p13, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p14, "useGradients"    # Z

    .line 95
    move/from16 v0, p5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    .line 600
    new-instance v1, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$1;-><init>(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 97
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 98
    iput p2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    .line 99
    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 100
    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 101
    move v2, p3

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    .line 102
    move/from16 v3, p6

    iput v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    .line 103
    move/from16 v4, p7

    iput v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    .line 104
    move/from16 v5, p8

    iput v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    .line 105
    move/from16 v6, p9

    iput-boolean v6, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    .line 106
    move-object/from16 v7, p4

    iput-object v7, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    .line 107
    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 108
    move/from16 v8, p10

    iput-boolean v8, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    .line 109
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 110
    move-object/from16 v9, p13

    iput-object v9, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    .line 113
    iget v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v10

    iput v11, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    .line 115
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 119
    iget-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    move/from16 v1, p12

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    .line 122
    move-object/from16 v10, p11

    iput-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 124
    move/from16 v11, p14

    iput-boolean v11, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    .line 125
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private checkColorIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 639
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 642
    return-void

    .line 640
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Index %d not valid"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .line 495
    add-int/lit8 p1, p1, -0x1

    .line 496
    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 497
    :cond_0
    return p1
.end method

.method private drawBackground(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fromX"    # F
    .param p3, "toX"    # F

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 480
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    .line 480
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 482
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 484
    return-void
.end method

.method private drawBackgroundIfNeeded(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstX"    # F
    .param p3, "lastX"    # F

    .line 407
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 410
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 412
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 413
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 414
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 417
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 418
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 421
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 422
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 428
    :goto_1
    return-void

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isStarting()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 433
    :cond_4
    cmpl-float v0, p2, p3

    if-lez v0, :cond_5

    .line 434
    move v0, p2

    .line 435
    .local v0, "temp":F
    move p2, p3

    .line 436
    move p3, v0

    .line 439
    .end local v0    # "temp":F
    :cond_5
    cmpl-float v0, p2, v3

    if-lez v0, :cond_8

    .line 440
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v0, :cond_7

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 443
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_6

    .line 444
    invoke-direct {p0, p1, v3, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 445
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 446
    invoke-direct {p0, p1, v3, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 448
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 449
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 452
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 454
    :cond_7
    invoke-direct {p0, p1, v3, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 457
    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_b

    .line 458
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v0, :cond_a

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 461
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_9

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 463
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 464
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_4

    .line 466
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 467
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-direct {p0, p1, v3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 470
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 472
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p3, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 475
    :cond_b
    :goto_5
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;IFFFFI)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "canvasWidth"    # I
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "stopX"    # F
    .param p6, "stopY"    # F
    .param p7, "currentIndexColor"    # I

    .line 390
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v1, v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v6, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p3    # "startX":F
    .end local p4    # "startY":F
    .end local p5    # "stopX":F
    .end local p6    # "stopY":F
    .local v1, "canvas":Landroid/graphics/Canvas;
    .local v2, "startX":F
    .local v3, "startY":F
    .local v4, "stopX":F
    .local v5, "stopY":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move p1, v2

    move p3, v4

    move-object v0, v1

    move v2, v3

    move v4, v5

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "startY":F
    .end local v5    # "stopY":F
    .local v0, "canvas":Landroid/graphics/Canvas;
    .local v2, "startY":F
    .local v4, "stopY":F
    .local p1, "startX":F
    .local p3, "stopX":F
    goto :goto_0

    .line 395
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "startY":F
    .end local v4    # "stopY":F
    .local p1, "canvas":Landroid/graphics/Canvas;
    .local p3, "startX":F
    .restart local p4    # "startY":F
    .restart local p5    # "stopX":F
    .restart local p6    # "stopY":F
    :cond_0
    move-object v0, p1

    move p1, p3

    move v2, p4

    move p3, p5

    move v4, p6

    .end local p4    # "startY":F
    .end local p5    # "stopX":F
    .end local p6    # "stopY":F
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "startY":F
    .restart local v4    # "stopY":F
    .local p1, "startX":F
    .local p3, "stopX":F
    iget-boolean p4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz p4, :cond_1

    .line 396
    int-to-float p4, p2

    add-float v1, p4, p1

    int-to-float p4, p2

    add-float v3, p4, p3

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 397
    int-to-float p4, p2

    sub-float v1, p4, p1

    int-to-float p4, p2

    sub-float v3, p4, p3

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v3, p3

    .end local p1    # "startX":F
    .end local p3    # "stopX":F
    .local v1, "startX":F
    .local v3, "stopX":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 400
    .end local v1    # "startX":F
    .end local v3    # "stopX":F
    .restart local p1    # "startX":F
    .restart local p3    # "stopX":F
    mul-int/lit8 p4, p2, 0x2

    int-to-float p4, p4

    sub-float v1, p4, p1

    mul-int/lit8 p4, p2, 0x2

    int-to-float p4, p4

    sub-float v3, p4, p3

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    :goto_0
    return-void
.end method

.method private drawStrokes(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 330
    :cond_0
    const/4 v2, 0x0

    .line 331
    .local v2, "prevValue":F
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 332
    .local v3, "boundsWidth":I
    iget-boolean v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v4, :cond_1

    div-int/lit8 v3, v3, 0x2

    .line 333
    :cond_1
    iget v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    add-int/2addr v4, v3

    iget v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int v10, v4, v5

    .line 334
    .local v10, "width":I
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 335
    .local v11, "centerY":I
    iget v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v4, v4

    div-float v12, v9, v4

    .line 339
    .local v12, "xSectionWidth":F
    const/4 v4, 0x0

    .line 340
    .local v4, "firstX":F
    const/4 v5, 0x0

    .line 348
    .local v5, "lastX":F
    iget v6, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 350
    .local v6, "currentIndexColor":I
    iget v7, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    iget v13, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-ne v7, v13, :cond_2

    iget v7, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    iget v13, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ne v7, v13, :cond_2

    .line 351
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 354
    :cond_2
    const/4 v7, 0x0

    move v13, v2

    move v14, v4

    move v15, v5

    move v2, v7

    move v7, v6

    .end local v4    # "firstX":F
    .end local v5    # "lastX":F
    .end local v6    # "currentIndexColor":I
    .local v2, "i":I
    .local v7, "currentIndexColor":I
    .local v13, "prevValue":F
    .local v14, "firstX":F
    .local v15, "lastX":F
    :goto_0
    iget v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-gt v2, v4, :cond_9

    .line 355
    int-to-float v4, v2

    mul-float v4, v4, v12

    iget v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v4, v5

    .line 356
    .local v4, "xOffset":F
    sub-float v5, v4, v12

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 357
    .local v5, "prev":F
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    iget-object v8, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 358
    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v8, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v6, v1

    .line 357
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 359
    .local v8, "ratioSectionWidth":F
    int-to-float v1, v10

    mul-float v1, v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    .line 361
    .local v1, "sectionWidth":F
    add-float v6, v1, v5

    int-to-float v9, v10

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    .line 362
    iget v6, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move v9, v6

    .local v6, "spaceLength":F
    goto :goto_1

    .line 364
    .end local v6    # "spaceLength":F
    :cond_3
    const/4 v6, 0x0

    move v9, v6

    .line 366
    .local v9, "spaceLength":F
    :goto_1
    cmpl-float v6, v1, v9

    if-lez v6, :cond_4

    sub-float v6, v1, v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    move/from16 v17, v6

    .line 367
    .local v17, "drawLength":F
    add-float v6, v13, v17

    .line 368
    .local v6, "end":F
    cmpl-float v18, v6, v13

    if-lez v18, :cond_6

    move/from16 v18, v1

    .end local v1    # "sectionWidth":F
    .local v18, "sectionWidth":F
    iget v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    if-lt v2, v1, :cond_5

    .line 369
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v19, v2

    .end local v2    # "i":I
    .local v19, "i":I
    iget v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    move/from16 v20, v8

    const/high16 v8, 0x3f800000    # 1.0f

    .end local v8    # "ratioSectionWidth":F
    .local v20, "ratioSectionWidth":F
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v16

    .line 370
    .local v16, "xFinishingOffset":F
    int-to-float v1, v10

    mul-float v1, v1, v16

    int-to-float v2, v3

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 371
    .local v1, "startX":F
    int-to-float v2, v3

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 372
    .local v2, "endX":F
    move/from16 v21, v4

    .end local v4    # "xOffset":F
    .local v21, "xOffset":F
    int-to-float v4, v11

    move/from16 v22, v6

    .end local v6    # "end":F
    .local v22, "end":F
    int-to-float v6, v11

    move/from16 v8, v19

    move/from16 v19, v18

    move/from16 v18, v5

    move v5, v2

    move v2, v3

    move v3, v1

    move-object/from16 v1, p1

    .end local v1    # "startX":F
    .local v2, "boundsWidth":I
    .local v3, "startX":F
    .local v5, "endX":F
    .local v8, "i":I
    .local v18, "prev":F
    .local v19, "sectionWidth":F
    invoke-direct/range {v0 .. v7}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawLine(Landroid/graphics/Canvas;IFFFFI)V

    .line 373
    iget v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    if-ne v8, v4, :cond_7

    .line 374
    iget v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    move v14, v4

    .end local v14    # "firstX":F
    .local v4, "firstX":F
    goto :goto_3

    .line 368
    .end local v16    # "xFinishingOffset":F
    .end local v19    # "sectionWidth":F
    .end local v20    # "ratioSectionWidth":F
    .end local v21    # "xOffset":F
    .end local v22    # "end":F
    .local v2, "i":I
    .local v3, "boundsWidth":I
    .local v4, "xOffset":F
    .local v5, "prev":F
    .restart local v6    # "end":F
    .local v8, "ratioSectionWidth":F
    .restart local v14    # "firstX":F
    .local v18, "sectionWidth":F
    :cond_5
    move-object/from16 v1, p1

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v20, v8

    move/from16 v19, v18

    move v8, v2

    move v2, v3

    move/from16 v18, v5

    .end local v3    # "boundsWidth":I
    .end local v4    # "xOffset":F
    .end local v5    # "prev":F
    .end local v6    # "end":F
    .local v2, "boundsWidth":I
    .local v8, "i":I
    .local v18, "prev":F
    .restart local v19    # "sectionWidth":F
    .restart local v20    # "ratioSectionWidth":F
    .restart local v21    # "xOffset":F
    .restart local v22    # "end":F
    goto :goto_3

    .end local v18    # "prev":F
    .end local v19    # "sectionWidth":F
    .end local v20    # "ratioSectionWidth":F
    .end local v21    # "xOffset":F
    .end local v22    # "end":F
    .local v1, "sectionWidth":F
    .local v2, "i":I
    .restart local v3    # "boundsWidth":I
    .restart local v4    # "xOffset":F
    .restart local v5    # "prev":F
    .restart local v6    # "end":F
    .local v8, "ratioSectionWidth":F
    :cond_6
    move/from16 v19, v1

    move/from16 v21, v4

    move/from16 v18, v5

    move/from16 v22, v6

    move/from16 v20, v8

    move-object/from16 v1, p1

    move v8, v2

    move v2, v3

    .line 377
    .end local v1    # "sectionWidth":F
    .end local v3    # "boundsWidth":I
    .end local v4    # "xOffset":F
    .end local v5    # "prev":F
    .end local v6    # "end":F
    .local v2, "boundsWidth":I
    .local v8, "i":I
    .restart local v18    # "prev":F
    .restart local v19    # "sectionWidth":F
    .restart local v20    # "ratioSectionWidth":F
    .restart local v21    # "xOffset":F
    .restart local v22    # "end":F
    :cond_7
    :goto_3
    iget v3, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-ne v8, v3, :cond_8

    .line 378
    add-float v3, v13, v19

    move v15, v3

    .line 381
    :cond_8
    add-float v13, v22, v9

    .line 382
    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->incrementColor(I)I

    move-result v7

    .line 354
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v2

    move v2, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .end local v8    # "i":I
    .local v3, "i":I
    goto/16 :goto_0

    .line 385
    .end local v2    # "boundsWidth":I
    .end local v9    # "spaceLength":F
    .end local v17    # "drawLength":F
    .end local v18    # "prev":F
    .end local v19    # "sectionWidth":F
    .end local v20    # "ratioSectionWidth":F
    .end local v21    # "xOffset":F
    .end local v22    # "end":F
    .local v3, "boundsWidth":I
    :cond_9
    invoke-direct {v0, v1, v14, v15}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawBackgroundIfNeeded(Landroid/graphics/Canvas;FF)V

    .line 386
    return-void
.end method

.method private incrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .line 488
    add-int/lit8 p1, p1, 0x1

    .line 489
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 490
    :cond_0
    return p1
.end method

.method private prepareGradient()V
    .locals 12

    .line 291
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 292
    .local v0, "xSectionWidth":F
    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 294
    .local v2, "currentIndexColor":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 295
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput v1, v3, v4

    .line 296
    add-int/lit8 v1, v2, -0x1

    .line 297
    .local v1, "firstColorIndex":I
    if-gez v1, :cond_0

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v3, v3

    add-int/2addr v1, v3

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v4, v4, v1

    aput v4, v3, v5

    .line 301
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v3, v4, :cond_1

    .line 303
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v5, v3

    mul-float v5, v5, v0

    iget v6, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 304
    .local v4, "position":F
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v6

    .line 305
    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v7, v7, v2

    aput v7, v5, v6

    .line 307
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v6, v6

    rem-int v2, v5, v6

    .line 301
    .end local v4    # "position":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v5, v5, v2

    aput v5, v3, v4

    .line 311
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v3, v3

    move v5, v3

    .line 312
    .local v5, "left":F
    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_2
    int-to-float v3, v3

    move v7, v3

    goto :goto_3

    .line 313
    :cond_5
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move v7, v3

    :goto_3
    nop

    .line 314
    .local v7, "right":F
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    .line 315
    .local v3, "top":F
    iget-object v4, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget v8, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    div-float/2addr v8, v6

    add-float/2addr v8, v4

    .line 316
    .local v8, "bottom":F
    new-instance v4, Landroid/graphics/LinearGradient;

    iget-object v9, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    iget-object v10, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    .line 318
    iget-boolean v6, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v6, :cond_6

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_4

    :cond_6
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_4
    move-object v11, v6

    move v6, v3

    .end local v3    # "top":F
    .local v6, "top":F
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 320
    .local v4, "linearGradient":Landroid/graphics/LinearGradient;
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 321
    return-void
.end method

.method private refreshLinearGradientOptions()V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-eqz v0, :cond_0

    .line 248
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    .line 249
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 252
    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    .line 253
    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    .line 255
    :goto_0
    return-void
.end method

.method private resetProgressiveStart(I)V
    .locals 2
    .param p1, "index"    # I

    .line 522
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->checkColorIndex(I)V

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 526
    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    .line 527
    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 528
    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 529
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 530
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 262
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    .line 263
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 266
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    if-eqz v0, :cond_1

    .line 267
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->decrementColor(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    .line 270
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 273
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-le v0, v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->stop()V

    .line 275
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v0, v1, :cond_1

    .line 279
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-eqz v0, :cond_2

    .line 284
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->prepareGradient()V

    .line 286
    :cond_2
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->drawStrokes(Landroid/graphics/Canvas;)V

    .line 287
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 553
    const/4 v0, -0x2

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    return v0
.end method

.method public isStarting()Z
    .locals 2

    .line 593
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public progressiveStart()V
    .locals 1

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->progressiveStart(I)V

    .line 507
    return-void
.end method

.method public progressiveStart(I)V
    .locals 0
    .param p1, "index"    # I

    .line 516
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->resetProgressiveStart(I)V

    .line 517
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->start()V

    .line 518
    return-void
.end method

.method public progressiveStop()V
    .locals 1

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 539
    return-void
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 584
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 585
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 543
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 544
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 215
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 218
    return-void
.end method

.method public setCallbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 632
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 633
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 150
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->setColors([I)V

    .line 151
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 548
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 549
    return-void
.end method

.method public setColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .line 140
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 143
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    .line 144
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 145
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 146
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 133
    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .line 208
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 209
    :cond_0
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    .line 210
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 211
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 0
    .param p1, "progressiveStartActivated"    # Z

    .line 234
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    .line 235
    return-void
.end method

.method public setProgressiveStartSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 162
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 163
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    .line 164
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 165
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStart must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProgressiveStopSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 169
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 170
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    .line 171
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 172
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStop must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .line 201
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    .line 203
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 204
    return-void
.end method

.method public setSectionsCount(I)V
    .locals 2
    .param p1, "sectionsCount"    # I

    .line 176
    if-lez p1, :cond_0

    .line 177
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    .line 178
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    .line 179
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    .line 180
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 181
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 182
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeparatorLength(I)V
    .locals 2
    .param p1, "separatorLength"    # I

    .line 186
    if-ltz p1, :cond_0

    .line 188
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    .line 189
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 190
    return-void

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 155
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 156
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    .line 157
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 158
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .line 194
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 197
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseGradients(Z)V
    .locals 1
    .param p1, "useGradients"    # Z

    .line 239
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 241
    :cond_0
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    .line 242
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 243
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 244
    return-void
.end method

.method public start()V
    .locals 5

    .line 560
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->resetProgressiveStart(I)V

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    invoke-interface {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;->onStart()V

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 568
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 569
    return-void
.end method

.method public stop()V
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    invoke-interface {v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;->onStop()V

    .line 577
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 578
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method

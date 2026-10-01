.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

.field private mColors:[I

.field private mGenerateBackgroundUsingColors:Z

.field private mGradients:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mOnProgressiveStopEndedListener:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;Z)V

    .line 670
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editMode"    # Z

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;Z)V

    .line 674
    return-void
.end method

.method private initValues(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editMode"    # Z

    .line 699
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 700
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 701
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 702
    sget v2, Lcom/shenma/tvlauncher/R$integer;->spb_default_sections_count:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 703
    sget v2, Lcom/shenma/tvlauncher/R$string;->spb_default_speed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 704
    sget v2, Lcom/shenma/tvlauncher/R$bool;->spb_default_reversed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 705
    sget v2, Lcom/shenma/tvlauncher/R$bool;->spb_default_progressiveStart_activated:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 706
    sget v2, Lcom/shenma/tvlauncher/R$color;->spb_default_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 707
    sget v2, Lcom/shenma/tvlauncher/R$dimen;->spb_default_stroke_separator_length:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 708
    sget v2, Lcom/shenma/tvlauncher/R$dimen;->spb_default_stroke_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    goto :goto_0

    .line 710
    :cond_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 711
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 712
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 713
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 714
    const v3, -0xcc4a1b

    filled-new-array {v3}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 715
    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 716
    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 718
    :goto_0
    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 719
    iget v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 720
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 721
    return-void
.end method


# virtual methods
.method public backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "backgroundDrawableWhenHidden"    # Landroid/graphics/drawable/Drawable;

    .line 797
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 798
    return-object p0
.end method

.method public build()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    .locals 18

    .line 677
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    iget v2, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 680
    :cond_0
    new-instance v2, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v4, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    iget v5, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    iget-object v6, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    iget v7, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    iget v8, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iget v9, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    iget v10, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    iget-boolean v11, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    iget-boolean v12, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    iget-object v13, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    iget-boolean v14, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    iget-object v15, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable-IA;)V

    .line 695
    .local v2, "ret":Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable;
    return-object v2
.end method

.method public callbacks(Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "onProgressiveStopEndedListener"    # Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 792
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 793
    return-object p0
.end method

.method public color(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "color"    # I

    .line 742
    filled-new-array {p1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 743
    return-object p0
.end method

.method public colors([I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "colors"    # [I

    .line 747
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkColors([I)V

    .line 748
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 749
    return-object p0
.end method

.method public generateBackgroundUsingColors()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    .line 803
    return-object p0
.end method

.method public gradients()Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .line 807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradients(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "useGradients"    # Z

    .line 811
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 812
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 724
    const-string v0, "Interpolator"

    invoke-static {p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 726
    return-object p0
.end method

.method public mirrorMode(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "mirrorMode"    # Z

    .line 782
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 783
    return-object p0
.end method

.method public progressiveStart(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartActivated"    # Z

    .line 787
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 788
    return-object p0
.end method

.method public progressiveStartSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartSpeed"    # F

    .line 765
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 766
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 767
    return-object p0
.end method

.method public progressiveStopSpeed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStopSpeed"    # F

    .line 771
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 772
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 773
    return-object p0
.end method

.method public reversed(Z)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "reversed"    # Z

    .line 777
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 778
    return-object p0
.end method

.method public sectionsCount(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "sectionsCount"    # I

    .line 730
    const-string v0, "Sections count"

    invoke-static {p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkPositive(ILjava/lang/String;)V

    .line 731
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 732
    return-object p0
.end method

.method public separatorLength(I)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "separatorLength"    # I

    .line 736
    int-to-float v0, p1

    const-string v1, "Separator length"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkPositiveOrZero(FLjava/lang/String;)V

    .line 737
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 738
    return-object p0
.end method

.method public speed(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "speed"    # F

    .line 759
    invoke-static {p1}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 760
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 761
    return-object p0
.end method

.method public strokeWidth(F)Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "width"    # F

    .line 753
    const-string v0, "Width"

    invoke-static {p1, v0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressBarUtils;->checkPositiveOrZero(FLjava/lang/String;)V

    .line 754
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 755
    return-object p0
.end method

.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroidx/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 52
    .local v5, "terminalX":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 53
    .local v6, "terminalY":F
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v7, v0

    check-cast v7, [I

    .line 54
    .local v7, "startPosition":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 55
    aget v2, v7, v1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    add-float/2addr v2, v5

    .line 56
    .end local p4    # "startX":F
    .local v2, "startX":F
    aget v3, v7, v0

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float/2addr v3, v6

    move v8, v2

    move v9, v3

    .end local p5    # "startY":F
    .local v3, "startY":F
    goto :goto_0

    .line 54
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .restart local p4    # "startX":F
    .restart local p5    # "startY":F
    :cond_0
    move/from16 v8, p4

    move/from16 v9, p5

    .line 59
    .end local p4    # "startX":F
    .end local p5    # "startY":F
    .local v8, "startX":F
    .local v9, "startY":F
    :goto_0
    sub-float v2, v8, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v3, p2, v2

    .line 60
    .local v3, "startPosX":I
    sub-float v2, v9, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v4, p3, v2

    .line 62
    .local v4, "startPosY":I
    invoke-virtual {p0, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    invoke-virtual {p0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    cmpl-float v2, v8, p6

    if-nez v2, :cond_1

    cmpl-float v2, v9, p7

    if-nez v2, :cond_1

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_1
    const/4 v2, 0x2

    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v2, [F

    aput v8, v12, v1

    aput p6, v12, v0

    .line 68
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v10, v1

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v9, v2, v1

    aput p7, v2, v0

    .line 69
    invoke-static {v11, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v10, v0

    .line 67
    invoke-static {p0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 71
    .local v10, "anim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 73
    .local v0, "listener":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-static {v10, v0}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 75
    move-object/from16 v1, p8

    invoke-virtual {v10, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    return-object v10
.end method

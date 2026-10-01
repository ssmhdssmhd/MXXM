.class public Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "depthZ"    # F
    .param p6, "reverse"    # Z

    .line 38
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 39
    iput p1, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mFromDegrees:F

    .line 40
    iput p2, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mToDegrees:F

    .line 41
    iput p3, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mCenterX:F

    .line 42
    iput p4, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mCenterY:F

    .line 43
    iput p5, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mDepthZ:F

    .line 44
    iput-boolean p6, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mReverse:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 58
    iget v0, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mFromDegrees:F

    .line 60
    .local v0, "fromDegrees":F
    iget v1, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    .line 61
    .local v1, "degrees":F
    iget v2, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mCenterX:F

    .line 62
    .local v2, "centerX":F
    iget v3, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mCenterY:F

    .line 63
    .local v3, "centerY":F
    iget-object v4, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 64
    .local v4, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 65
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 66
    iget-boolean v6, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mReverse:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 67
    iget v6, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mDepthZ:F

    mul-float v6, v6, p1

    invoke-virtual {v4, v7, v7, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 69
    :cond_0
    iget v6, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mDepthZ:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p1

    mul-float v6, v6, v8

    invoke-virtual {v4, v7, v7, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 71
    :goto_0
    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 73
    invoke-virtual {v4, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 74
    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 75
    neg-float v6, v2

    neg-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 76
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 50
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/anim/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 51
    return-void
.end method

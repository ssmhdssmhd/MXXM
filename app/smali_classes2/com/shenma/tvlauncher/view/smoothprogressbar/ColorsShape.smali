.class public Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "ColorsShape.java"


# instance fields
.field private mColors:[I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(F[I)V
    .locals 0
    .param p1, "strokeWidth"    # F
    .param p2, "colors"    # [I

    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 17
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    .line 18
    iput-object p2, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mColors:[I

    .line 19
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mColors:[I

    array-length v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v6, v1, v0

    .line 40
    .local v6, "ratio":F
    const/4 v0, 0x0

    .line 41
    .local v0, "i":I
    iget v1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v7, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mColors:[I

    array-length v8, v7

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    aget v10, v7, v9

    .line 43
    .local v10, "color":I
    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    int-to-float v1, v0

    mul-float v1, v1, v6

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->getWidth()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->getHeight()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-int/lit8 v11, v0, 0x1

    .end local v0    # "i":I
    .local v11, "i":I
    int-to-float v0, v11

    mul-float v0, v0, v6

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->getWidth()F

    move-result v4

    mul-float v0, v0, v4

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->getHeight()F

    move-result v4

    div-float/2addr v4, v3

    move-object v5, p2

    move v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    .end local v10    # "color":I
    add-int/lit8 v9, v9, 0x1

    move v0, v11

    goto :goto_0

    .line 46
    .end local v11    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getColors()[I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mColors:[I

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    return v0
.end method

.method public setColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .line 34
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mColors:[I

    .line 35
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .line 26
    iput p1, p0, Lcom/shenma/tvlauncher/view/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    .line 27
    return-void
.end method

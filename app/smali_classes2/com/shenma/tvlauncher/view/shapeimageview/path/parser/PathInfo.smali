.class public Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
.super Ljava/lang/Object;
.source "PathInfo.java"


# instance fields
.field private final height:F

.field private final path:Landroid/graphics/Path;

.field private final width:F


# direct methods
.method constructor <init>(Landroid/graphics/Path;FF)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->path:Landroid/graphics/Path;

    .line 15
    move v0, p2

    .line 16
    .local v0, "tmpWidth":F
    move v1, p3

    .line 17
    .local v1, "tmpHeight":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 18
    .local v2, "bounds":Landroid/graphics/RectF;
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 19
    const/4 v3, 0x0

    cmpg-float v4, p2, v3

    if-gtz v4, :cond_0

    cmpg-float v3, p3, v3

    if-gtz v3, :cond_0

    .line 20
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 21
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 22
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 23
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    .line 22
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Path;->offset(FF)V

    .line 26
    :cond_0
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->width:F

    .line 27
    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->height:F

    .line 28
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->width:F

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 39
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 40
    return-void
.end method

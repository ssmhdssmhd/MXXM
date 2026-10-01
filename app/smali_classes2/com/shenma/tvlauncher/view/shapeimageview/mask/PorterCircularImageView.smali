.class public Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;
.super Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;
.source "PorterCircularImageView.java"


# instance fields
.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->rect:Landroid/graphics/RectF;

    .line 14
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->setup()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->rect:Landroid/graphics/RectF;

    .line 19
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->setup()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->rect:Landroid/graphics/RectF;

    .line 24
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->setup()V

    .line 25
    return-void
.end method

.method private setup()V
    .locals 1

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->setSquare(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method protected paintMaskCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 5
    .param p1, "maskCanvas"    # Landroid/graphics/Canvas;
    .param p2, "maskPaint"    # Landroid/graphics/Paint;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 34
    .local v0, "radius":F
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->rect:Landroid/graphics/RectF;

    int-to-float v2, p3

    int-to-float v3, p4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 35
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/mask/PorterCircularImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

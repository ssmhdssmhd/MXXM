.class public Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;
.super Ljava/lang/Object;
.source "ZoomOutPageTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static MIN_ALPHA:F

.field private static MIN_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const v0, 0x3f59999a    # 0.85f

    sput v0, Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;->MIN_SCALE:F

    .line 8
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;->MIN_ALPHA:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 13
    .local v0, "pageWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 14
    .local v1, "pageHeight":I
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 16
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 17
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v4, p2, v2

    if-gtz v4, :cond_2

    .line 20
    sget v4, Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;->MIN_SCALE:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 21
    .local v4, "scaleFactor":F
    int-to-float v5, v1

    sub-float v6, v2, v4

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 22
    .local v5, "vertMargin":F
    int-to-float v7, v0

    sub-float v8, v2, v4

    mul-float v7, v7, v8

    div-float/2addr v7, v6

    .line 23
    .local v7, "horzMargin":F
    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    .line 24
    div-float v3, v5, v6

    sub-float v3, v7, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 26
    :cond_1
    neg-float v3, v7

    div-float v6, v5, v6

    add-float/2addr v3, v6

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 29
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 30
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 32
    sget v3, Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;->MIN_ALPHA:F

    sget v6, Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;->MIN_SCALE:F

    sub-float v6, v4, v6

    sget v8, Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;->MIN_SCALE:F

    sub-float v8, v2, v8

    div-float/2addr v6, v8

    sget v8, Lcom/shenma/tvlauncher/ui/ZoomOutPageTransformer;->MIN_ALPHA:F

    sub-float/2addr v2, v8

    mul-float v6, v6, v2

    add-float/2addr v3, v6

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 34
    .end local v4    # "scaleFactor":F
    .end local v5    # "vertMargin":F
    .end local v7    # "horzMargin":F
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 38
    :goto_1
    return-void
.end method

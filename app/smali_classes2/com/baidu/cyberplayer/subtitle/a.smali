.class public Lcom/baidu/cyberplayer/subtitle/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/subtitle/c$a;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/a;->a:F

    .line 27
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/a;->b:F

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/baidu/cyberplayer/utils/v;Landroid/text/TextPaint;II)V
    .locals 9

    .line 37
    nop

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/a;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    .line 40
    if-nez p2, :cond_0

    .line 41
    const-string p2, " "

    move-object v2, p2

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/v;->a()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    .line 46
    :goto_0
    new-instance v1, Landroid/text/StaticLayout;

    float-to-int v4, v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 48
    iget p2, p0, Lcom/baidu/cyberplayer/subtitle/a;->a:F

    .line 49
    int-to-float p3, p5

    .line 50
    if-nez p4, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p3

    sub-int/2addr p3, p5

    int-to-float p3, p3

    iget p4, p0, Lcom/baidu/cyberplayer/subtitle/a;->b:F

    add-float/2addr p3, p4

    .line 52
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p4

    .line 53
    int-to-float p4, p4

    sub-float/2addr p3, p4

    goto :goto_1

    .line 54
    :cond_1
    const/4 p5, 0x1

    if-ne p4, p5, :cond_2

    .line 55
    nop

    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.class public Lcom/baidu/cyberplayer/subtitle/c;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/subtitle/c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/text/TextPaint;

.field private a:Lcom/baidu/cyberplayer/subtitle/c$a;

.field private a:Lcom/baidu/cyberplayer/utils/v;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/c;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 87
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Landroid/text/TextPaint;

    .line 88
    const-string v0, "#FFB5B5B5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 90
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 91
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 92
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    const/high16 p1, 0x41b00000    # 22.0f

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, p1

    .line 94
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 95
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:I

    .line 96
    const/high16 p1, 0x41700000    # 15.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/c;->b:I

    .line 97
    return-void
.end method

.method private c(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->getDisplayColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 105
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->getDisplayFontSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 106
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->getSubtitleAlign()I

    move-result v0

    iput v0, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:I

    .line 107
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->getDisplayPadding()I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/c;->b:I

    .line 108
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/c;->c(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V

    .line 227
    return-void
.end method

.method a(Lcom/baidu/cyberplayer/subtitle/c$a;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Lcom/baidu/cyberplayer/subtitle/c$a;

    .line 132
    return-void
.end method

.method a(Lcom/baidu/cyberplayer/utils/v;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Lcom/baidu/cyberplayer/utils/v;

    .line 140
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/c;->postInvalidate()V

    .line 141
    return-void
.end method

.method b(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V
    .locals 0

    .line 115
    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings$a;)V

    .line 116
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 145
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/c;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Lcom/baidu/cyberplayer/subtitle/c$a;

    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Lcom/baidu/cyberplayer/subtitle/c$a;

    iget-object v3, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Lcom/baidu/cyberplayer/utils/v;

    iget-object v4, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:Landroid/text/TextPaint;

    iget v5, p0, Lcom/baidu/cyberplayer/subtitle/c;->a:I

    iget v6, p0, Lcom/baidu/cyberplayer/subtitle/c;->b:I

    move-object v2, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-interface/range {v1 .. v6}, Lcom/baidu/cyberplayer/subtitle/c$a;->a(Landroid/graphics/Canvas;Lcom/baidu/cyberplayer/utils/v;Landroid/text/TextPaint;II)V

    goto :goto_0

    .line 149
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    move-object v2, p1

    .line 152
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void
.end method

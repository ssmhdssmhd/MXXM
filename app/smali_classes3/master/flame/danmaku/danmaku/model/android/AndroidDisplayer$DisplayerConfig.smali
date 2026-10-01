.class public Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;
.super Ljava/lang/Object;
.source "AndroidDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayerConfig"
.end annotation


# static fields
.field public static final BORDER_WIDTH:I = 0x4


# instance fields
.field private ALPHA_PAINT:Landroid/graphics/Paint;

.field private ANTI_ALIAS:Z

.field private BORDER_PAINT:Landroid/graphics/Paint;

.field public CONFIG_ANTI_ALIAS:Z

.field public CONFIG_HAS_PROJECTION:Z

.field public CONFIG_HAS_SHADOW:Z

.field public CONFIG_HAS_STROKE:Z

.field public HAS_PROJECTION:Z

.field private HAS_SHADOW:Z

.field private HAS_STROKE:Z

.field public final PAINT:Landroid/text/TextPaint;

.field public final PAINT_DUPLICATE:Landroid/text/TextPaint;

.field private SHADOW_RADIUS:F

.field private STROKE_WIDTH:F

.field public UNDERLINE_HEIGHT:I

.field private UNDERLINE_PAINT:Landroid/graphics/Paint;

.field private allMarginTop:I

.field private isTextScaled:Z

.field private isTranslucent:Z

.field private margin:I

.field private final sCachedScaleSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private sLastScaleTextSize:F

.field private sProjectionAlpha:I

.field public sProjectionOffsetX:F

.field public sProjectionOffsetY:F

.field private scaleTextSize:F

.field private transparency:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sCachedScaleSize:Ljava/util/Map;

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_HEIGHT:I

    .line 64
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->SHADOW_RADIUS:F

    .line 69
    const/high16 v1, 0x40600000    # 3.5f

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->STROKE_WIDTH:F

    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetX:F

    .line 75
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetY:F

    .line 76
    const/16 v2, 0xcc

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionAlpha:I

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_SHADOW:Z

    .line 82
    iget-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_SHADOW:Z

    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_SHADOW:Z

    .line 87
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_STROKE:Z

    .line 88
    iget-boolean v4, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_STROKE:Z

    iput-boolean v4, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_STROKE:Z

    .line 93
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_PROJECTION:Z

    .line 94
    iget-boolean v4, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_PROJECTION:Z

    iput-boolean v4, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    .line 99
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_ANTI_ALIAS:Z

    .line 100
    iget-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_ANTI_ALIAS:Z

    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->ANTI_ALIAS:Z

    .line 102
    sget v3, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    iput v3, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->transparency:I

    .line 103
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->scaleTextSize:F

    .line 104
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->isTextScaled:Z

    .line 105
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->margin:I

    .line 106
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->allMarginTop:I

    .line 109
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    .line 110
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->STROKE_WIDTH:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 111
    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT_DUPLICATE:Landroid/text/TextPaint;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->ALPHA_PAINT:Landroid/graphics/Paint;

    .line 113
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    .line 114
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->BORDER_PAINT:Landroid/graphics/Paint;

    .line 117
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->BORDER_PAINT:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->BORDER_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)I
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    .line 39
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->margin:I

    return v0
.end method

.method static synthetic access$002(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;I)I
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->margin:I

    return p1
.end method

.method static synthetic access$100(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)I
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    .line 39
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->allMarginTop:I

    return v0
.end method

.method static synthetic access$102(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;I)I
    .locals 0
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->allMarginTop:I

    return p1
.end method

.method static synthetic access$200(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    .line 39
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->ALPHA_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)Z
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    .line 39
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_STROKE:Z

    return v0
.end method

.method private applyTextScaleConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 157
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->isTextScaled:Z

    if-nez v0, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sCachedScaleSize:Ljava/util/Map;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 161
    .local v0, "size":Ljava/lang/Float;
    if-eqz v0, :cond_1

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sLastScaleTextSize:F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->scaleTextSize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 162
    :cond_1
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->scaleTextSize:F

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sLastScaleTextSize:F

    .line 163
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->scaleTextSize:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sCachedScaleSize:Ljava/util/Map;

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    return-void
.end method


# virtual methods
.method public applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "stroke"    # Z

    .line 206
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->isTranslucent:Z

    const v1, 0xffffff

    if-eqz v0, :cond_3

    .line 207
    if-eqz p3, :cond_2

    .line 208
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    and-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionAlpha:I

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->transparency:I

    int-to-float v1, v1

    sget v2, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->transparency:I

    .line 212
    .local v0, "alpha":I
    :goto_1
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    .end local v0    # "alpha":I
    goto :goto_4

    .line 214
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    and-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->transparency:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 219
    :cond_3
    if-eqz p3, :cond_6

    .line 220
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_2
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    and-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionAlpha:I

    goto :goto_3

    :cond_5
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    .line 223
    .restart local v0    # "alpha":I
    :goto_3
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    .end local v0    # "alpha":I
    goto :goto_4

    .line 225
    :cond_6
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    and-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    :goto_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 232
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 235
    :cond_7
    return-void
.end method

.method public clearTextHeightCache()V
    .locals 1

    .line 238
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sCachedScaleSize:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 239
    return-void
.end method

.method public definePaintParams(Z)V
    .locals 1
    .param p1, "fromWorkerThread"    # Z

    .line 255
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_STROKE:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_STROKE:Z

    .line 256
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_SHADOW:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_SHADOW:Z

    .line 257
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_HAS_PROJECTION:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    .line 258
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->CONFIG_ANTI_ALIAS:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->ANTI_ALIAS:Z

    .line 259
    return-void
.end method

.method public getBorderPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 174
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->BORDER_PAINT:Landroid/graphics/Paint;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->BORDER_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;
    .locals 4
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fromWorkerThread"    # Z

    .line 185
    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    .local v0, "paint":Landroid/text/TextPaint;
    goto :goto_0

    .line 188
    .end local v0    # "paint":Landroid/text/TextPaint;
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT_DUPLICATE:Landroid/text/TextPaint;

    .line 189
    .restart local v0    # "paint":Landroid/text/TextPaint;
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 191
    :goto_0
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 192
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyTextScaleConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)V

    .line 195
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_SHADOW:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->SHADOW_RADIUS:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->SHADOW_RADIUS:F

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 196
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 200
    :goto_2
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->ANTI_ALIAS:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 201
    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .line 242
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_SHADOW:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_STROKE:Z

    if-eqz v0, :cond_0

    .line 243
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->SHADOW_RADIUS:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->STROKE_WIDTH:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 245
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_SHADOW:Z

    if-eqz v0, :cond_1

    .line 246
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->SHADOW_RADIUS:F

    return v0

    .line 248
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_STROKE:Z

    if-eqz v0, :cond_2

    .line 249
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->STROKE_WIDTH:F

    return v0

    .line 251
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getUnderlinePaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 179
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method public hasStroke(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 170
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_STROKE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->HAS_PROJECTION:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->STROKE_WIDTH:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFakeBoldText(Z)V
    .locals 1
    .param p1, "fakeBoldText"    # Z

    .line 143
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 144
    return-void
.end method

.method public setProjectionConfig(FFI)V
    .locals 2
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "alpha"    # I

    .line 135
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionAlpha:I

    if-eq v0, p3, :cond_5

    .line 136
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetX:F

    .line 137
    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    move v0, p2

    :cond_2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionOffsetY:F

    .line 138
    if-gez p3, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0xff

    if-le p3, v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, p3

    :goto_1
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->sProjectionAlpha:I

    .line 140
    :cond_5
    return-void
.end method

.method public setScaleTextSizeFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->isTextScaled:Z

    .line 153
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->scaleTextSize:F

    .line 154
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 0
    .param p1, "shadowRadius"    # F

    .line 126
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->SHADOW_RADIUS:F

    .line 127
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "s"    # F

    .line 130
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 131
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->STROKE_WIDTH:F

    .line 132
    return-void
.end method

.method public setTransparency(I)V
    .locals 1
    .param p1, "newTransparency"    # I

    .line 147
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->isTranslucent:Z

    .line 148
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->transparency:I

    .line 149
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 122
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    return-void
.end method

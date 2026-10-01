.class public Lcom/shenma/tvlauncher/view/CardView/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->COLOR_BACKGROUND_ATTR:[I

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    goto :goto_0

    .line 88
    :cond_0
    nop

    .line 89
    new-instance v0, Lcom/shenma/tvlauncher/view/CardView/CardViewApi17Impl;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi17Impl;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    .line 93
    :goto_0
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    invoke-interface {v0}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->initStatic()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/CardView/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    sget v0, Lcom/shenma/tvlauncher/R$attr;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/CardView/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 448
    new-instance v0, Lcom/shenma/tvlauncher/view/CardView/CardView$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/CardView/CardView$1;-><init>(Lcom/shenma/tvlauncher/view/CardView/CardView;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    .line 124
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->CardView:[I

    sget v1, Lcom/shenma/tvlauncher/R$style;->CardView:I

    move v9, p3

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 128
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v5, v1

    .local v1, "backgroundColor":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 131
    .end local v1    # "backgroundColor":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/shenma/tvlauncher/view/CardView/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 132
    .local v1, "aa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 133
    .local v3, "themeColorBackground":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 137
    .local v5, "hsv":[F
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 138
    const/4 v6, 0x2

    aget v6, v5, v6

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/shenma/tvlauncher/R$color;->cardview_light_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/CardView/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/shenma/tvlauncher/R$color;->cardview_dark_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 138
    :goto_0
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    .line 142
    .end local v1    # "aa":Landroid/content/res/TypedArray;
    .end local v3    # "themeColorBackground":I
    .local v5, "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_1
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CardView_cardCornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 143
    .local v6, "radius":F
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 144
    .local v7, "elevation":F
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 145
    .local v1, "maxElevation":F
    sget v3, Lcom/shenma/tvlauncher/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCompatPadding:Z

    .line 146
    sget v3, Lcom/shenma/tvlauncher/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mPreventCornerOverlap:Z

    .line 147
    sget v3, Lcom/shenma/tvlauncher/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 148
    .local v10, "defaultPadding":I
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v8, Lcom/shenma/tvlauncher/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->left:I

    .line 150
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v8, Lcom/shenma/tvlauncher/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 152
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v8, Lcom/shenma/tvlauncher/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->right:I

    .line 154
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v8, Lcom/shenma/tvlauncher/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 156
    cmpl-float v3, v7, v1

    if-lez v3, :cond_2

    .line 157
    move v1, v7

    move v8, v1

    goto :goto_2

    .line 156
    :cond_2
    move v8, v1

    .line 159
    .end local v1    # "maxElevation":F
    .local v8, "maxElevation":F
    :goto_2
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mUserSetMinWidth:I

    .line 160
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mUserSetMinHeight:I

    .line 161
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    sget-object v2, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->initialize(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 165
    return-void
.end method

.method static synthetic access$001(Lcom/shenma/tvlauncher/view/CardView/CardView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/CardView/CardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Lcom/shenma/tvlauncher/view/CardView/CardView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/CardView/CardView;
    .param p1, "x1"    # I

    .line 80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Lcom/shenma/tvlauncher/view/CardView/CardView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shenma/tvlauncher/view/CardView/CardView;
    .param p1, "x1"    # I

    .line 80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 304
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->getBackgroundColor(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 388
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->getElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 414
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->getMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 365
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->getRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 233
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    instance-of v0, v0, Lcom/shenma/tvlauncher/view/CardView/CardViewApi21Impl;

    if-nez v0, :cond_0

    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 235
    .local v0, "widthMode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 238
    :sswitch_0
    sget-object v1, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v1, v2}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->getMinWidth(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 239
    .local v1, "minWidth":I
    nop

    .line 240
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 239
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 241
    nop

    .line 247
    .end local v1    # "minWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 248
    .local v1, "heightMode":I
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 251
    :sswitch_1
    sget-object v2, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v3, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v2, v3}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->getMinHeight(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 252
    .local v2, "minHeight":I
    nop

    .line 253
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 252
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 254
    nop

    .line 259
    .end local v2    # "minHeight":I
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 260
    .end local v0    # "widthMode":I
    .end local v1    # "heightMode":I
    goto :goto_2

    .line 261
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 263
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 284
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->setBackgroundColor(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 285
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 294
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->setBackgroundColor(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 295
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .line 377
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->setElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V

    .line 378
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 227
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->updatePadding(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 229
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2
    .param p1, "maxElevation"    # F

    .line 403
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->setMaxElevation(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V

    .line 404
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 273
    iput p1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mUserSetMinHeight:I

    .line 274
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 275
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 267
    iput p1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mUserSetMinWidth:I

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 269
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 170
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 175
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2
    .param p1, "preventCornerOverlap"    # Z

    .line 442
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    .line 443
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mPreventCornerOverlap:Z

    .line 444
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->onPreventCornerOverlapChanged(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 446
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 355
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->setRadius(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;F)V

    .line 356
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2
    .param p1, "useCompatPadding"    # Z

    .line 204
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 205
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCompatPadding:Z

    .line 206
    sget-object v0, Lcom/shenma/tvlauncher/view/CardView/CardView;->IMPL:Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CardView/CardView;->mCardViewDelegate:Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/view/CardView/CardViewImpl;->onCompatPaddingChanged(Lcom/shenma/tvlauncher/view/CardView/CardViewDelegate;)V

    .line 208
    :cond_0
    return-void
.end method

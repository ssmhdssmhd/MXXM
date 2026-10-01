.class public Lcom/view/SingleChoiceMenuView;
.super Landroid/widget/HorizontalScrollView;
.source "SingleChoiceMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field private backgroundResource:I

.field private color:I

.field private focusSwitchEnabled:Z

.field private listener:Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;

.field private menuContainer:Landroid/widget/LinearLayout;

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private pendingSwitch:Ljava/lang/Runnable;

.field private selectedPosition:I

.field private textSize:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmenuItems(Lcom/view/SingleChoiceMenuView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/view/SingleChoiceMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/view/SingleChoiceMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    .line 26
    const/16 v1, 0x8

    iput v1, p0, Lcom/view/SingleChoiceMenuView;->paddingLeft:I

    .line 27
    iput v1, p0, Lcom/view/SingleChoiceMenuView;->paddingRight:I

    .line 28
    iput v1, p0, Lcom/view/SingleChoiceMenuView;->paddingTop:I

    .line 29
    iput v1, p0, Lcom/view/SingleChoiceMenuView;->paddingBottom:I

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/view/SingleChoiceMenuView;->textSize:F

    .line 32
    iput v0, p0, Lcom/view/SingleChoiceMenuView;->backgroundResource:I

    .line 33
    const/4 v0, -0x2

    iput v0, p0, Lcom/view/SingleChoiceMenuView;->color:I

    .line 49
    invoke-direct {p0}, Lcom/view/SingleChoiceMenuView;->init()V

    .line 50
    return-void
.end method

.method private dpToPx(F)I
    .locals 1
    .param p1, "dp"    # F

    .line 191
    invoke-virtual {p0}, Lcom/view/SingleChoiceMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 5

    .line 70
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/view/SingleChoiceMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    .line 71
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/view/SingleChoiceMenuView;->paddingLeft:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v1

    iget v2, p0, Lcom/view/SingleChoiceMenuView;->paddingTop:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v2

    iget v3, p0, Lcom/view/SingleChoiceMenuView;->paddingRight:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v3

    iget v4, p0, Lcom/view/SingleChoiceMenuView;->paddingBottom:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 75
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/view/SingleChoiceMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method private sp2px(F)I
    .locals 2
    .param p1, "sp"    # F

    .line 194
    invoke-virtual {p0}, Lcom/view/SingleChoiceMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addMenuItem(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/view/SingleChoiceMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->menu_item:I

    iget-object v2, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    .line 88
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, "menuItem":Landroid/widget/TextView;
    iget v1, p0, Lcom/view/SingleChoiceMenuView;->textSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 90
    iget v1, p0, Lcom/view/SingleChoiceMenuView;->textSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    :cond_0
    iget v1, p0, Lcom/view/SingleChoiceMenuView;->backgroundResource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/view/SingleChoiceMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/view/SingleChoiceMenuView;->backgroundResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_1
    iget v1, p0, Lcom/view/SingleChoiceMenuView;->color:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    .line 96
    iget v1, p0, Lcom/view/SingleChoiceMenuView;->color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v1, Lcom/view/SingleChoiceMenuView$1;

    invoke-direct {v1, p0}, Lcom/view/SingleChoiceMenuView$1;-><init>(Lcom/view/SingleChoiceMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/view/SingleChoiceMenuView$2;

    invoke-direct {v1, p0}, Lcom/view/SingleChoiceMenuView$2;-><init>(Lcom/view/SingleChoiceMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    iget-object v1, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object v1, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public clearMenuItems()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    return-void
.end method

.method public getPositionView(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "position"    # I

    .line 83
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    return v0
.end method

.method public onMenuItemFocusChanged(Landroid/view/View;Z)V
    .locals 5

    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->pendingSwitch:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/view/SingleChoiceMenuView;->focusSwitchEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    if-eq v0, v1, :cond_2

    new-instance v2, Lcom/view/SingleChoiceMenuView$3;

    invoke-direct {v2, p0, v0}, Lcom/view/SingleChoiceMenuView$3;-><init>(Lcom/view/SingleChoiceMenuView;I)V

    iput-object v2, p0, Lcom/view/SingleChoiceMenuView;->pendingSwitch:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .line 170
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 175
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/view/SingleChoiceMenuView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 176
    .local v1, "scrollX":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/view/SingleChoiceMenuView;->smoothScrollTo(II)V

    .line 177
    return-void

    .line 171
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusSwitchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/view/SingleChoiceMenuView;->focusSwitchEnabled:Z

    return-void
.end method

.method public setItemBackground(I)V
    .locals 0
    .param p1, "backgroundResource"    # I

    .line 123
    iput p1, p0, Lcom/view/SingleChoiceMenuView;->backgroundResource:I

    .line 124
    return-void
.end method

.method public setItemTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 126
    iput p1, p0, Lcom/view/SingleChoiceMenuView;->color:I

    .line 127
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;

    .line 186
    iput-object p1, p0, Lcom/view/SingleChoiceMenuView;->listener:Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;

    .line 187
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 5
    .param p1, "paddingLeft"    # I
    .param p2, "paddingRight"    # I
    .param p3, "paddingTop"    # I
    .param p4, "paddingBottom"    # I

    .line 60
    iput p4, p0, Lcom/view/SingleChoiceMenuView;->paddingBottom:I

    .line 61
    iput p1, p0, Lcom/view/SingleChoiceMenuView;->paddingLeft:I

    .line 62
    iput p2, p0, Lcom/view/SingleChoiceMenuView;->paddingRight:I

    .line 63
    iput p3, p0, Lcom/view/SingleChoiceMenuView;->paddingTop:I

    .line 64
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuContainer:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v1

    int-to-float v2, p3

    invoke-direct {p0, v2}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v2

    int-to-float v3, p2

    invoke-direct {p0, v3}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v3

    int-to-float v4, p4

    invoke-direct {p0, v4}, Lcom/view/SingleChoiceMenuView;->dpToPx(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 66
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 130
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 132
    iget v0, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    iget-object v1, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    iget v1, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 138
    iput p1, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    .line 141
    invoke-virtual {p0, p1}, Lcom/view/SingleChoiceMenuView;->scrollToPosition(I)V

    .line 144
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->listener:Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->listener:Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;->onItemSelected(I)V

    .line 148
    :cond_1
    return-void
.end method

.method public setSelectedPositionNoClick(I)V
    .locals 2
    .param p1, "position"    # I

    .line 152
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 154
    iget v0, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    iget-object v1, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    iget v1, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/view/SingleChoiceMenuView;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    iput p1, p0, Lcom/view/SingleChoiceMenuView;->selectedPosition:I

    .line 163
    invoke-virtual {p0, p1}, Lcom/view/SingleChoiceMenuView;->scrollToPosition(I)V

    .line 165
    :cond_1
    return-void
.end method

.method public setTextDpSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 53
    invoke-direct {p0, p1}, Lcom/view/SingleChoiceMenuView;->sp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/view/SingleChoiceMenuView;->textSize:F

    .line 54
    return-void
.end method

.method public setTextPxSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 56
    iput p1, p0, Lcom/view/SingleChoiceMenuView;->textSize:F

    .line 57
    return-void
.end method

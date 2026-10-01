.class public Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
.super Landroid/widget/LinearLayout;
.source "CycleTextSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;
    }
.end annotation


# instance fields
.field private contentArray:[Ljava/lang/String;

.field private currentIndex:I

.field private onContentChangeListener:Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;

.field private titleText:Ljava/lang/String;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mcycleContent(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->cycleContent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private cycleContent()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    .line 135
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    iget v2, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->onContentChangeListener:Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->onContentChangeListener:Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;

    iget v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    aget-object v2, v2, v3

    invoke-interface {v0, p0, v1, v2}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;->onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V

    .line 145
    :cond_1
    return-void

    .line 131
    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setOrientation(I)V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    sget-object v0, Lcom/shenma/tvlauncher/R$styleable;->CycleTextSwitchView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/shenma/tvlauncher/R$styleable;->CycleTextSwitchView_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->titleText:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->view_cycle_text_switch:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->setFocusable(Z)V

    .line 65
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvTitle:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvContent:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->titleText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvContent:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/view/CycleTextSwitchView$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView$1;-><init>(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getCurrentContent()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    iget v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    return v0
.end method

.method public setContentArray([Ljava/lang/String;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    .line 121
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvContent:Landroid/widget/TextView;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setContentTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 179
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 180
    return-void
.end method

.method public setOnContentChangeListener(Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->onContentChangeListener:Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;

    .line 84
    return-void
.end method

.method public setSelectedIndex(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iput p1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    .line 101
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    iget v2, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->onContentChangeListener:Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->onContentChangeListener:Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;

    iget v1, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->contentArray:[Ljava/lang/String;

    iget v3, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->currentIndex:I

    aget-object v2, v2, v3

    invoke-interface {v0, p0, v1, v2}, Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;->onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V

    .line 112
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_3
    :goto_0
    return v1

    .line 92
    :cond_4
    :goto_1
    return v1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 187
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    return-void
.end method

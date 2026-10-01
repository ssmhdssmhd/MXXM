.class public Lcom/aliyun/subtitle/SubtitleView;
.super Landroid/widget/RelativeLayout;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;,
        Lcom/aliyun/subtitle/SubtitleView$Subtitle;
    }
.end annotation


# static fields
.field public static final EXTRA_COLOR__STRING:Ljava/lang/String; = "extra_color"

.field public static final EXTRA_GRAVITY__ENUM:Ljava/lang/String; = "extra_gravity"

.field public static final EXTRA_LOCATION__INT:Ljava/lang/String; = "extra_location"

.field public static final EXTRA_SIZE_PX__INT:Ljava/lang/String; = "extra_size_px"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultColor:Ljava/lang/String;

.field private mDefaultLocation:I

.field private mDefaultPercent:F

.field private mDefaultSize:I

.field private mSubtitleView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/aliyun/subtitle/SubtitleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/subtitle/SubtitleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 45
    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 50
    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 56
    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    .line 57
    return-void
.end method

.method private getFinalParam(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "subtitle"    # Lcom/aliyun/subtitle/SubtitleView$Subtitle;

    .line 101
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    .line 104
    .local v1, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultLocation:I

    invoke-static {v0, v1, v2}, Lcom/aliyun/subtitle/LocationStyle;->setLocation(Landroid/widget/RelativeLayout$LayoutParams;Ljava/util/Map;I)V

    .line 106
    return-object v0
.end method

.method private getFinalText(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "subtitle"    # Lcom/aliyun/subtitle/SubtitleView$Subtitle;

    .line 111
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->content:Ljava/lang/String;

    .line 117
    .local v0, "content":Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 120
    .local v1, "spanned":Landroid/text/Spanned;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v3, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    .line 123
    .local v3, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultColor:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aliyun/subtitle/TextSytle;->setTextColor(Landroid/text/SpannableStringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 124
    iget v4, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    invoke-static {v2, v3, v4}, Lcom/aliyun/subtitle/TextSytle;->setTextSize(Landroid/text/SpannableStringBuilder;Ljava/util/Map;I)V

    .line 126
    return-object v2

    .line 112
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "spanned":Landroid/text/Spanned;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getFinalTextView(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/TextView;
    .locals 3
    .param p1, "subtitle"    # Lcom/aliyun/subtitle/SubtitleView$Subtitle;

    .line 83
    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    invoke-virtual {v0}, Lcom/aliyun/subtitle/TextViewPool;->obtain()Landroid/widget/TextView;

    move-result-object v0

    .line 85
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    .line 86
    .local v1, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 87
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    goto :goto_0

    .line 91
    :cond_0
    const-string v2, "extra_gravity"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .end local v1    # "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 60
    new-instance v0, Lcom/aliyun/subtitle/TextViewPool;

    invoke-virtual {p0}, Lcom/aliyun/subtitle/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/subtitle/TextViewPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    .line 61
    new-instance v0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;

    invoke-direct {v0}, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/aliyun/subtitle/SubtitleView;->setDefaultValue(Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;)V

    .line 62
    return-void
.end method


# virtual methods
.method public dismiss(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    invoke-virtual {v1, v0}, Lcom/aliyun/subtitle/TextViewPool;->recycle(Landroid/widget/TextView;)V

    .line 133
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 177
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 178
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    sub-int v1, v0, p4

    .line 179
    .local v1, "height":I
    iget v2, p1, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    if-lez v2, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    iget v2, p1, Lcom/aliyun/subtitle/SubtitleView;->mDefaultPercent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 184
    iget v2, p1, Lcom/aliyun/subtitle/SubtitleView;->mDefaultPercent:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p1, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 187
    :cond_1
    iget v2, p1, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    if-gtz v2, :cond_2

    .line 188
    const/16 v2, 0x14

    iput v2, p1, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 190
    :cond_2
    return-void
.end method

.method public setDefaultValue(Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;)V
    .locals 1
    .param p1, "defaultValueBuilder"    # Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;

    .line 141
    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultLocation:I

    .line 142
    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultPercent:F

    .line 143
    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 144
    iget-object v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultColor:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public show(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)V
    .locals 6
    .param p1, "subtitle"    # Lcom/aliyun/subtitle/SubtitleView$Subtitle;

    .line 67
    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalText(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 68
    .local v0, "charSequence":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalParam(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 69
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalTextView(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/TextView;

    move-result-object v2

    .line 70
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 74
    .local v3, "viewParent":Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    .line 75
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-virtual {p0, v2}, Lcom/aliyun/subtitle/SubtitleView;->addView(Landroid/view/View;)V

    .line 79
    iget-object v4, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    iget-object v5, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

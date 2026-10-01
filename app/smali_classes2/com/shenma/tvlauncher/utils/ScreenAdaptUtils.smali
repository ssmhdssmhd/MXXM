.class public Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;
.super Ljava/lang/Object;
.source "ScreenAdaptUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;
    }
.end annotation


# static fields
.field private static final ORIGINAL_DATA_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_TAG:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->SCALE_TAG:Ljava/lang/Object;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->ORIGINAL_DATA_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "designWidthInDp"    # I

    .line 32
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "root":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->SCALE_TAG:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 37
    return-void

    .line 40
    :cond_1
    new-instance v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0, p1}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method static synthetic lambda$apply$0(Landroid/view/View;Landroid/app/Activity;I)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "designWidthInDp"    # I

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->SCALE_TAG:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->scaleView(Landroid/view/View;Landroid/app/Activity;I)V

    .line 46
    sget-object v0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->SCALE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static revert(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 51
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "root":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->revertView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method private static revertView(Landroid/view/View;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 112
    .local v0, "key":I
    sget-object v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->ORIGINAL_DATA_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;

    .line 113
    .local v1, "data":Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 116
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v3, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalWidth:I

    if-lez v3, :cond_0

    .line 117
    iget v3, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    iget v3, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_0
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 124
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    iget v5, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalTextSize:F

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    sget-object v3, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->ORIGINAL_DATA_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 136
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 137
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 138
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 139
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_3

    .line 140
    invoke-static {v4}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->revertView(Landroid/view/View;)V

    .line 137
    .end local v4    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private static scaleView(Landroid/view/View;Landroid/app/Activity;I)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "designWidthInDp"    # I

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->SCALE_TAG:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 62
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 67
    .local v0, "key":I
    new-instance v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;-><init>(Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils-IA;)V

    .line 68
    .local v1, "data":Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 69
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    .line 70
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalWidth:I

    .line 71
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalHeight:I

    .line 73
    :cond_1
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 74
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    iput v3, v1, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$OriginalData;->originalTextSize:F

    .line 76
    :cond_2
    sget-object v3, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->ORIGINAL_DATA_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 79
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    int-to-float v5, p2

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v6

    div-float/2addr v4, v5

    .line 82
    .local v4, "scale":F
    if-eqz v2, :cond_3

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_3

    .line 83
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :cond_3
    instance-of v5, p0, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 90
    move-object v5, p0

    check-cast v5, Landroid/widget/TextView;

    .line 91
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    .line 92
    .local v6, "originalSize":F
    const/4 v7, 0x0

    mul-float v8, v6, v4

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    .end local v5    # "tv":Landroid/widget/TextView;
    .end local v6    # "originalSize":F
    :cond_4
    sget-object v5, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->SCALE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6

    .line 100
    move-object v5, p0

    check-cast v5, Landroid/view/ViewGroup;

    .line 101
    .local v5, "vg":Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 102
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 103
    .local v7, "child":Landroid/view/View;
    instance-of v8, v7, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v8, :cond_5

    .line 104
    invoke-static {v7, p1, p2}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->scaleView(Landroid/view/View;Landroid/app/Activity;I)V

    .line 101
    .end local v7    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    .end local v5    # "vg":Landroid/view/ViewGroup;
    .end local v6    # "i":I
    :cond_6
    return-void
.end method

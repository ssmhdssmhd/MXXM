.class public final Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;
.super Ljava/lang/Object;
.source "MvVideoDetailsRecommendItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final detailsRecommendName:Landroid/widget/TextView;

.field public final detailsRecommendPoster:Landroid/widget/ImageView;

.field public final detailsRecommendScore:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/AbsoluteLayout;


# direct methods
.method private constructor <init>(Landroid/widget/AbsoluteLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/AbsoluteLayout;
    .param p2, "detailsRecommendName"    # Landroid/widget/TextView;
    .param p3, "detailsRecommendPoster"    # Landroid/widget/ImageView;
    .param p4, "detailsRecommendScore"    # Landroid/widget/TextView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->rootView:Landroid/widget/AbsoluteLayout;

    .line 36
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->detailsRecommendName:Landroid/widget/TextView;

    .line 37
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->detailsRecommendPoster:Landroid/widget/ImageView;

    .line 38
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->detailsRecommendScore:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 68
    sget v0, Lcom/shenma/tvlauncher/R$id;->details_recommend_name:I

    .line 69
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "detailsRecommendName":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 74
    sget v0, Lcom/shenma/tvlauncher/R$id;->details_recommend_poster:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 76
    .local v2, "detailsRecommendPoster":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 80
    sget v0, Lcom/shenma/tvlauncher/R$id;->details_recommend_score:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "detailsRecommendScore":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 86
    new-instance v4, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/AbsoluteLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;-><init>(Landroid/widget/AbsoluteLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v4

    .line 83
    :cond_0
    goto :goto_0

    .line 77
    .end local v3    # "detailsRecommendScore":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "detailsRecommendPoster":Landroid/widget/ImageView;
    :cond_2
    nop

    .line 89
    .end local v1    # "detailsRecommendName":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 55
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_video_details_recommend_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->getRoot()Landroid/widget/AbsoluteLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/AbsoluteLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsRecommendItemBinding;->rootView:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

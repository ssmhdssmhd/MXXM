.class public final Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;
.super Ljava/lang/Object;
.source "Home2VdolistItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemMovieNum:Landroid/widget/TextView;

.field public final itemMoviePic:Landroid/widget/ImageView;

.field public final itemMovieTitle:Landroid/widget/TextView;

.field public final rootCardview:Landroidx/cardview/widget/CardView;

.field private final rootView:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "itemMovieNum"    # Landroid/widget/TextView;
    .param p3, "itemMoviePic"    # Landroid/widget/ImageView;
    .param p4, "itemMovieTitle"    # Landroid/widget/TextView;
    .param p5, "rootCardview"    # Landroidx/cardview/widget/CardView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 39
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->itemMovieNum:Landroid/widget/TextView;

    .line 40
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->itemMoviePic:Landroid/widget/ImageView;

    .line 41
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->itemMovieTitle:Landroid/widget/TextView;

    .line 42
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->rootCardview:Landroidx/cardview/widget/CardView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_num:I

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 74
    .local v4, "itemMovieNum":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_pic:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 80
    .local v5, "itemMoviePic":Landroid/widget/ImageView;
    if-eqz v5, :cond_1

    .line 84
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_title:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 86
    .local v6, "itemMovieTitle":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 90
    move-object v7, p0

    check-cast v7, Landroidx/cardview/widget/CardView;

    .line 92
    .local v7, "rootCardview":Landroidx/cardview/widget/CardView;
    new-instance v2, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;

    move-object v3, p0

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;)V

    return-object v2

    .line 87
    .end local v7    # "rootCardview":Landroidx/cardview/widget/CardView;
    :cond_0
    goto :goto_0

    .line 81
    .end local v6    # "itemMovieTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 75
    .end local v5    # "itemMoviePic":Landroid/widget/ImageView;
    :cond_2
    nop

    .line 95
    .end local v4    # "itemMovieNum":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    sget v0, Lcom/shenma/tvlauncher/R$layout;->home2_vdolist_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/Home2VdolistItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

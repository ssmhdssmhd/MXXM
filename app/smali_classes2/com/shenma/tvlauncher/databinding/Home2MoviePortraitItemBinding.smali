.class public final Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;
.super Ljava/lang/Object;
.source "Home2MoviePortraitItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemMovieCardview:Landroidx/cardview/widget/CardView;

.field public final itemMovieNum:Landroid/widget/TextView;

.field public final itemMoviePic:Landroid/widget/ImageView;

.field public final itemMovieTitle:Landroid/widget/TextView;

.field private final rootView:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "itemMovieCardview"    # Landroidx/cardview/widget/CardView;
    .param p3, "itemMovieNum"    # Landroid/widget/TextView;
    .param p4, "itemMoviePic"    # Landroid/widget/ImageView;
    .param p5, "itemMovieTitle"    # Landroid/widget/TextView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 39
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->itemMovieCardview:Landroidx/cardview/widget/CardView;

    .line 40
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->itemMovieNum:Landroid/widget/TextView;

    .line 41
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->itemMoviePic:Landroid/widget/ImageView;

    .line 42
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->itemMovieTitle:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;
    .locals 7
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    move-object v2, p0

    check-cast v2, Landroidx/cardview/widget/CardView;

    .line 74
    .local v2, "itemMovieCardview":Landroidx/cardview/widget/CardView;
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_num:I

    .line 75
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, "itemMovieNum":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 80
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_movie_pic:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, "itemMoviePic":Landroid/widget/ImageView;
    if-eqz v4, :cond_1

    .line 86
    sget v6, Lcom/shenma/tvlauncher/R$id;->item_movie_title:I

    .line 87
    .end local v0    # "id":I
    .local v6, "id":I
    invoke-static {p0, v6}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 88
    .local v5, "itemMovieTitle":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 92
    new-instance v0, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;

    move-object v1, p0

    check-cast v1, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 89
    :cond_0
    move v0, v6

    goto :goto_0

    .line 83
    .end local v5    # "itemMovieTitle":Landroid/widget/TextView;
    .end local v6    # "id":I
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 77
    .end local v4    # "itemMoviePic":Landroid/widget/ImageView;
    :cond_2
    nop

    .line 95
    .end local v2    # "itemMovieCardview":Landroidx/cardview/widget/CardView;
    .end local v3    # "itemMovieNum":Landroid/widget/TextView;
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    sget v0, Lcom/shenma/tvlauncher/R$layout;->home2_movie_portrait_item:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/Home2MoviePortraitItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

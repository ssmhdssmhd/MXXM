.class public final Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;
.super Ljava/lang/Object;
.source "Home2MovieLandscapeItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemMovieCardview:Landroidx/cardview/widget/CardView;

.field public final itemMoviePic:Landroid/widget/ImageView;

.field public final itemMovieTitle:Landroid/widget/TextView;

.field private final rootView:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "itemMovieCardview"    # Landroidx/cardview/widget/CardView;
    .param p3, "itemMoviePic"    # Landroid/widget/ImageView;
    .param p4, "itemMovieTitle"    # Landroid/widget/TextView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 36
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->itemMovieCardview:Landroidx/cardview/widget/CardView;

    .line 37
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->itemMoviePic:Landroid/widget/ImageView;

    .line 38
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->itemMovieTitle:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 68
    move-object v0, p0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 70
    .local v0, "itemMovieCardview":Landroidx/cardview/widget/CardView;
    sget v1, Lcom/shenma/tvlauncher/R$id;->item_movie_pic:I

    .line 71
    .local v1, "id":I
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 72
    .local v2, "itemMoviePic":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 76
    sget v1, Lcom/shenma/tvlauncher/R$id;->item_movie_title:I

    .line 77
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, "itemMovieTitle":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 82
    new-instance v4, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;

    move-object v5, p0

    check-cast v5, Landroidx/cardview/widget/CardView;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v4

    .line 79
    :cond_0
    goto :goto_0

    .line 73
    .end local v3    # "itemMovieTitle":Landroid/widget/TextView;
    :cond_1
    nop

    .line 85
    .end local v0    # "itemMovieCardview":Landroidx/cardview/widget/CardView;
    .end local v2    # "itemMoviePic":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 55
    sget v0, Lcom/shenma/tvlauncher/R$layout;->home2_movie_landscape_item:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/Home2MovieLandscapeItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

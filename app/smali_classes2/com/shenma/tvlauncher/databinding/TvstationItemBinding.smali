.class public final Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;
.super Ljava/lang/Object;
.source "TvstationItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardItem:Landroidx/cardview/widget/CardView;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final tvsItemImgIv:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "cardItem"    # Landroidx/cardview/widget/CardView;
    .param p3, "tvsItemImgIv"    # Landroid/widget/ImageView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 31
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;->cardItem:Landroidx/cardview/widget/CardView;

    .line 32
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;->tvsItemImgIv:Landroid/widget/ImageView;

    .line 33
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 62
    move-object v0, p0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 64
    .local v0, "cardItem":Landroidx/cardview/widget/CardView;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tvs_item_img_iv:I

    .line 65
    .local v1, "id":I
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 66
    .local v2, "tvsItemImgIv":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 70
    new-instance v3, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;

    move-object v4, p0

    check-cast v4, Landroidx/cardview/widget/CardView;

    invoke-direct {v3, v4, v0, v2}, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;)V

    return-object v3

    .line 67
    :cond_0
    nop

    .line 72
    .end local v0    # "cardItem":Landroidx/cardview/widget/CardView;
    .end local v2    # "tvsItemImgIv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 49
    sget v0, Lcom/shenma/tvlauncher/R$layout;->tvstation_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/TvstationItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

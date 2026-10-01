.class public final Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;
.super Ljava/lang/Object;
.source "MvVideoDetailsChooseArtsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final detailsKeyGrid:Landroid/widget/GridView;

.field public final detailsKeyList:Landroid/widget/ListView;

.field public final detailsKeyListAndGrid:Landroid/widget/ImageView;

.field public final detailsKeyLists:Landroid/widget/GridView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/GridView;Landroid/widget/ListView;Landroid/widget/ImageView;Landroid/widget/GridView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "detailsKeyGrid"    # Landroid/widget/GridView;
    .param p3, "detailsKeyList"    # Landroid/widget/ListView;
    .param p4, "detailsKeyListAndGrid"    # Landroid/widget/ImageView;
    .param p5, "detailsKeyLists"    # Landroid/widget/GridView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->detailsKeyGrid:Landroid/widget/GridView;

    .line 41
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->detailsKeyList:Landroid/widget/ListView;

    .line 42
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->detailsKeyListAndGrid:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->detailsKeyLists:Landroid/widget/GridView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    sget v0, Lcom/shenma/tvlauncher/R$id;->details_key_grid:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/GridView;

    .line 75
    .local v4, "detailsKeyGrid":Landroid/widget/GridView;
    if-eqz v4, :cond_3

    .line 79
    sget v0, Lcom/shenma/tvlauncher/R$id;->details_key_list:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ListView;

    .line 81
    .local v5, "detailsKeyList":Landroid/widget/ListView;
    if-eqz v5, :cond_2

    .line 85
    sget v0, Lcom/shenma/tvlauncher/R$id;->details_key_list_and_grid:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 87
    .local v6, "detailsKeyListAndGrid":Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 91
    sget v0, Lcom/shenma/tvlauncher/R$id;->details_key_lists:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/GridView;

    .line 93
    .local v7, "detailsKeyLists":Landroid/widget/GridView;
    if-eqz v7, :cond_0

    .line 97
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/GridView;Landroid/widget/ListView;Landroid/widget/ImageView;Landroid/widget/GridView;)V

    return-object v2

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v7    # "detailsKeyLists":Landroid/widget/GridView;
    :cond_1
    goto :goto_0

    .line 82
    .end local v6    # "detailsKeyListAndGrid":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 76
    .end local v5    # "detailsKeyList":Landroid/widget/ListView;
    :cond_3
    nop

    .line 100
    .end local v4    # "detailsKeyGrid":Landroid/widget/GridView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_video_details_choose_arts:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvVideoDetailsChooseArtsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

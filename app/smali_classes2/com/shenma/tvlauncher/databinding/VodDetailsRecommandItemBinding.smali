.class public final Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;
.super Ljava/lang/Object;
.source "VodDetailsRecommandItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final rootView:Landroid/widget/LinearLayout;

.field private final rootView_:Landroid/widget/LinearLayout;

.field public final tvSubtitle:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView_"    # Landroid/widget/LinearLayout;
    .param p2, "rootView"    # Landroid/widget/LinearLayout;
    .param p3, "tvSubtitle"    # Landroid/widget/TextView;
    .param p4, "tvTitle"    # Landroid/widget/TextView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->rootView_:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 35
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->tvSubtitle:Landroid/widget/TextView;

    .line 36
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->tvTitle:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    .local v0, "rootView_":Landroid/widget/LinearLayout;
    sget v1, Lcom/shenma/tvlauncher/R$id;->tvSubtitle:I

    .line 69
    .local v1, "id":I
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "tvSubtitle":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 74
    sget v1, Lcom/shenma/tvlauncher/R$id;->tvTitle:I

    .line 75
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, "tvTitle":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 80
    new-instance v4, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v4

    .line 77
    :cond_0
    goto :goto_0

    .line 71
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    nop

    .line 83
    .end local v0    # "rootView_":Landroid/widget/LinearLayout;
    .end local v2    # "tvSubtitle":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    sget v0, Lcom/shenma/tvlauncher/R$layout;->vod_details_recommand_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/VodDetailsRecommandItemBinding;->rootView_:Landroid/widget/LinearLayout;

    return-object v0
.end method

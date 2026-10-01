.class public final Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;
.super Ljava/lang/Object;
.source "MyAppItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appIcon:Landroid/widget/ImageView;

.field public final appTitle:Landroid/widget/TextView;

.field public final itemCardview:Landroidx/cardview/widget/CardView;

.field public final packflag:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/AbsoluteLayout;


# direct methods
.method private constructor <init>(Landroid/widget/AbsoluteLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/AbsoluteLayout;
    .param p2, "appIcon"    # Landroid/widget/ImageView;
    .param p3, "appTitle"    # Landroid/widget/TextView;
    .param p4, "itemCardview"    # Landroidx/cardview/widget/CardView;
    .param p5, "packflag"    # Landroid/widget/TextView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->rootView:Landroid/widget/AbsoluteLayout;

    .line 39
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->appIcon:Landroid/widget/ImageView;

    .line 40
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->appTitle:Landroid/widget/TextView;

    .line 41
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->itemCardview:Landroidx/cardview/widget/CardView;

    .line 42
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->packflag:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;
    .locals 8
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    sget v0, Lcom/shenma/tvlauncher/R$id;->app_icon:I

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 74
    .local v4, "appIcon":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->app_title:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 80
    .local v5, "appTitle":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 84
    sget v0, Lcom/shenma/tvlauncher/R$id;->item_cardview:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/cardview/widget/CardView;

    .line 86
    .local v6, "itemCardview":Landroidx/cardview/widget/CardView;
    if-eqz v6, :cond_1

    .line 90
    sget v0, Lcom/shenma/tvlauncher/R$id;->packflag:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 92
    .local v7, "packflag":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 96
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/AbsoluteLayout;

    invoke-direct/range {v2 .. v7}, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;-><init>(Landroid/widget/AbsoluteLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V

    return-object v2

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v7    # "packflag":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 81
    .end local v6    # "itemCardview":Landroidx/cardview/widget/CardView;
    :cond_2
    goto :goto_0

    .line 75
    .end local v5    # "appTitle":Landroid/widget/TextView;
    :cond_3
    nop

    .line 99
    .end local v4    # "appIcon":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    sget v0, Lcom/shenma/tvlauncher/R$layout;->my_app_item:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->getRoot()Landroid/widget/AbsoluteLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/AbsoluteLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MyAppItemBinding;->rootView:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

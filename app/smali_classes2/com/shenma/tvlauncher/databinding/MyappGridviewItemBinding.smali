.class public final Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;
.super Ljava/lang/Object;
.source "MyappGridviewItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final myappGridviewItemFlagTv:Landroid/widget/TextView;

.field public final myappGridviewItemIv:Landroid/widget/ImageView;

.field public final myappGridviewItemLoveIv:Landroid/widget/ImageView;

.field public final myappGridviewItemTv:Landroid/widget/TextView;

.field public final myappRl:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "myappGridviewItemFlagTv"    # Landroid/widget/TextView;
    .param p3, "myappGridviewItemIv"    # Landroid/widget/ImageView;
    .param p4, "myappGridviewItemLoveIv"    # Landroid/widget/ImageView;
    .param p5, "myappGridviewItemTv"    # Landroid/widget/TextView;
    .param p6, "myappRl"    # Landroid/widget/RelativeLayout;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->myappGridviewItemFlagTv:Landroid/widget/TextView;

    .line 44
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->myappGridviewItemIv:Landroid/widget/ImageView;

    .line 45
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->myappGridviewItemLoveIv:Landroid/widget/ImageView;

    .line 46
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->myappGridviewItemTv:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->myappRl:Landroid/widget/RelativeLayout;

    .line 48
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 77
    sget v0, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_flag_tv:I

    .line 78
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 79
    .local v4, "myappGridviewItemFlagTv":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 83
    sget v0, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_iv:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 85
    .local v5, "myappGridviewItemIv":Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    .line 89
    sget v0, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_love_iv:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 91
    .local v6, "myappGridviewItemLoveIv":Landroid/widget/ImageView;
    if-eqz v6, :cond_2

    .line 95
    sget v0, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_tv:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 97
    .local v7, "myappGridviewItemTv":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 101
    sget v0, Lcom/shenma/tvlauncher/R$id;->myapp_rl:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 103
    .local v8, "myappRl":Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_0

    .line 107
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    return-object v2

    .line 104
    :cond_0
    goto :goto_0

    .line 98
    .end local v8    # "myappRl":Landroid/widget/RelativeLayout;
    :cond_1
    goto :goto_0

    .line 92
    .end local v7    # "myappGridviewItemTv":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 86
    .end local v6    # "myappGridviewItemLoveIv":Landroid/widget/ImageView;
    :cond_3
    goto :goto_0

    .line 80
    .end local v5    # "myappGridviewItemIv":Landroid/widget/ImageView;
    :cond_4
    nop

    .line 110
    .end local v4    # "myappGridviewItemFlagTv":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 64
    sget v0, Lcom/shenma/tvlauncher/R$layout;->myapp_gridview_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MyappGridviewItemBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

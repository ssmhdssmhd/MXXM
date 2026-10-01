.class public final Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;
.super Ljava/lang/Object;
.source "LvTvBackColumnItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flItem:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvBackLog:Landroid/widget/ImageView;

.field public final tvBackName:Landroid/widget/TextView;

.field public final tvBackTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "flItem"    # Landroid/widget/FrameLayout;
    .param p3, "tvBackLog"    # Landroid/widget/ImageView;
    .param p4, "tvBackName"    # Landroid/widget/TextView;
    .param p5, "tvBackTime"    # Landroid/widget/TextView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 38
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->flItem:Landroid/widget/FrameLayout;

    .line 39
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->tvBackLog:Landroid/widget/ImageView;

    .line 40
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->tvBackName:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->tvBackTime:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;
    .locals 7
    .param p0, "rootView"    # Landroid/view/View;

    .line 71
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    .line 73
    .local v2, "flItem":Landroid/widget/FrameLayout;
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_back_log:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    .line 75
    .local v3, "tvBackLog":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 79
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_back_name:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "tvBackName":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 85
    sget v6, Lcom/shenma/tvlauncher/R$id;->tv_back_time:I

    .line 86
    .end local v0    # "id":I
    .local v6, "id":I
    invoke-static {p0, v6}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 87
    .local v5, "tvBackTime":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 91
    new-instance v0, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 88
    :cond_0
    move v0, v6

    goto :goto_0

    .line 82
    .end local v5    # "tvBackTime":Landroid/widget/TextView;
    .end local v6    # "id":I
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 76
    .end local v4    # "tvBackName":Landroid/widget/TextView;
    :cond_2
    nop

    .line 94
    .end local v2    # "flItem":Landroid/widget/FrameLayout;
    .end local v3    # "tvBackLog":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 58
    sget v0, Lcom/shenma/tvlauncher/R$layout;->lv_tv_back_column_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LvTvBackColumnItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

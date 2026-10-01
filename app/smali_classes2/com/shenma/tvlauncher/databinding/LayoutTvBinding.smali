.class public final Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;
.super Ljava/lang/Object;
.source "LayoutTvBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvBg0:Landroid/widget/ImageView;

.field public final tvFlRe0:Landroid/widget/FrameLayout;

.field public final tvIvLivetv:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "tvBg0"    # Landroid/widget/ImageView;
    .param p3, "tvFlRe0"    # Landroid/widget/FrameLayout;
    .param p4, "tvIvLivetv"    # Landroid/widget/ImageView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->rootView:Landroid/widget/FrameLayout;

    .line 34
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->tvBg0:Landroid/widget/ImageView;

    .line 35
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->tvFlRe0:Landroid/widget/FrameLayout;

    .line 36
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->tvIvLivetv:Landroid/widget/ImageView;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_bg_0:I

    .line 67
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 68
    .local v1, "tvBg0":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 72
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_fl_re_0:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 74
    .local v2, "tvFlRe0":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_1

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_iv_livetv:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 80
    .local v3, "tvIvLivetv":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 84
    new-instance v4, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object v4

    .line 81
    :cond_0
    goto :goto_0

    .line 75
    .end local v3    # "tvIvLivetv":Landroid/widget/ImageView;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "tvFlRe0":Landroid/widget/FrameLayout;
    :cond_2
    nop

    .line 86
    .end local v1    # "tvBg0":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_tv:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutTvBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

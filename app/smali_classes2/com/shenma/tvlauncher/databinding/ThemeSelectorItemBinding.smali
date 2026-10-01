.class public final Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;
.super Ljava/lang/Object;
.source "ThemeSelectorItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final cv:Landroidx/cardview/widget/CardView;

.field public final ivIcon:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "cardView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p3, "cv"    # Landroidx/cardview/widget/CardView;
    .param p4, "ivIcon"    # Landroid/widget/ImageView;
    .param p5, "tvTitle"    # Landroid/widget/TextView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->cardView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->cv:Landroidx/cardview/widget/CardView;

    .line 42
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->ivIcon:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->tvTitle:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;
    .locals 7
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    .local v2, "cardView":Landroidx/constraintlayout/widget/ConstraintLayout;
    sget v0, Lcom/shenma/tvlauncher/R$id;->cv:I

    .line 76
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/cardview/widget/CardView;

    .line 77
    .local v3, "cv":Landroidx/cardview/widget/CardView;
    if-eqz v3, :cond_2

    .line 81
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_icon:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 83
    .local v4, "ivIcon":Landroid/widget/ImageView;
    if-eqz v4, :cond_1

    .line 87
    sget v6, Lcom/shenma/tvlauncher/R$id;->tv_title:I

    .line 88
    .end local v0    # "id":I
    .local v6, "id":I
    invoke-static {p0, v6}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 89
    .local v5, "tvTitle":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 93
    new-instance v0, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;

    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v0 .. v5}, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 90
    :cond_0
    move v0, v6

    goto :goto_0

    .line 84
    .end local v5    # "tvTitle":Landroid/widget/TextView;
    .end local v6    # "id":I
    .restart local v0    # "id":I
    :cond_1
    goto :goto_0

    .line 78
    .end local v4    # "ivIcon":Landroid/widget/ImageView;
    :cond_2
    nop

    .line 96
    .end local v2    # "cardView":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v3    # "cv":Landroidx/cardview/widget/CardView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/shenma/tvlauncher/R$layout;->theme_selector_item:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ThemeSelectorItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

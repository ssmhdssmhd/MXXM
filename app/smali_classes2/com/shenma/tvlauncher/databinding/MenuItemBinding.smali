.class public final Lcom/shenma/tvlauncher/databinding/MenuItemBinding;
.super Ljava/lang/Object;
.source "MenuItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final menuItemText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/TextView;
    .param p2, "menuItemText"    # Landroid/widget/TextView;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;->rootView:Landroid/widget/TextView;

    .line 24
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;->menuItemText:Landroid/widget/TextView;

    .line 25
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MenuItemBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 50
    if-eqz p0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "menuItemText":Landroid/widget/TextView;
    new-instance v1, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v1, v2, v0}, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 51
    .end local v0    # "menuItemText":Landroid/widget/TextView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MenuItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MenuItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MenuItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 41
    sget v0, Lcom/shenma/tvlauncher/R$layout;->menu_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MenuItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/TextView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MenuItemBinding;->rootView:Landroid/widget/TextView;

    return-object v0
.end method

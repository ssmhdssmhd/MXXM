.class public final Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;
.super Ljava/lang/Object;
.source "TableMediaInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ScrollView;

.field public final table:Landroid/widget/TableLayout;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "table"    # Landroid/widget/TableLayout;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;->rootView:Landroid/widget/ScrollView;

    .line 27
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;->table:Landroid/widget/TableLayout;

    .line 28
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;
    .locals 4
    .param p0, "rootView"    # Landroid/view/View;

    .line 57
    sget v0, Lcom/shenma/tvlauncher/R$id;->table:I

    .line 58
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 59
    .local v1, "table":Landroid/widget/TableLayout;
    if-eqz v1, :cond_0

    .line 63
    new-instance v2, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    invoke-direct {v2, v3, v1}, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TableLayout;)V

    return-object v2

    .line 60
    :cond_0
    nop

    .line 65
    .end local v1    # "table":Landroid/widget/TableLayout;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 44
    sget v0, Lcom/shenma/tvlauncher/R$layout;->table_media_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/TableMediaInfoBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

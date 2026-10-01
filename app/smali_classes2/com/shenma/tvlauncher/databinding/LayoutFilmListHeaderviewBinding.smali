.class public final Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;
.super Ljava/lang/Object;
.source "LayoutFilmListHeaderviewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final areasMenu:Lcom/view/SingleChoiceMenuView;

.field public final filmListHeaderview:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sortMenu:Lcom/view/SingleChoiceMenuView;

.field public final typesMenu:Lcom/view/SingleChoiceMenuView;

.field public final yearsMenu:Lcom/view/SingleChoiceMenuView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/view/SingleChoiceMenuView;Landroid/widget/LinearLayout;Lcom/view/SingleChoiceMenuView;Lcom/view/SingleChoiceMenuView;Lcom/view/SingleChoiceMenuView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "areasMenu"    # Lcom/view/SingleChoiceMenuView;
    .param p3, "filmListHeaderview"    # Landroid/widget/LinearLayout;
    .param p4, "sortMenu"    # Lcom/view/SingleChoiceMenuView;
    .param p5, "typesMenu"    # Lcom/view/SingleChoiceMenuView;
    .param p6, "yearsMenu"    # Lcom/view/SingleChoiceMenuView;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->areasMenu:Lcom/view/SingleChoiceMenuView;

    .line 43
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->filmListHeaderview:Landroid/widget/LinearLayout;

    .line 44
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->sortMenu:Lcom/view/SingleChoiceMenuView;

    .line 45
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->typesMenu:Lcom/view/SingleChoiceMenuView;

    .line 46
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    .line 47
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 76
    sget v0, Lcom/shenma/tvlauncher/R$id;->areas_menu:I

    .line 77
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/view/SingleChoiceMenuView;

    .line 78
    .local v4, "areasMenu":Lcom/view/SingleChoiceMenuView;
    if-eqz v4, :cond_3

    .line 82
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 84
    .local v5, "filmListHeaderview":Landroid/widget/LinearLayout;
    sget v0, Lcom/shenma/tvlauncher/R$id;->sort_menu:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/view/SingleChoiceMenuView;

    .line 86
    .local v6, "sortMenu":Lcom/view/SingleChoiceMenuView;
    if-eqz v6, :cond_2

    .line 90
    sget v0, Lcom/shenma/tvlauncher/R$id;->types_menu:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/view/SingleChoiceMenuView;

    .line 92
    .local v7, "typesMenu":Lcom/view/SingleChoiceMenuView;
    if-eqz v7, :cond_1

    .line 96
    sget v0, Lcom/shenma/tvlauncher/R$id;->years_menu:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/view/SingleChoiceMenuView;

    .line 98
    .local v8, "yearsMenu":Lcom/view/SingleChoiceMenuView;
    if-eqz v8, :cond_0

    .line 102
    new-instance v2, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;-><init>(Landroid/widget/LinearLayout;Lcom/view/SingleChoiceMenuView;Landroid/widget/LinearLayout;Lcom/view/SingleChoiceMenuView;Lcom/view/SingleChoiceMenuView;Lcom/view/SingleChoiceMenuView;)V

    return-object v2

    .line 99
    :cond_0
    goto :goto_0

    .line 93
    .end local v8    # "yearsMenu":Lcom/view/SingleChoiceMenuView;
    :cond_1
    goto :goto_0

    .line 87
    .end local v7    # "typesMenu":Lcom/view/SingleChoiceMenuView;
    :cond_2
    goto :goto_0

    .line 79
    .end local v5    # "filmListHeaderview":Landroid/widget/LinearLayout;
    .end local v6    # "sortMenu":Lcom/view/SingleChoiceMenuView;
    :cond_3
    nop

    .line 105
    .end local v4    # "areasMenu":Lcom/view/SingleChoiceMenuView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 63
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_film_list_headerview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutFilmListHeaderviewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

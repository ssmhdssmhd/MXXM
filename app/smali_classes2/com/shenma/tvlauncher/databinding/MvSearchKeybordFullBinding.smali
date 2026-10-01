.class public final Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;
.super Ljava/lang/Object;
.source "MvSearchKeybordFullBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final searchKeybordFullClear:Landroid/widget/TextView;

.field public final searchKeybordFullDel:Landroid/widget/ImageView;

.field public final searchKeybordSj:Landroid/widget/ImageView;

.field public final searchKeybordSj2:Landroid/widget/Button;

.field public final searchKeybordSp:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "searchKeybordFullClear"    # Landroid/widget/TextView;
    .param p3, "searchKeybordFullDel"    # Landroid/widget/ImageView;
    .param p4, "searchKeybordSj"    # Landroid/widget/ImageView;
    .param p5, "searchKeybordSj2"    # Landroid/widget/Button;
    .param p6, "searchKeybordSp"    # Landroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->searchKeybordFullClear:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->searchKeybordFullDel:Landroid/widget/ImageView;

    .line 46
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->searchKeybordSj:Landroid/widget/ImageView;

    .line 47
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->searchKeybordSj2:Landroid/widget/Button;

    .line 48
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->searchKeybordSp:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;
    .locals 9
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_clear:I

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 80
    .local v4, "searchKeybordFullClear":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 84
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_del:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 86
    .local v5, "searchKeybordFullDel":Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    .line 90
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_sj:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 92
    .local v6, "searchKeybordSj":Landroid/widget/ImageView;
    if-eqz v6, :cond_2

    .line 96
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_sj2:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    .line 98
    .local v7, "searchKeybordSj2":Landroid/widget/Button;
    if-eqz v7, :cond_1

    .line 102
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_sp:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 104
    .local v8, "searchKeybordSp":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 108
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v8}, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    return-object v2

    .line 105
    :cond_0
    goto :goto_0

    .line 99
    .end local v8    # "searchKeybordSp":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 93
    .end local v7    # "searchKeybordSj2":Landroid/widget/Button;
    :cond_2
    goto :goto_0

    .line 87
    .end local v6    # "searchKeybordSj":Landroid/widget/ImageView;
    :cond_3
    goto :goto_0

    .line 81
    .end local v5    # "searchKeybordFullDel":Landroid/widget/ImageView;
    :cond_4
    nop

    .line 111
    .end local v4    # "searchKeybordFullClear":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_search_keybord_full:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.class public final Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;
.super Ljava/lang/Object;
.source "MvSearchNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final SearchText:Landroid/widget/TextView;

.field public final keyboardView:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final searchEmptyText:Landroid/widget/TextView;

.field public final searchKeybordFullLayout:Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;

.field public final searchKeybordFullVoice:Landroid/widget/ImageView;

.field public final searchKeybordInput:Landroid/widget/EditText;

.field public final searchResult:Landroid/widget/GridView;

.field public final typeDetailsSum:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/GridView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "SearchText"    # Landroid/widget/TextView;
    .param p3, "keyboardView"    # Landroid/widget/FrameLayout;
    .param p4, "searchEmptyText"    # Landroid/widget/TextView;
    .param p5, "searchKeybordFullLayout"    # Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;
    .param p6, "searchKeybordFullVoice"    # Landroid/widget/ImageView;
    .param p7, "searchKeybordInput"    # Landroid/widget/EditText;
    .param p8, "searchResult"    # Landroid/widget/GridView;
    .param p9, "typeDetailsSum"    # Landroid/widget/TextView;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 56
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->SearchText:Landroid/widget/TextView;

    .line 57
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->keyboardView:Landroid/widget/FrameLayout;

    .line 58
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->searchEmptyText:Landroid/widget/TextView;

    .line 59
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->searchKeybordFullLayout:Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;

    .line 60
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->searchKeybordFullVoice:Landroid/widget/ImageView;

    .line 61
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->searchKeybordInput:Landroid/widget/EditText;

    .line 62
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->searchResult:Landroid/widget/GridView;

    .line 63
    iput-object p9, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->typeDetailsSum:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 93
    sget v0, Lcom/shenma/tvlauncher/R$id;->SearchText:I

    .line 94
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, "SearchText":Landroid/widget/TextView;
    if-eqz v4, :cond_7

    .line 99
    sget v0, Lcom/shenma/tvlauncher/R$id;->keyboard_view:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    .line 101
    .local v5, "keyboardView":Landroid/widget/FrameLayout;
    if-eqz v5, :cond_6

    .line 105
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_empty_text:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 107
    .local v6, "searchEmptyText":Landroid/widget/TextView;
    if-eqz v6, :cond_5

    .line 111
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_layout:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "searchKeybordFullLayout":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 116
    invoke-static {v1}, Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;

    move-result-object v7

    .line 118
    .local v7, "binding_searchKeybordFullLayout":Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_full_voice:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 120
    .local v8, "searchKeybordFullVoice":Landroid/widget/ImageView;
    if-eqz v8, :cond_3

    .line 124
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_keybord_input:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    .line 126
    .local v9, "searchKeybordInput":Landroid/widget/EditText;
    if-eqz v9, :cond_2

    .line 130
    sget v0, Lcom/shenma/tvlauncher/R$id;->search_result:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/GridView;

    .line 132
    .local v10, "searchResult":Landroid/widget/GridView;
    if-eqz v10, :cond_1

    .line 136
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_sum:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 138
    .local v11, "typeDetailsSum":Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 142
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v11}, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/GridView;Landroid/widget/TextView;)V

    return-object v2

    .line 139
    :cond_0
    goto :goto_0

    .line 133
    .end local v11    # "typeDetailsSum":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 127
    .end local v10    # "searchResult":Landroid/widget/GridView;
    :cond_2
    goto :goto_0

    .line 121
    .end local v9    # "searchKeybordInput":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 114
    .end local v7    # "binding_searchKeybordFullLayout":Lcom/shenma/tvlauncher/databinding/MvSearchKeybordFullBinding;
    .end local v8    # "searchKeybordFullVoice":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 108
    .end local v1    # "searchKeybordFullLayout":Landroid/view/View;
    :cond_5
    goto :goto_0

    .line 102
    .end local v6    # "searchEmptyText":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 96
    .end local v5    # "keyboardView":Landroid/widget/FrameLayout;
    :cond_7
    nop

    .line 146
    .end local v4    # "SearchText":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 80
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_search_new:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvSearchNewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

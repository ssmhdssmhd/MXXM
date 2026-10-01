.class public final Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;
.super Ljava/lang/Object;
.source "MvTypeDetailsFilterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final filterArea:Landroid/widget/LinearLayout;

.field public final filterListArea:Landroid/widget/ListView;

.field public final filterListSeach:Landroid/widget/ListView;

.field public final filterListSort:Landroid/widget/ListView;

.field public final filterListType:Landroid/widget/ListView;

.field public final filterListYear:Landroid/widget/ListView;

.field public final filterRank:Landroid/widget/LinearLayout;

.field public final filterSort:Landroid/widget/LinearLayout;

.field public final filterType:Landroid/widget/LinearLayout;

.field public final filterYear:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvFilterYear:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "filterArea"    # Landroid/widget/LinearLayout;
    .param p3, "filterListArea"    # Landroid/widget/ListView;
    .param p4, "filterListSeach"    # Landroid/widget/ListView;
    .param p5, "filterListSort"    # Landroid/widget/ListView;
    .param p6, "filterListType"    # Landroid/widget/ListView;
    .param p7, "filterListYear"    # Landroid/widget/ListView;
    .param p8, "filterRank"    # Landroid/widget/LinearLayout;
    .param p9, "filterSort"    # Landroid/widget/LinearLayout;
    .param p10, "filterType"    # Landroid/widget/LinearLayout;
    .param p11, "filterYear"    # Landroid/widget/LinearLayout;
    .param p12, "tvFilterYear"    # Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->rootView:Landroid/widget/LinearLayout;

    .line 64
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterArea:Landroid/widget/LinearLayout;

    .line 65
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterListArea:Landroid/widget/ListView;

    .line 66
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterListSeach:Landroid/widget/ListView;

    .line 67
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterListSort:Landroid/widget/ListView;

    .line 68
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterListType:Landroid/widget/ListView;

    .line 69
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterListYear:Landroid/widget/ListView;

    .line 70
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterRank:Landroid/widget/LinearLayout;

    .line 71
    iput-object p9, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterSort:Landroid/widget/LinearLayout;

    .line 72
    iput-object p10, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterType:Landroid/widget/LinearLayout;

    .line 73
    iput-object p11, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->filterYear:Landroid/widget/LinearLayout;

    .line 74
    iput-object p12, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->tvFilterYear:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;
    .locals 15
    .param p0, "rootView"    # Landroid/view/View;

    .line 104
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_area:I

    .line 105
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 106
    .local v4, "filterArea":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_a

    .line 110
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_list_area:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ListView;

    .line 112
    .local v5, "filterListArea":Landroid/widget/ListView;
    if-eqz v5, :cond_9

    .line 116
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_list_seach:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ListView;

    .line 118
    .local v6, "filterListSeach":Landroid/widget/ListView;
    if-eqz v6, :cond_8

    .line 122
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_list_sort:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ListView;

    .line 124
    .local v7, "filterListSort":Landroid/widget/ListView;
    if-eqz v7, :cond_7

    .line 128
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_list_type:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ListView;

    .line 130
    .local v8, "filterListType":Landroid/widget/ListView;
    if-eqz v8, :cond_6

    .line 134
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_list_year:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ListView;

    .line 136
    .local v9, "filterListYear":Landroid/widget/ListView;
    if-eqz v9, :cond_5

    .line 140
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_rank:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    .line 142
    .local v10, "filterRank":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_4

    .line 146
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_sort:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    .line 148
    .local v11, "filterSort":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_3

    .line 152
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_type:I

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    .line 154
    .local v12, "filterType":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_2

    .line 158
    sget v0, Lcom/shenma/tvlauncher/R$id;->filter_year:I

    .line 159
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/LinearLayout;

    .line 160
    .local v13, "filterYear":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_1

    .line 164
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_filter_year:I

    .line 165
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    .line 166
    .local v14, "tvFilterYear":Landroid/widget/TextView;
    if-eqz v14, :cond_0

    .line 170
    new-instance v2, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v14}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/ListView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v2

    .line 167
    :cond_0
    goto :goto_0

    .line 161
    .end local v14    # "tvFilterYear":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 155
    .end local v13    # "filterYear":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 149
    .end local v12    # "filterType":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 143
    .end local v11    # "filterSort":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 137
    .end local v10    # "filterRank":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 131
    .end local v9    # "filterListYear":Landroid/widget/ListView;
    :cond_6
    goto :goto_0

    .line 125
    .end local v8    # "filterListType":Landroid/widget/ListView;
    :cond_7
    goto :goto_0

    .line 119
    .end local v7    # "filterListSort":Landroid/widget/ListView;
    :cond_8
    goto :goto_0

    .line 113
    .end local v6    # "filterListSeach":Landroid/widget/ListView;
    :cond_9
    goto :goto_0

    .line 107
    .end local v5    # "filterListArea":Landroid/widget/ListView;
    :cond_a
    nop

    .line 174
    .end local v4    # "filterArea":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 91
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_type_details_filter:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvTypeDetailsFilterBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

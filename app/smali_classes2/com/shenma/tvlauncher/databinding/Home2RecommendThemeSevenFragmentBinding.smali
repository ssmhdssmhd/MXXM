.class public final Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;
.super Ljava/lang/Object;
.source "Home2RecommendThemeSevenFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final collect:Landroid/widget/LinearLayout;

.field public final history:Landroid/widget/LinearLayout;

.field public final llSetting:Landroid/widget/LinearLayout;

.field public final llZb:Landroid/widget/LinearLayout;

.field public final mine:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final search:Landroid/widget/LinearLayout;

.field public final tvTime:Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;

.field public final viewMovieList:Lcom/view/RecyclerViewAtViewPager2;

.field public final vod:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;Lcom/view/RecyclerViewAtViewPager2;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "collect"    # Landroid/widget/LinearLayout;
    .param p3, "history"    # Landroid/widget/LinearLayout;
    .param p4, "llSetting"    # Landroid/widget/LinearLayout;
    .param p5, "llZb"    # Landroid/widget/LinearLayout;
    .param p6, "mine"    # Landroid/widget/LinearLayout;
    .param p7, "search"    # Landroid/widget/LinearLayout;
    .param p8, "tvTime"    # Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;
    .param p9, "viewMovieList"    # Lcom/view/RecyclerViewAtViewPager2;
    .param p10, "vod"    # Landroid/widget/RelativeLayout;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->collect:Landroid/widget/LinearLayout;

    .line 58
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->history:Landroid/widget/LinearLayout;

    .line 59
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->llSetting:Landroid/widget/LinearLayout;

    .line 60
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->llZb:Landroid/widget/LinearLayout;

    .line 61
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->mine:Landroid/widget/LinearLayout;

    .line 62
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->search:Landroid/widget/LinearLayout;

    .line 63
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->tvTime:Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;

    .line 64
    iput-object p9, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->viewMovieList:Lcom/view/RecyclerViewAtViewPager2;

    .line 65
    iput-object p10, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->vod:Landroid/widget/RelativeLayout;

    .line 66
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;
    .locals 13
    .param p0, "rootView"    # Landroid/view/View;

    .line 95
    sget v0, Lcom/shenma/tvlauncher/R$id;->collect:I

    .line 96
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 97
    .local v4, "collect":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_7

    .line 101
    sget v0, Lcom/shenma/tvlauncher/R$id;->history:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 103
    .local v5, "history":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_6

    .line 107
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_setting:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    .line 109
    .local v6, "llSetting":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_5

    .line 113
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_zb:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 115
    .local v7, "llZb":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_4

    .line 119
    sget v0, Lcom/shenma/tvlauncher/R$id;->mine:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    .line 121
    .local v8, "mine":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_3

    .line 125
    sget v0, Lcom/shenma/tvlauncher/R$id;->search:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    .line 127
    .local v9, "search":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_2

    .line 131
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_time:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;

    .line 133
    .local v10, "tvTime":Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;
    if-eqz v10, :cond_1

    .line 137
    sget v0, Lcom/shenma/tvlauncher/R$id;->view_movie_list:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/view/RecyclerViewAtViewPager2;

    .line 139
    .local v11, "viewMovieList":Lcom/view/RecyclerViewAtViewPager2;
    if-eqz v11, :cond_0

    .line 143
    move-object v12, p0

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 145
    .local v12, "vod":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v12}, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;Lcom/view/RecyclerViewAtViewPager2;Landroid/widget/RelativeLayout;)V

    return-object v2

    .line 140
    .end local v12    # "vod":Landroid/widget/RelativeLayout;
    :cond_0
    goto :goto_0

    .line 134
    .end local v11    # "viewMovieList":Lcom/view/RecyclerViewAtViewPager2;
    :cond_1
    goto :goto_0

    .line 128
    .end local v10    # "tvTime":Lcom/shenma/tvlauncher/view/MyNoPaddingTextView;
    :cond_2
    goto :goto_0

    .line 122
    .end local v9    # "search":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 116
    .end local v8    # "mine":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 110
    .end local v7    # "llZb":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 104
    .end local v6    # "llSetting":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 98
    .end local v5    # "history":Landroid/widget/LinearLayout;
    :cond_7
    nop

    .line 148
    .end local v4    # "collect":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 82
    sget v0, Lcom/shenma/tvlauncher/R$layout;->home2_recommend_theme_seven_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/Home2RecommendThemeSevenFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

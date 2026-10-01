.class public final Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;
.super Ljava/lang/Object;
.source "ActivityHistoryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final historyDetailsSum:Landroid/widget/TextView;

.field public final historyGrid:Landroidx/recyclerview/widget/RecyclerView;

.field public final ivLine760:Landroid/widget/ImageView;

.field public final llTypeDetails:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvNoData:Landroid/widget/TextView;

.field public final typeDetails:Landroid/widget/RelativeLayout;

.field public final typeDetailsSum:Landroid/widget/TextView;

.field public final vodHistiry:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "historyDetailsSum"    # Landroid/widget/TextView;
    .param p3, "historyGrid"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "ivLine760"    # Landroid/widget/ImageView;
    .param p5, "llTypeDetails"    # Landroid/widget/LinearLayout;
    .param p6, "tvNoData"    # Landroid/widget/TextView;
    .param p7, "typeDetails"    # Landroid/widget/RelativeLayout;
    .param p8, "typeDetailsSum"    # Landroid/widget/TextView;
    .param p9, "vodHistiry"    # Landroid/widget/FrameLayout;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->rootView:Landroid/widget/FrameLayout;

    .line 56
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->historyDetailsSum:Landroid/widget/TextView;

    .line 57
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->historyGrid:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->ivLine760:Landroid/widget/ImageView;

    .line 59
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->llTypeDetails:Landroid/widget/LinearLayout;

    .line 60
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->tvNoData:Landroid/widget/TextView;

    .line 61
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->typeDetails:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->typeDetailsSum:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->vodHistiry:Landroid/widget/FrameLayout;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 93
    sget v0, Lcom/shenma/tvlauncher/R$id;->history_details_sum:I

    .line 94
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, "historyDetailsSum":Landroid/widget/TextView;
    if-eqz v4, :cond_6

    .line 99
    sget v0, Lcom/shenma/tvlauncher/R$id;->history_grid:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .local v5, "historyGrid":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v5, :cond_5

    .line 105
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_line760:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 107
    .local v6, "ivLine760":Landroid/widget/ImageView;
    if-eqz v6, :cond_4

    .line 111
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_type_details:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    .line 113
    .local v7, "llTypeDetails":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_3

    .line 117
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_no_data:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 119
    .local v8, "tvNoData":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 123
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 125
    .local v9, "typeDetails":Landroid/widget/RelativeLayout;
    if-eqz v9, :cond_1

    .line 129
    sget v0, Lcom/shenma/tvlauncher/R$id;->type_details_sum:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 131
    .local v10, "typeDetailsSum":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 135
    move-object v11, p0

    check-cast v11, Landroid/widget/FrameLayout;

    .line 137
    .local v11, "vodHistiry":Landroid/widget/FrameLayout;
    new-instance v2, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v11}, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    return-object v2

    .line 132
    .end local v11    # "vodHistiry":Landroid/widget/FrameLayout;
    :cond_0
    goto :goto_0

    .line 126
    .end local v10    # "typeDetailsSum":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 120
    .end local v9    # "typeDetails":Landroid/widget/RelativeLayout;
    :cond_2
    goto :goto_0

    .line 114
    .end local v8    # "tvNoData":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 108
    .end local v7    # "llTypeDetails":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 102
    .end local v6    # "ivLine760":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 96
    .end local v5    # "historyGrid":Landroidx/recyclerview/widget/RecyclerView;
    :cond_6
    nop

    .line 140
    .end local v4    # "historyDetailsSum":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 80
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_history:I

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
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ActivityHistoryBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.class public Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Home2RecommendThemeSevenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/RecommendInfo;",
            ">;",
            "Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 504
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/RecommendInfo;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->items:Ljava/util/List;

    .line 506
    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;

    .line 507
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-shenma-tvlauncher-fragment-Home2RecommendThemeSevenFragment$RecommentAdapter(Lcom/shenma/tvlauncher/domain/RecommendInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 527
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;->onItemClick(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    .line 530
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 496
    check-cast p1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;
    .param p2, "position"    # I

    .line 523
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 524
    .local v0, "item":Lcom/shenma/tvlauncher/domain/RecommendInfo;
    invoke-virtual {p1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->bind(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    .line 526
    iget-object v1, p1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    invoke-static {p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;->-$$Nest$fgetitem_cardview(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 548
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 514
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->home2_recommend_portrait_item2:I

    .line 515
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;

    invoke-direct {v1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$HorizontalViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

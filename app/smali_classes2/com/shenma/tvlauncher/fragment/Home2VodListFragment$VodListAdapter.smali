.class public Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Home2VodListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VodListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_ITEM:I = 0x1


# instance fields
.field private final headerView:Landroid/view/View;

.field private isHeaderVisible:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;

.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetisHeaderVisible(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->isHeaderVisible:Z

    return p0
.end method

.method public constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    .param p2, "listener"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;
    .param p3, "headerView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 785
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->items:Ljava/util/List;

    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->isHeaderVisible:Z

    .line 786
    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;

    .line 787
    iput-object p3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->headerView:Landroid/view/View;

    .line 788
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;)V"
        }
    .end annotation

    .line 829
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetpageindex(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 833
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->notifyDataSetChanged()V

    .line 834
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 884
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->isHeaderVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 849
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->isHeaderVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-shenma-tvlauncher-fragment-Home2VodListFragment$VodListAdapter(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 859
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;

    invoke-interface {v0, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$OnAdapterItemClickListener;->onItemClick(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V

    .line 862
    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 793
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 794
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 795
    .local v0, "manager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 796
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 797
    .local v1, "gridManager":Landroidx/recyclerview/widget/GridLayoutManager;
    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 806
    .end local v1    # "gridManager":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 854
    instance-of v0, p1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;

    if-eqz v0, :cond_1

    .line 855
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->isHeaderVisible:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 856
    .local v0, "dataPos":I
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    .line 857
    .local v1, "item":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    move-object v2, p1

    check-cast v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->bind(Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V

    .line 858
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    move-object v2, p1

    check-cast v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;->-$$Nest$fgetroot_cardview(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$2;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$2;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 880
    .end local v0    # "dataPos":I
    .end local v1    # "item":Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;
    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 839
    if-nez p2, :cond_0

    .line 840
    new-instance v0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$HeaderViewHolder;

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->headerView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$HeaderViewHolder;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;Landroid/view/View;)V

    return-object v0

    .line 842
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->home2_vdolist_item:I

    .line 843
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 844
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {v1, v2, v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$ItemViewHolder;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Landroid/view/View;)V

    return-object v1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 811
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 812
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 814
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 815
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 818
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setHeaderVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 822
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->isHeaderVisible:Z

    if-eq v0, p1, :cond_0

    .line 823
    iput-boolean p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->isHeaderVisible:Z

    .line 824
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->notifyDataSetChanged()V

    .line 826
    :cond_0
    return-void
.end method

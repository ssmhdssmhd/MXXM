.class public Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Home2RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;,
        Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;",
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

.field private listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;

.field private onItemFocusedListener:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonItemFocusedListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->onItemFocusedListener:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/domain/RecommendInfo;",
            ">;",
            "Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 523
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/RecommendInfo;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->items:Ljava/util/List;

    .line 525
    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;

    .line 526
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-shenma-tvlauncher-fragment-Home2RecommendFragment$RecommentAdapter(Lcom/shenma/tvlauncher/domain/RecommendInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 555
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->listener:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;->onItemClick(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    .line 558
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

    .line 506
    check-cast p1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;
    .param p2, "position"    # I

    .line 551
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 552
    .local v0, "item":Lcom/shenma/tvlauncher/domain/RecommendInfo;
    invoke-virtual {p1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->bind(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    .line 554
    iget-object v1, p1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v1, p1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;->item_movie_cardview:Landroid/view/View;

    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 579
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

    .line 506
    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/HomeActivity2;->LANDSCAPE_MODE:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 534
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$layout;->home2_movie_landscape_item:I

    .line 535
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;

    invoke-direct {v1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 538
    :cond_0
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v1

    sget v2, Lcom/shenma/tvlauncher/HomeActivity2;->PORTRAIT_MODE:I

    if-ne v1, v2, :cond_1

    .line 540
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$layout;->home2_movie_portrait_item:I

    .line 541
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 543
    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;

    invoke-direct {v1, v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$HorizontalViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 545
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public setOnItemFocusedListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;)V
    .locals 0
    .param p1, "onItemFocusedListener"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;

    .line 512
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->onItemFocusedListener:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;

    .line 513
    return-void
.end method

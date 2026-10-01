.class public Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HistoryAndCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VodListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;

.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
    .param p2, "listener"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->items:Ljava/util/List;

    .line 380
    iput-object p2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->listener:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;

    .line 381
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/db/Album;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->notifyDataSetChanged()V

    .line 388
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-shenma-tvlauncher-HistoryAndCollectActivity$VodListAdapter(Lcom/shenma/tvlauncher/vod/db/Album;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/shenma/tvlauncher/vod/db/Album;
    .param p2, "v"    # Landroid/view/View;

    .line 405
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->listener:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->listener:Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;

    invoke-interface {v0, p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$OnAdapterItemClickListener;->onItemClick(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 408
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

    .line 376
    check-cast p1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;
    .param p2, "position"    # I

    .line 402
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    .line 403
    .local v0, "item":Lcom/shenma/tvlauncher/vod/db/Album;
    invoke-virtual {p1, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->bind(Lcom/shenma/tvlauncher/vod/db/Album;)V

    .line 404
    iget-object v1, p1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;Lcom/shenma/tvlauncher/vod/db/Album;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    invoke-static {p1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;->-$$Nest$fgetroot_cardview(Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter$1;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 425
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

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 393
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$layout;->home2_vdolist_item:I

    .line 394
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$VodListAdapter;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {v1, v2, v0}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$ItemViewHolder;-><init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;Landroid/view/View;)V

    return-object v1
.end method

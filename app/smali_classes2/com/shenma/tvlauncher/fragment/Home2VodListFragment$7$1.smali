.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "Home2VodListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 481
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 485
    if-eqz p2, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 488
    .local v0, "manager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 489
    .local v1, "lastVisiblePos":I
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getItemCount()I

    move-result v2

    .line 491
    .local v2, "totalItemCount":I
    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetisLoading(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetisLastPage(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputisLoading(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Z)V

    .line 493
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;

    iget-object v5, v5, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetpageindex(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputpageindex(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->processLogic(Ljava/lang/String;I)V

    .line 495
    :cond_1
    return-void
.end method

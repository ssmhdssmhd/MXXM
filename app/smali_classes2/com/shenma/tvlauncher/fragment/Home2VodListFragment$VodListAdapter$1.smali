.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "Home2VodListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

.field final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 797
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    iput-object p2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .line 801
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 801
    :goto_0
    return v0
.end method

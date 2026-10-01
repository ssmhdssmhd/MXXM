.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;
.super Ljava/lang/Object;
.source "Home2VodListFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 474
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V
    .locals 4
    .param p1, "response"    # Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 476
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->closeProgressDialog()V

    .line 477
    if-eqz p1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputisLoading(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Z)V

    .line 479
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v0

    .line 480
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetadapter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$VodListAdapter;->addData(Ljava/util/List;)V

    .line 481
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetviewMovieList(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 508
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "EpisodesNumber"

    invoke-static {v2, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 512
    .local v1, "EpisodesNumber":I
    nop

    .line 513
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 553
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    .end local v1    # "EpisodesNumber":I
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 474
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$7;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V

    return-void
.end method

.class Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;
.super Ljava/lang/Object;
.source "Home2RecommendThemeSevenFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/Recommend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V
    .locals 5
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Recommend;

    .line 433
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Recommend;->getData()Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/RecommendInfo;>;"
    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;

    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;)V

    invoke-direct {v1, v0, v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;-><init>(Ljava/util/List;Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;)V

    .line 449
    .local v1, "adapter":Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter;
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->-$$Nest$fgetviewMovieList(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Lcom/view/RecyclerViewAtViewPager2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/view/RecyclerViewAtViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 450
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->-$$Nest$fgetviewMovieList(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Lcom/view/RecyclerViewAtViewPager2;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$ItemSpacingDecoration;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$ItemSpacingDecoration;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/view/RecyclerViewAtViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 451
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

    .line 430
    check-cast p1, Lcom/shenma/tvlauncher/domain/Recommend;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V

    return-void
.end method

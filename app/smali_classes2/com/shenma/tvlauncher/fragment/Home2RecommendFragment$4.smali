.class Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;
.super Ljava/lang/Object;
.source "Home2RecommendFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V
    .locals 6
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Recommend;

    .line 210
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Recommend;->getData()Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/domain/RecommendInfo;>;"
    new-instance v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;

    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$1;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;)V

    invoke-direct {v1, v0, v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;-><init>(Ljava/util/List;Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemClickListener;)V

    .line 233
    .local v1, "adapter":Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;
    new-instance v2, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4$2;-><init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter;->setOnItemFocusedListener(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$RecommentAdapter$OnItemFocusedListener;)V

    .line 254
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetviewMovieList(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/view/RecyclerViewAtViewPager2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/view/RecyclerViewAtViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 255
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetviewMovieList(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/view/RecyclerViewAtViewPager2;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$ItemSpacingDecoration;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$ItemSpacingDecoration;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/view/RecyclerViewAtViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 257
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 258
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 259
    .local v2, "recommendInfo":Lcom/shenma/tvlauncher/domain/RecommendInfo;
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgethome2RecommentMovieNum(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetmovieTitle(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetmovieDetail(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    const-string v3, ""

    .line 265
    .local v3, "url":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 266
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$sfgetmode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 268
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getThumb()Ljava/lang/String;

    move-result-object v3

    .line 270
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v4}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetonItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 271
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-static {v4}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->-$$Nest$fgetonItemPickerShow(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$OnItemPickerShow;->showItemPic(Ljava/lang/String;)V

    .line 274
    .end local v2    # "recommendInfo":Lcom/shenma/tvlauncher/domain/RecommendInfo;
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
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

    .line 207
    check-cast p1, Lcom/shenma/tvlauncher/domain/Recommend;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$4;->onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V

    return-void
.end method

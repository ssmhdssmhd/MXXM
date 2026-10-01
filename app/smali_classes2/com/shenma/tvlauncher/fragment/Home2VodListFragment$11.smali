.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;
.super Ljava/lang/Object;
.source "Home2VodListFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->createVodFilterSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/vod/domain/VodFilter;",
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

    .line 642
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VodFilter;)V
    .locals 10
    .param p1, "response"    # Lcom/shenma/tvlauncher/vod/domain/VodFilter;

    .line 644
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Api_url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "Api_url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "BASE_HOST"

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "BASE_HOST":Ljava/lang/String;
    if-eqz p1, :cond_10

    .line 647
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodFilter;->getFlitter()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    .line 651
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sorts:Ljava/util/ArrayList;

    .line 652
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sorts:Ljava/util/ArrayList;

    const-string/jumbo v3, "\u70ed\u5ea6\u4f18\u5148"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sorts:Ljava/util/ArrayList;

    const-string/jumbo v3, "\u8bc4\u5206\u6700\u9ad8"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sorts:Ljava/util/ArrayList;

    const-string/jumbo v3, "\u6700\u8fd1\u66f4\u65b0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "area"

    const-string/jumbo v4, "year"

    const-string/jumbo v5, "type"

    const/4 v6, 0x0

    if-lez v2, :cond_2

    .line 658
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getField()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 660
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputtypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 662
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 664
    iget-object v7, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    .line 667
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    .line 668
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getField()Ljava/lang/String;

    move-result-object v2

    .line 669
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 670
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v9}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputtypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    goto :goto_1

    .line 671
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 672
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v9}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    goto :goto_1

    .line 673
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 674
    iget-object v8, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v9, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v9}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    .line 677
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x2

    if-le v2, v7, :cond_8

    .line 678
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getField()Ljava/lang/String;

    move-result-object v2

    .line 679
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 680
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputtypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    goto :goto_2

    .line 681
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 682
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    goto :goto_2

    .line 683
    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 684
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fputareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;Ljava/util/List;)V

    .line 688
    .end local v2    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgettypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "\u5168\u90e8"

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgettypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 689
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->typesMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setVisibility(I)V

    .line 690
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->typesMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v3}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgettypes(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 692
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v5, v5, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->typesMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v5, v4}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 693
    .end local v4    # "type":Ljava/lang/String;
    goto :goto_3

    .line 694
    :cond_9
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->typesMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 696
    :cond_a
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 697
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setVisibility(I)V

    .line 698
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v3}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 699
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetyears(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 700
    .local v4, "year":Ljava/lang/String;
    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v5, v5, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v5, v4}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 701
    .end local v4    # "year":Ljava/lang/String;
    goto :goto_4

    .line 702
    :cond_b
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->yearsMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 704
    :cond_c
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 705
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areasMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setVisibility(I)V

    .line 706
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areasMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v3}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->-$$Nest$fgetareas(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 708
    .local v3, "area":Ljava/lang/String;
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areasMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v4, v3}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 709
    .end local v3    # "area":Ljava/lang/String;
    goto :goto_5

    .line 710
    :cond_d
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->areasMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 712
    :cond_e
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sortMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setVisibility(I)V

    .line 713
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sortMenu:Lcom/view/SingleChoiceMenuView;

    const-string/jumbo v3, "\u6392\u5e8f"

    invoke-virtual {v2, v3}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 715
    .local v3, "sort":Ljava/lang/String;
    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sortMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v4, v3}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 716
    .end local v3    # "sort":Ljava/lang/String;
    goto :goto_6

    .line 717
    :cond_f
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    iget-object v2, v2, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->sortMenu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v2, v6}, Lcom/view/SingleChoiceMenuView;->setSelectedPosition(I)V

    .line 722
    :cond_10
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

    .line 642
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VodFilter;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$11;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodFilter;)V

    return-void
.end method

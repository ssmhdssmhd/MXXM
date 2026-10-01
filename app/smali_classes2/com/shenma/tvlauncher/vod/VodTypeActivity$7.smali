.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;->createVodFilterSuccessListener()Lcom/android/volley/Response$Listener;
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodTypeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 507
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VodFilter;)V
    .locals 11
    .param p1, "response"    # Lcom/shenma/tvlauncher/vod/domain/VodFilter;

    .line 509
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Api_url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "Api_url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "BASE_HOST"

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "BASE_HOST":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 512
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodFilter;->getFlitter()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v2, "seachs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "\u641c\u7d22"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const-string/jumbo v3, "\u6e05\u7a7a\u7b5b\u9009"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v3, "sorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "\u70ed\u5ea6\u4f18\u5148"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const-string/jumbo v4, "\u8bc4\u5206\u6700\u9ad8"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    const-string/jumbo v4, "\u6700\u8fd1\u66f4\u65b0"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "area"

    const-string/jumbo v6, "year"

    const-string/jumbo v7, "type"

    if-lez v4, :cond_2

    .line 523
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getField()Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 525
    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputtypes(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 527
    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputyears(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 529
    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputareas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    .line 532
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_5

    .line 533
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getField()Ljava/lang/String;

    move-result-object v4

    .line 534
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 535
    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputtypes(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 537
    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputyears(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    goto :goto_1

    .line 538
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 539
    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v10}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputareas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    .line 542
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x2

    if-le v4, v8, :cond_8

    .line 543
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getField()Ljava/lang/String;

    move-result-object v4

    .line 544
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 545
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputtypes(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    goto :goto_2

    .line 546
    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 547
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputyears(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    goto :goto_2

    .line 548
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 549
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetvodFilter(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;

    invoke-virtual {v6}, Lcom/shenma/tvlauncher/vod/domain/VodFilterInfo;->getValues()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fputareas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;Ljava/util/List;)V

    .line 554
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgettypes(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgettypes(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 555
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetfilter_list_type(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgettypes(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 557
    :cond_9
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetyears(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetyears(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 558
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetfilter_list_year(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetyears(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 560
    :cond_a
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetareas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetareas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 561
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetfilter_list_area(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetareas(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 563
    :cond_b
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetfilter_list_seach(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 564
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetfilter_list_sort(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VodTypeActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/shenma/tvlauncher/vod/adapter/TypeDetailsSubMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    .end local v2    # "seachs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
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

    .line 507
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VodFilter;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/VodTypeActivity$7;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodFilter;)V

    return-void
.end method

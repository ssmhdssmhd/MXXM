.class Lcom/shenma/tvlauncher/vod/SearchActivity$16;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 602
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V
    .locals 6
    .param p1, "paramObject"    # Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    .line 605
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputvodtypeinfo(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V

    .line 627
    nop

    .line 628
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 629
    .local v0, "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 630
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 631
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 632
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputvodpageindex(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V

    .line 633
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetsearchtypeAdapter(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;->changData(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 612
    .end local v0    # "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetgv_search_result(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputvodpageindex(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V

    .line 614
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputvodtypeinfo(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vodtypeinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodtypeinfo(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getPageindex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodtypeinfo(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getVideonum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "joychang"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodtypeinfo(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getTotalpage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputtotalpage(Lcom/shenma/tvlauncher/vod/SearchActivity;I)V

    .line 617
    nop

    .line 618
    invoke-virtual {p1}, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 620
    .restart local v0    # "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 621
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/util/ArrayList;)V

    .line 622
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v2, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iget-object v5, v5, Lcom/shenma/tvlauncher/vod/SearchActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v2, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputsearchtypeAdapter(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;)V

    .line 623
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetgv_search_result(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetsearchtypeAdapter(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 625
    .end local v0    # "vodDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;>;"
    :cond_3
    goto :goto_2

    .line 606
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    const-string/jumbo v2, "\u6ca1\u6709\u641c\u7d22\u5230\u76f8\u5173\u5185\u5bb9!"

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 607
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/util/ArrayList;)V

    .line 608
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v1, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/vod/SearchActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1, v2, v3, v4}, Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputsearchtypeAdapter(Lcom/shenma/tvlauncher/vod/SearchActivity;Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;)V

    .line 609
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetgv_search_result(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetsearchtypeAdapter(Lcom/shenma/tvlauncher/vod/SearchActivity;)Lcom/shenma/tvlauncher/vod/adapter/SearchTypeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 610
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetgv_search_result(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 637
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->closeProgressDialog()V

    .line 638
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

    .line 602
    check-cast p1, Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/SearchActivity$16;->onResponse(Lcom/shenma/tvlauncher/vod/domain/VodTypeInfo;)V

    return-void
.end method

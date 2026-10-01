.class Lcom/shenma/tvlauncher/UserActivity$24;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 847
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 851
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 852
    .local v0, "album":Lcom/shenma/tvlauncher/vod/db/Album;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetmPosition(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 853
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetmPosition(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    .line 855
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_2

    .line 873
    :pswitch_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetUSER_TYPE(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputAlbumls(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)V

    .line 874
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 875
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 876
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 877
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v3, Lcom/shenma/tvlauncher/R$string;->films_in_total:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->No_deletion:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 882
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetUSER_TYPE(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteAllByWhere(I)V

    .line 883
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputmPosition(Lcom/shenma/tvlauncher/UserActivity;I)V

    .line 884
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_2

    .line 858
    :pswitch_1
    if-eqz v0, :cond_2

    .line 859
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getAlbumType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getTypeId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteByWhere(Ljava/lang/String;Ljava/lang/String;I)V

    .line 860
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/vod/db/Album;->getTypeId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputAlbumls(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)V

    .line 861
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetmPosition(Lcom/shenma/tvlauncher/UserActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->remove(I)V

    .line 862
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 863
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->common:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Film:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 866
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->No_selection:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 868
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputmPosition(Lcom/shenma/tvlauncher/UserActivity;I)V

    .line 869
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$24;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 870
    nop

    .line 887
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

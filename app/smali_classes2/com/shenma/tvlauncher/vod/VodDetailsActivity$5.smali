.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;
.super Ljava/lang/Object;
.source "VodDetailsActivity.java"

# interfaces
.implements Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->CreateBottomLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 652
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 9
    .param p1, "position"    # I

    .line 655
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetlastXuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iput v1, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lastPositinTime:I

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputxuanjiSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    .line 660
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_paixu(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "xj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetxuanjiSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 661
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputisRecommandClick(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Z)V

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v0, "arrayLista":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 664
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 667
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$string;->No_data_source:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 668
    return-void

    .line 670
    :cond_2
    const/4 v2, 0x0

    .line 674
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v3

    .line 675
    .local v3, "i":I
    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    sget-object v5, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputdomain(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V

    .line 676
    sget-object v4, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v2

    .line 680
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v4, "arrayList":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "i2":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 682
    new-instance v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;

    invoke-direct {v6}, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;-><init>()V

    .line 683
    .local v6, "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->title:Ljava/lang/String;

    .line 684
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-virtual {v7}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->getUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/shenma/tvlauncher/vod/domain/VideoInfo;->url:Ljava/lang/String;

    .line 685
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v6    # "vinfo":Lcom/shenma/tvlauncher/vod/domain/VideoInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 687
    .end local v5    # "i2":I
    :cond_3
    sget-object v5, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sd:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "arrayList"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 688
    const/4 v5, 0x0

    .line 689
    .local v5, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    const-class v8, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    .end local v5    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetalbumPic(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "albumPic"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "vodtype"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "vodstate"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetnextlink(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "nextlink"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "videoId"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodname(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "vodname"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetsourceId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "sourceId"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetdomain(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "domain"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetisRecommandClick(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Z

    move-result v5

    const-string v7, "isRecommandClick"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget v5, v5, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lastPositinTime:I

    const-string v7, "collectionTime"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "vodPlayUrl"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_paixu(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/view/SingleChoiceMenuView;->getSelectedPosition()I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v5, p1

    const-string v7, "playIndex"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    const/high16 v5, 0x30000

    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 705
    iget-object v5, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-virtual {v5, v1, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    .line 706
    return-void
.end method

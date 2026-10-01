.class Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;
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

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 600
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->val$number:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 604
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputpaixuSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    .line 606
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetpaixuSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 608
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    iget v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->val$number:I

    invoke-static {v1, p1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->getVideolvDatas(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    .line 609
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_xuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/view/SingleChoiceMenuView;->clearMenuItems()V

    .line 610
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    .line 611
    .local v1, "vodUlr":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_xuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v2

    iget-object v3, v1, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 612
    .end local v1    # "vodUlr":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

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

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fputxuanjiSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    .line 615
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;->this$0:Lcom/shenma/tvlauncher/vod/VodDetailsActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->-$$Nest$fgetmenu_xuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3$1;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/view/SingleChoiceMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 624
    return-void
.end method

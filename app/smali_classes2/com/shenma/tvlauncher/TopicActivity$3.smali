.class Lcom/shenma/tvlauncher/TopicActivity$3;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/TopicActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TopicActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$3;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$3;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$3;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/TopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$3;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/TopicActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getPic_slide()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/TopicActivity$3;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/TopicActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getBlurb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$msetTopicPoster(Lcom/shenma/tvlauncher/TopicActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$3;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgettv_topic_name(Lcom/shenma/tvlauncher/TopicActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/TopicActivity$3;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/TopicActivity;->-$$Nest$fgetvodDatas(Lcom/shenma/tvlauncher/TopicActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

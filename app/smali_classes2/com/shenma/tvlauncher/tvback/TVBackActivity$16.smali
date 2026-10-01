.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1378
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 1383
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 1384
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmApp(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v2

    .line 1385
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v2

    .line 1386
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1384
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/application/MyApplication;->setOnPlay(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    new-instance v1, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)V

    .line 1389
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->notifyDataSetChanged()V

    .line 1390
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetlv_tv_back_videos(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1391
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetlv_tv_back_videos(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1392
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1393
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1394
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 1395
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, "media_url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mloadMediaFromXml(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V

    .line 1397
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$16;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->load_msg:I

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1398
    const-string v1, "TVBackActivity"

    const-string/jumbo v2, "\u83dc\u5355\u70b9\u51fb....loadingShow_tv"

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

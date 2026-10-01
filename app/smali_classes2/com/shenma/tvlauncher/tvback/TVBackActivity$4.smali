.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V
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

    .line 357
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

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

    .line 361
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetisFull(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mshowController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 364
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mcancelDelayHide(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 367
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 370
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmApp(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/application/MyApplication;->getOnPlay()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmProgramlist()Ljava/util/ArrayList;

    move-result-object v2

    .line 373
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmProgramlist()Ljava/util/ArrayList;

    move-result-object v2

    .line 374
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->bringToFront()V

    .line 376
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$msetVideoScale(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 377
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mshowController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto/16 :goto_1

    .line 394
    :cond_2
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmProgramlist()Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfputmNowProgramlist(Ljava/util/ArrayList;)V

    .line 396
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v1

    .line 398
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v1

    .line 399
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "nowProgram":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmApp(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/application/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/application/MyApplication;->setOnPlay(Ljava/lang/String;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nowProgram=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TVBackActivity"

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    new-instance v3, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)V

    .line 404
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;->notifyDataSetChanged()V

    .line 405
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetlv_tv_back_videos(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetprogramAdapter(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetlv_tv_back_videos(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 407
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 408
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "media_url":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mloadMediaFromXml(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V

    .line 410
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$4;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->load_msg:I

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 411
    const-string v3, "lv_tv_back_videos....loadingShow_tv"

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v0    # "nowProgram":Ljava/lang/String;
    .end local v1    # "media_url":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

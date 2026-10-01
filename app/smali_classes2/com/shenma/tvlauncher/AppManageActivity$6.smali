.class Lcom/shenma/tvlauncher/AppManageActivity$6;
.super Ljava/lang/Object;
.source "AppManageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/AppManageActivity;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/AppManageActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AppManageActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 339
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$mcheckIsSysApp(Lcom/shenma/tvlauncher/AppManageActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/AppManageActivity;->context:Landroid/content/Context;

    const-string/jumbo v1, "\u7cfb\u7edf\u5e94\u7528,\u4e0d\u80fd\u5378\u8f7d!"

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 357
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 360
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 361
    .local v1, "uninstallIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/AppManageActivity;->startActivity(Landroid/content/Intent;)V

    .line 364
    .end local v0    # "packageURI":Landroid/net/Uri;
    .end local v1    # "uninstallIntent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/AppManageActivity;)V

    goto :goto_1

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetisVis(Lcom/shenma/tvlauncher/AppManageActivity;)I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_2

    .line 344
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetdbtools(Lcom/shenma/tvlauncher/AppManageActivity;)Lcom/shenma/tvlauncher/db/DatabaseOperator;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/db/DatabaseOperator;->deleteApp(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetdbtools(Lcom/shenma/tvlauncher/AppManageActivity;)Lcom/shenma/tvlauncher/db/DatabaseOperator;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetlastFocusPkgName(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/db/DatabaseOperator;->addApp(Ljava/lang/String;)V

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/AppManageActivity;)V

    .line 350
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$6;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$mqueryAllAppInstalled(Lcom/shenma/tvlauncher/AppManageActivity;)V

    .line 351
    nop

    .line 367
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

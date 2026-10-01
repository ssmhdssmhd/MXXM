.class Lcom/shenma/tvlauncher/HomeActivity$28;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1386
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 1388
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "userName"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputusername(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetusername(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1391
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1392
    return-void

    .line 1394
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1395
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1396
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1397
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$28;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->overridePendingTransition(II)V

    .line 1398
    return-void
.end method

.class Lcom/shenma/tvlauncher/HomeActivity2$8;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 373
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "userName"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputusername(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetusername(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 376
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 377
    return-void

    .line 379
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$8;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

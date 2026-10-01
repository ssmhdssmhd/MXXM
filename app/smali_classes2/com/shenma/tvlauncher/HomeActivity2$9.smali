.class Lcom/shenma/tvlauncher/HomeActivity2$9;
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

    .line 385
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$9;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$9;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetusername(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$9;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 391
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$9;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$9;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$9;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$9;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

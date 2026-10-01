.class Lcom/shenma/tvlauncher/UserActivity$20;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->setListener()V
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

    .line 783
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$20;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 786
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$20;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "uName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$20;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-class v3, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 789
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "from"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 790
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$20;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 791
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$20;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$string;->not_logged_on:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 793
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$20;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 796
    :goto_0
    return-void
.end method

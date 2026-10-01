.class public Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoStartReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/BaseActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 659
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/BaseActivity;->-$$Nest$fgetSearch(Lcom/shenma/tvlauncher/BaseActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 660
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "title":Ljava/lang/String;
    const-string v1, "android.content.movie.search.Action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 662
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/BaseActivity;->SearchIntent(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 667
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$AutoStartReceiver;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->search_Not_yet_activated:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p1, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 670
    :goto_0
    return-void
.end method

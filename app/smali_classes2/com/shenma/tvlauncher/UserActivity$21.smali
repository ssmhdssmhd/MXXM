.class Lcom/shenma/tvlauncher/UserActivity$21;
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

    .line 798
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$21;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 801
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$21;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-string v1, "login_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 802
    .local v0, "login_type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$21;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$21;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-class v4, Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 804
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$21;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$21;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/UserActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 809
    :goto_0
    return-void
.end method

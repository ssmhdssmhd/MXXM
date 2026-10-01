.class Lcom/shenma/tvlauncher/UserActivity$28;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showUserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$User_url:Ljava/lang/String;

.field final synthetic val$user_name_et:Landroid/widget/EditText;

.field final synthetic val$user_pass_et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 964
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$28;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$user_name_et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$user_pass_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 966
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$28;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-string v1, "login_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "&act=user_reg"

    const-string v3, "/api.php?app="

    if-ne v0, v1, :cond_0

    .line 968
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$28;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$user_name_et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$user_pass_et:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$28;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuser_inv_et(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$User_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v5, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mRegedit(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$28;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$user_name_et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$user_pass_et:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$28;->val$User_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mRegedit(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 973
    :goto_0
    return-void
.end method

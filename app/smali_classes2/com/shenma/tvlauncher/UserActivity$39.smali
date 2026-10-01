.class Lcom/shenma/tvlauncher/UserActivity$39;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showUserDialogpwd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$User_url:Ljava/lang/String;

.field final synthetic val$user_code_et:Landroid/widget/EditText;

.field final synthetic val$user_new_pass_et:Landroid/widget/EditText;

.field final synthetic val$user_phone_et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1318
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_phone_et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_code_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_new_pass_et:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1320
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_phone_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_code_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1322
    .local v1, "send_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->No_email_phone:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1324
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 1325
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Incorrect_length:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1326
    :cond_1
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1327
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Incorrect_format:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1328
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1329
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->verification_code_empty:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1332
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$39;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_phone_et:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_code_et:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$user_new_pass_et:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$39;->val$User_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/api.php?app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&act=seek_pass"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mseek_pass(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1334
    :goto_0
    return-void
.end method

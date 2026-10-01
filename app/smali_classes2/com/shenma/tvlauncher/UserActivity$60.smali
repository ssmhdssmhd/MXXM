.class Lcom/shenma/tvlauncher/UserActivity$60;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showUserDialogbinding(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$User_url:Ljava/lang/String;

.field final synthetic val$bind_code_et:Landroid/widget/EditText;

.field final synthetic val$bind_name_et:Landroid/widget/TextView;

.field final synthetic val$bind_phone_et:Landroid/widget/EditText;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1930
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_name_et:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_phone_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_code_et:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1932
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_name_et:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, "trim":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_phone_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1934
    .local v1, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_code_et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1935
    .local v2, "send_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1936
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->No_account_entered:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1937
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1938
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v6, Lcom/shenma/tvlauncher/R$string;->no_input:I

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1939
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_2

    .line 1940
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v6, Lcom/shenma/tvlauncher/R$string;->Length_Error:I

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1941
    :cond_2
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1942
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v6, Lcom/shenma/tvlauncher/R$string;->format_error:I

    invoke-virtual {v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1943
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1944
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Verification_code_error:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1946
    :cond_4
    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$60;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_phone_et:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$bind_code_et:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$60;->val$User_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/api.php?app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&act=email_bind"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$memail_bind(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1948
    :goto_0
    return-void
.end method

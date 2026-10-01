.class Lcom/shenma/tvlauncher/UserActivity$62;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$bind_name_et:Landroid/widget/TextView;

.field final synthetic val$bind_phone_et:Landroid/widget/EditText;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/TextView;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1957
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$bind_name_et:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$bind_phone_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$User_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .line 1959
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$bind_name_et:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1960
    .local v0, "trim":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$bind_phone_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1961
    .local v1, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->No_account_entered:I

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1963
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1964
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->no_input:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1965
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    .line 1966
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Length_Error:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1967
    :cond_2
    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1968
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v5, Lcom/shenma/tvlauncher/R$string;->format_error:I

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1970
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$62;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$bind_phone_et:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$62;->val$User_url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/api.php?app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&act=afcrc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bind"

    invoke-static {v2, v3, v4, v5}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$msend_code(Lcom/shenma/tvlauncher/UserActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    :goto_0
    return-void
.end method

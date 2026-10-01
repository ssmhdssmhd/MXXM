.class Lcom/shenma/tvlauncher/UserActivity$31;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/UserActivity;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;

.field final synthetic val$Exit:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1004
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$31;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/UserActivity$31;->val$Exit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1009
    iget v0, p0, Lcom/shenma/tvlauncher/UserActivity$31;->val$Exit:I

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$31;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "passWord"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ckinfo"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1011
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1012
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$31;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetllQrCode(Lcom/shenma/tvlauncher/UserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$31;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetaccountInfo(Lcom/shenma/tvlauncher/UserActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$31;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetbtLogin(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$31;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mseek_empower(Lcom/shenma/tvlauncher/UserActivity;)V

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$31;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/UserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1018
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1022
    :goto_0
    return-void
.end method

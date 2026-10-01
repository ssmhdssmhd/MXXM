.class Lcom/shenma/tvlauncher/HomeActivity2$48;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->showUserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;

.field final synthetic val$user_pwd_et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
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

    .line 1880
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->val$user_pwd_et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1882
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->val$user_pwd_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1887
    .local v0, "pwd":Ljava/lang/String;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetcategorypwd(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1888
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-string v3, "200"

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputPWD(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V

    .line 1889
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetEn(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LIVE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1890
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1891
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1892
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1893
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1894
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1895
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1896
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1897
    .local v2, "time":J
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "vip"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1898
    .local v7, "vip":J
    cmp-long v4, v2, v7

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity2;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "999999999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1899
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1900
    .local v4, "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v6, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1901
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-virtual {v5, v4}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1902
    .end local v4    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1903
    :cond_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-string v5, "live"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 1904
    .local v4, "live":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1905
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1906
    .local v5, "mIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v9, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1907
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-virtual {v6, v5}, Lcom/shenma/tvlauncher/HomeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 1908
    .end local v5    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1909
    :cond_2
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v6, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v9, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v5, v6, v9}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1913
    .end local v2    # "time":J
    .end local v4    # "live":I
    .end local v7    # "vip":J
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetmDialog(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1914
    return-void

    .line 1916
    .end local v1    # "username":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1917
    .local v1, "pBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetEn(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetName(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPENAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    const-class v3, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/shenma/tvlauncher/HomeActivity2;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1920
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetmDialog(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1921
    .end local v1    # "pBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 1922
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fputPWD(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;)V

    .line 1923
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$48;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v2, Lcom/shenma/tvlauncher/R$string;->network_setting_wireless_network_pager_list_item_link_state_wrong:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1925
    :goto_1
    return-void
.end method

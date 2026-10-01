.class Lcom/shenma/tvlauncher/HomeActivity$57;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->showUserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;

.field final synthetic val$user_pwd_et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
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

    .line 2438
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->val$user_pwd_et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 2440
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->val$user_pwd_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2445
    .local v0, "pwd":Ljava/lang/String;
    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetcategorypwd(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2446
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-string v3, "200"

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputPWD(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    .line 2447
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetEn(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LIVE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2448
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2449
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2450
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2451
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2452
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2453
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 2454
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 2455
    .local v2, "time":J
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "vip"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2456
    .local v7, "vip":J
    cmp-long v4, v2, v7

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "999999999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2457
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2458
    .local v4, "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v5, v5, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2459
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v5, v4}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2460
    .end local v4    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 2461
    :cond_1
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetlive(Lcom/shenma/tvlauncher/HomeActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2462
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2463
    .restart local v4    # "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v5, v5, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v6, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2464
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v5, v4}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2465
    .end local v4    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 2466
    :cond_2
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v4, v5, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2470
    .end local v2    # "time":J
    .end local v7    # "vip":J
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetmDialog(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2471
    return-void

    .line 2473
    .end local v1    # "username":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2474
    .local v1, "pBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetEn(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetName(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPENAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v3, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v2, v3, v1}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 2477
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetmDialog(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2478
    .end local v1    # "pBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 2479
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputPWD(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    .line 2480
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$57;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->network_setting_wireless_network_pager_list_item_link_state_wrong:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 2484
    :goto_1
    return-void
.end method

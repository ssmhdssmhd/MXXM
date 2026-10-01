.class Lcom/shenma/tvlauncher/UserActivity$7;
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

    .line 540
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 544
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputfromApp(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)V

    .line 545
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/UserActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 548
    .local v3, "viewId":I
    sget v5, Lcom/shenma/tvlauncher/R$id;->rb_user:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v3, v5, :cond_2

    .line 550
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputISAPP(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)V

    .line 551
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputAlbumls(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)V

    .line 552
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 557
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 560
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$string;->not_logged_on:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 563
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_1

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v7, Lcom/shenma/tvlauncher/R$string;->user:I

    invoke-virtual {v5, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v7, Lcom/shenma/tvlauncher/R$string;->Logged_in:I

    invoke-virtual {v5, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowLogoutDialog(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_1

    .line 570
    :cond_2
    sget v4, Lcom/shenma/tvlauncher/R$id;->rb_user_alert:I

    if-ne v3, v4, :cond_4

    .line 572
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 574
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_1

    .line 576
    :cond_3
    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v4, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputISAPP(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)V

    .line 577
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputUSER_TYPE(Lcom/shenma/tvlauncher/UserActivity;I)V

    .line 578
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$string;->no_follow_up_drama:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 579
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputAlbumls(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)V

    goto/16 :goto_1

    .line 582
    :cond_4
    sget v4, Lcom/shenma/tvlauncher/R$id;->rb_user_collect:I

    if-ne v3, v4, :cond_6

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 585
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 586
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_1

    .line 588
    :cond_5
    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v4, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputISAPP(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)V

    .line 589
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2, v7}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputUSER_TYPE(Lcom/shenma/tvlauncher/UserActivity;I)V

    .line 590
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$string;->No_favorites:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputAlbumls(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)V

    goto/16 :goto_1

    .line 594
    :cond_6
    sget v4, Lcom/shenma/tvlauncher/R$id;->rb_user_history:I

    if-ne v3, v4, :cond_8

    .line 596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 597
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 598
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/UserActivity;)V

    goto/16 :goto_1

    .line 600
    :cond_7
    iget-object v4, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v4, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputISAPP(Lcom/shenma/tvlauncher/UserActivity;Ljava/lang/Boolean;)V

    .line 601
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputUSER_TYPE(Lcom/shenma/tvlauncher/UserActivity;I)V

    .line 602
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v5, Lcom/shenma/tvlauncher/R$string;->No_record:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 603
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAllAppsByType(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputAlbumls(Lcom/shenma/tvlauncher/UserActivity;Ljava/util/List;)V

    goto :goto_1

    .line 606
    :cond_8
    sget v2, Lcom/shenma/tvlauncher/R$id;->rb_user_app:I

    const v4, 0x10a0001

    const/high16 v5, 0x10a0000

    if-ne v3, v2, :cond_a

    .line 608
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 609
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 610
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/UserActivity;)V

    goto :goto_1

    .line 612
    :cond_9
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-class v9, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 613
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v5, v4}, Lcom/shenma/tvlauncher/UserActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 615
    :cond_a
    sget v2, Lcom/shenma/tvlauncher/R$id;->rb_user_playb_setting:I

    if-ne v3, v2, :cond_b

    .line 616
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-class v8, Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v2}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 618
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v5, v4}, Lcom/shenma/tvlauncher/UserActivity;->overridePendingTransition(II)V

    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 619
    :cond_b
    sget v2, Lcom/shenma/tvlauncher/R$id;->rb_user_background_setting:I

    if-ne v3, v2, :cond_c

    .line 620
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-class v8, Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v2}, Lcom/shenma/tvlauncher/UserActivity;->startActivity(Landroid/content/Intent;)V

    .line 622
    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v7, v5, v4}, Lcom/shenma/tvlauncher/UserActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 619
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c
    :goto_0
    nop

    .line 624
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetISAPP(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 625
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 627
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v7, Lcom/shenma/tvlauncher/R$string;->common:I

    invoke-virtual {v5, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v7}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v7, Lcom/shenma/tvlauncher/R$string;->Film:I

    invoke-virtual {v5, v7}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v4, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    iget-object v5, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v6, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetAlbumls(Lcom/shenma/tvlauncher/UserActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/UserActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetISAPP(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nostra13/universalimageloader/core/ImageLoader;Ljava/lang/Boolean;)V

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;)V

    .line 631
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetgv_user_type_details_grid(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_d

    .line 632
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetgv_user_type_details_grid(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 634
    :cond_d
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetgv_user_type_details_grid(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 636
    :cond_e
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_no_data(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$string;->films_in_total:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 638
    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettv_filter_content(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 640
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->clearDatas()V

    .line 641
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$7;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetuserTypeAdapter(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/adapter/UserTypeAdapter;->notifyDataSetChanged()V

    .line 645
    :cond_f
    :goto_2
    return-void
.end method

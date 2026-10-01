.class Lcom/shenma/tvlauncher/SettingPlayActivity$19;
.super Ljava/lang/Object;
.source "SettingPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingPlayActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingPlayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingPlayActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 625
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_core_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    .local v0, "tv_play_core":Ljava/lang/String;
    const/4 v1, 0x0

    .line 627
    .local v1, "index":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_6

    .line 628
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 645
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 646
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 647
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    move v1, v2

    .line 645
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_core_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 654
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_core_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_core_right_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_right_arrows_f:I

    .line 657
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 630
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 631
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 632
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 633
    move v1, v2

    .line 630
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 636
    .end local v2    # "i":I
    :cond_4
    if-nez v1, :cond_5

    .line 637
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_core_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v4

    aget-object v4, v5, v6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 639
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_core_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_core(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :goto_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_core_left_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_left_arrows_f:I

    .line 642
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 643
    nop

    .line 658
    :goto_4
    goto :goto_5

    .line 660
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 661
    packed-switch p2, :pswitch_data_1

    goto :goto_5

    .line 667
    :pswitch_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_core_right_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_right_arrows_n:I

    .line 668
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 663
    :pswitch_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$19;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_core_left_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_left_arrows_n:I

    .line 664
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 665
    nop

    .line 672
    :cond_7
    :goto_5
    return v3

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/shenma/tvlauncher/SettingPlayActivity$22;
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

    .line 790
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 795
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_theme_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 796
    .local v0, "tv_play_theme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 797
    .local v1, "index":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_6

    .line 798
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 816
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 817
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 818
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 819
    move v1, v2

    .line 816
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_2

    .line 823
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_theme_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 825
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_theme_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_theme_right_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_right_arrows_f:I

    .line 828
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 829
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/SettingPlayActivity;->context:Landroid/content/Context;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Theme_successful:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_4

    .line 800
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 801
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 802
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 803
    move v1, v2

    .line 800
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 806
    .end local v2    # "i":I
    :cond_4
    if-nez v1, :cond_5

    .line 807
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_theme_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v4

    aget-object v4, v5, v6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 809
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgettv_play_setting_content_theme_text(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetmAll_play_setting_theme(Lcom/shenma/tvlauncher/SettingPlayActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :goto_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_theme_left_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_left_arrows_f:I

    .line 812
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 813
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/SettingPlayActivity;->context:Landroid/content/Context;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Theme_successful:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 814
    nop

    .line 830
    :goto_4
    goto :goto_5

    .line 832
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 833
    packed-switch p2, :pswitch_data_1

    goto :goto_5

    .line 839
    :pswitch_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_theme_right_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_right_arrows_n:I

    .line 840
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 835
    :pswitch_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingPlayActivity$22;->this$0:Lcom/shenma/tvlauncher/SettingPlayActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingPlayActivity;->-$$Nest$fgetbt_theme_left_arrows(Lcom/shenma/tvlauncher/SettingPlayActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_left_arrows_n:I

    .line 836
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 837
    nop

    .line 844
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

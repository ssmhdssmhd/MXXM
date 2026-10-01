.class Lcom/shenma/tvlauncher/OtherActivity$7;
.super Ljava/lang/Object;
.source "OtherActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/OtherActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/OtherActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/OtherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/OtherActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 236
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "open_ring":Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, "index":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_6

    .line 239
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 255
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 256
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    move v1, v2

    .line 255
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_right_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_right_arrows_f:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 241
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 242
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    move v1, v2

    .line 241
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 246
    .end local v2    # "i":I
    :cond_4
    if-nez v1, :cond_5

    .line 247
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v4

    aget-object v4, v5, v6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 249
    :cond_5
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_left_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_left_arrows_f:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 252
    nop

    .line 266
    :goto_4
    goto :goto_5

    .line 268
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 269
    packed-switch p2, :pswitch_data_1

    goto :goto_5

    .line 274
    :pswitch_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_right_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_right_arrows_n:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 271
    :pswitch_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity$7;->this$0:Lcom/shenma/tvlauncher/OtherActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/OtherActivity;->-$$Nest$fgetother_setting_content_decode_left_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->select_left_arrows_n:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 272
    nop

    .line 278
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

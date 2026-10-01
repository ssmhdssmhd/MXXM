.class Lcom/shenma/tvlauncher/EmpowerActivity$1;
.super Landroid/os/Handler;
.source "EmpowerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/EmpowerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/EmpowerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$mGetInfo(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    .line 115
    return-void

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Payment_successful_recharge_failed:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 112
    return-void

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetstoppay(Lcom/shenma/tvlauncher/EmpowerActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->Querypay()V

    .line 109
    :cond_0
    return-void

    .line 103
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/EmpowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetMsg(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    return-void

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$mGoodsList(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    .line 101
    return-void

    .line 97
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetempower_type(Lcom/shenma/tvlauncher/EmpowerActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$mloadImg(Lcom/shenma/tvlauncher/EmpowerActivity;I)V

    .line 98
    return-void

    .line 88
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 89
    .local v0, "time":J
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "vip"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 90
    .local v2, "vip":J
    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 91
    iget-object v4, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetvipTime(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v5, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetvipTime(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetviptime(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    return-void

    .line 83
    .end local v0    # "time":J
    .end local v2    # "vip":J
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetvipTime(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetpayviewlayout(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$1;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetkmviewlayout(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

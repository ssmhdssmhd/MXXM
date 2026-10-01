.class Lcom/shenma/tvlauncher/SettingActActvity$1;
.super Landroid/os/Handler;
.source "SettingActActvity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SettingActActvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingActActvity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingActActvity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$mloadImg(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 122
    return-void

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/SettingActActvity;->startActivity(Landroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/SettingActActvity;->overridePendingTransition(II)V

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$fgetMsg(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->finish()V

    .line 119
    return-void

    .line 112
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$fgetMsg(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 113
    return-void

    .line 108
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Redemption_successful:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 109
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$mGetInfo(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 110
    return-void

    .line 105
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$mFenList(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 106
    return-void

    .line 101
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Check_in_successful:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$fgetMsg(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$mGetInfo(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 103
    return-void

    .line 98
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$1;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 99
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

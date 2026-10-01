.class Lcom/shenma/tvlauncher/view/MyServices$1;
.super Landroid/os/Handler;
.source "MyServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/MyServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/view/MyServices;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/MyServices;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 54
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    sget v7, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/view/MyServices;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error 108"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v5, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v5, "Name_check"

    invoke-static {v0, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    return-void

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    sget v7, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v6, v7}, Lcom/shenma/tvlauncher/view/MyServices;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error 107"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v5, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 43
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v5, "Verifysign_check"

    invoke-static {v0, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    return-void

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Turn_soff_sVPN:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v5, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v5, "Vpn_check"

    invoke-static {v0, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Turn_soff_sXP:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v5, v6}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 36
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    const-string v5, "Xp_check"

    invoke-static {v0, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$1;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    return-void

    .line 26
    :pswitch_4
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->exit()V

    .line 27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

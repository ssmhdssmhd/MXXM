.class Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;
.super Landroid/os/Handler;
.source "HistoryAndCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HistoryAndCollectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HistoryAndCollectActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->overridePendingTransition(II)V

    .line 129
    return-void

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_error:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 123
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_has_expired:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 119
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failures:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 116
    return-void

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_has_been_disabled:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 112
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void

    .line 107
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->disconnect:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 108
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void

    .line 103
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_expiration:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 104
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void

    .line 100
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity$1;->this$0:Lcom/shenma/tvlauncher/HistoryAndCollectActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HistoryAndCollectActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 101
    return-void

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

.class Lcom/shenma/tvlauncher/TopicActivity$1;
.super Landroid/os/Handler;
.source "TopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/TopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/TopicActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/TopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/TopicActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 117
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_error:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 113
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_has_expired:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 109
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failures:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 106
    return-void

    .line 101
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_has_been_disabled:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 102
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void

    .line 97
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->disconnect:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 98
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void

    .line 93
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_expiration:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void

    .line 90
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/TopicActivity$1;->this$0:Lcom/shenma/tvlauncher/TopicActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/TopicActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 91
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

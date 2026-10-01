.class Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;
.super Landroid/os/Handler;
.source "Home2RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 192
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_error:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 188
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_has_expired:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 184
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failures:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 181
    return-void

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_has_been_disabled:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 177
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void

    .line 172
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->disconnect:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 173
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void

    .line 168
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_expiration:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 169
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void

    .line 165
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment$3;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 166
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

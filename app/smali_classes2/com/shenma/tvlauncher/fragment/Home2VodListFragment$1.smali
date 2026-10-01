.class Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;
.super Landroid/os/Handler;
.source "Home2VodListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_log_in_to_your_account_first:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 167
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_error:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 163
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_information_has_expired:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 159
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failures:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 156
    return-void

    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_has_been_disabled:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 152
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void

    .line 147
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->disconnect:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 148
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void

    .line 143
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->Account_expiration:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 144
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void

    .line 140
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment$1;->this$0:Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2VodListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 141
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

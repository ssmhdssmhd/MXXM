.class Lcom/shenma/tvlauncher/HomeActivity$2;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetplayer_download_url(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgethomeHandler(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->startDownloadzip(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 191
    return-void

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$mnotice(Lcom/shenma/tvlauncher/HomeActivity;)V

    .line 188
    return-void

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$mlogoloadImg(Lcom/shenma/tvlauncher/HomeActivity;)V

    .line 185
    return-void

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetapp_nshow(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetapp_nurl(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$mUpdateDialog(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    .line 178
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Data_cleared:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 179
    return-void

    .line 175
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetusername(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Welcome_back:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 176
    return-void

    .line 171
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 172
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

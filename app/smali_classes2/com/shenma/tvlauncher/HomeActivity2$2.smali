.class Lcom/shenma/tvlauncher/HomeActivity2$2;
.super Landroid/os/Handler;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetplayer_download_url(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgethomeHandler(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->startDownloadzip(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 207
    return-void

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$mnotice(Lcom/shenma/tvlauncher/HomeActivity2;)V

    .line 204
    return-void

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$mlogoloadImg(Lcom/shenma/tvlauncher/HomeActivity2;)V

    .line 201
    return-void

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetapp_nshow(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetapp_nurl(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$mUpdateDialog(Lcom/shenma/tvlauncher/HomeActivity2;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 194
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Data_cleared:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 195
    return-void

    .line 191
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetusername(Lcom/shenma/tvlauncher/HomeActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v3, Lcom/shenma/tvlauncher/R$string;->Welcome_back:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 192
    return-void

    .line 187
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$2;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 188
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

.class Lcom/shenma/tvlauncher/UserActivity$1;
.super Landroid/os/Handler;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/UserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/UserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5f53\u524d\u6a21\u5f0f\u7981\u6b62\u9000\u51fa\u8d26\u6237"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 161
    return-void

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetMsg(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 158
    return-void

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetMsg(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    new-instance v1, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    const-wide/32 v3, 0x2bf20

    const-wide/16 v5, 0x3e8

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;-><init>(Lcom/shenma/tvlauncher/UserActivity;JJ)V

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fputmyCountDownTimer(Lcom/shenma/tvlauncher/UserActivity;Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;)V

    .line 154
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetmyCountDownTimer(Lcom/shenma/tvlauncher/UserActivity;)Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 155
    return-void

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetempower_url(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v1

    const/high16 v7, -0x1000000

    const/4 v8, -0x1

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    const-string v4, "UTF-8"

    const-string v5, "H"

    const-string v6, "1"

    invoke-static/range {v1 .. v8}, Lcom/shenma/tvlauncher/utils/Utils;->createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "empower":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetimgQrCode(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    return-void

    .line 144
    .end local v0    # "empower":Landroid/graphics/Bitmap;
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mlogin_notify(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 145
    return-void

    .line 141
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    iget-object v2, p0, Lcom/shenma/tvlauncher/UserActivity$1;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgettype(Lcom/shenma/tvlauncher/UserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mshowUpdateDialog(Lcom/shenma/tvlauncher/UserActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

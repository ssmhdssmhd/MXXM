.class Lcom/shenma/tvlauncher/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/BaseActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/BaseActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    .line 121
    return-void

    .line 118
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 119
    return-void

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Turn_soff_sXP:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 115
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/BaseActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/BaseActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    return-void

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Turn_soff_sVPN:I

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v4, v5}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/BaseActivity$1;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/BaseActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/BaseActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

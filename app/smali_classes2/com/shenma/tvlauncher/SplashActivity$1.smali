.class Lcom/shenma/tvlauncher/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SplashActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SplashActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    const-wide/16 v4, 0x3a98

    const/16 v6, 0x12

    sparse-switch v0, :sswitch_data_0

    .line 128
    return-void

    .line 111
    :sswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SplashActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$minitData(Lcom/shenma/tvlauncher/SplashActivity;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgethandler(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 108
    :sswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$mCategory(Lcom/shenma/tvlauncher/SplashActivity;)V

    .line 109
    goto/16 :goto_1

    .line 117
    :goto_0
    :sswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Category_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 119
    goto/16 :goto_1

    .line 121
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 122
    return-void

    .line 124
    :sswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    sget v3, Lcom/shenma/tvlauncher/R$string;->fail:I

    invoke-virtual {v2, v3}, Lcom/shenma/tvlauncher/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetMsg(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgethandler(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    return-void

    .line 99
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_jump_time(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fputtv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;I)V

    .line 102
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgethandler(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$mCategory(Lcom/shenma/tvlauncher/SplashActivity;)V

    .line 106
    goto/16 :goto_1

    .line 90
    :sswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_jump_time(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    iget-object v3, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgettv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fputtv_ad_time(Lcom/shenma/tvlauncher/SplashActivity;I)V

    .line 93
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgethandler(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$mCategory(Lcom/shenma/tvlauncher/SplashActivity;)V

    .line 97
    goto :goto_1

    .line 83
    :sswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetimgurl(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetimgurl(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetimgurl(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetsplash(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgethandler(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    goto :goto_1

    .line 78
    :sswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    sget v1, Lcom/shenma/tvlauncher/R$string;->request_failure:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 79
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$1;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgethandler(Lcom/shenma/tvlauncher/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    nop

    .line 130
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

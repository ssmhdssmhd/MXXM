.class Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;
.super Ljava/lang/Object;
.source "MyServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/MyServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceThread"
.end annotation


# instance fields
.field volatile flag:Z

.field final synthetic this$0:Lcom/shenma/tvlauncher/view/MyServices;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/view/MyServices;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/view/MyServices;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->flag:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    nop

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->flag:Z

    if-eqz v0, :cond_6

    .line 108
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetVpn_check(Lcom/shenma/tvlauncher/view/MyServices;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 114
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->isVpnConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->isWifiProxy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetXp_check(Lcom/shenma/tvlauncher/view/MyServices;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 121
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->checkXpFormMap()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->isHookByStack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetVerifysign_check(Lcom/shenma/tvlauncher/view/MyServices;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 128
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetVerifysign(Lcom/shenma/tvlauncher/view/MyServices;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->getMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetName_check(Lcom/shenma/tvlauncher/view/MyServices;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetName(Lcom/shenma/tvlauncher/view/MyServices;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    sget v2, Lcom/shenma/tvlauncher/R$string;->app_name:I

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/view/MyServices;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Md5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyServices$ServiceThread;->this$0:Lcom/shenma/tvlauncher/view/MyServices;

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/MyServices;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/view/MyServices;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 140
    :cond_6
    return-void
.end method

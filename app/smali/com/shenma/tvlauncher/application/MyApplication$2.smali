.class Lcom/shenma/tvlauncher/application/MyApplication$2;
.super Landroid/content/BroadcastReceiver;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/application/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/application/MyApplication;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/application/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/application/MyApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/shenma/tvlauncher/application/MyApplication$2;->this$0:Lcom/shenma/tvlauncher/application/MyApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/shenma/tvlauncher/application/MyApplication$2;->this$0:Lcom/shenma/tvlauncher/application/MyApplication;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/application/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 145
    .local v1, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 146
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/application/MyApplication$2;->this$0:Lcom/shenma/tvlauncher/application/MyApplication;

    sget v4, Lcom/shenma/tvlauncher/R$string;->tvback_str_data_loading_error:I

    .line 148
    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/application/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    .line 147
    invoke-static {p1, v3, v4}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 164
    .end local v1    # "connectMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    return-void
.end method

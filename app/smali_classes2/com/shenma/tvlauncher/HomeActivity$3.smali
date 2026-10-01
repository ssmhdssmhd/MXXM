.class Lcom/shenma/tvlauncher/HomeActivity$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 234
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$3;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$3;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 240
    .local v1, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 241
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$3;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetiv_net_state(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->wifi_n:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    :cond_1
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 246
    .local v3, "ethNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$3;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetiv_net_state(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->enh:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 251
    .local v4, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$3;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetiv_net_state(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v5

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->wifi:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 256
    .local v5, "mobilNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity$3;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetiv_net_state(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v6

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->mobile:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    .end local v1    # "connectMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "ethNetworkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "mobilNetworkInfo":Landroid/net/NetworkInfo;
    :cond_4
    return-void
.end method

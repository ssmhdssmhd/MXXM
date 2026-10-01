.class public Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/wifi/WifiInfo;

.field private a:Landroid/net/wifi/WifiManager;

.field private a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    .line 25
    const-class v0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/net/InetAddress;)Z
    .locals 3

    .line 29
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 30
    return v1

    .line 31
    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 32
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p1

    if-nez p1, :cond_2

    .line 34
    return v1

    .line 35
    :cond_2
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 41
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiManager;

    .line 43
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiInfo;

    .line 44
    if-nez p2, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;->getProviderInstance(Landroid/content/Context;)Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 50
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;->disableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;)V

    .line 51
    const-string v0, ""

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->b(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Ljava/lang/String;

    const-string/jumbo v1, "wifi is disabled and stop dlna service "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 55
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiInfo;

    .line 58
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_4

    return-void

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 61
    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 62
    if-eqz v0, :cond_8

    .line 63
    and-int/lit16 v3, v0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    const/4 v3, 0x3

    aput-object v0, v6, v3

    const-string v0, "%d.%d.%d.%d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->b()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 70
    :cond_6
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 71
    invoke-direct {p0, v3}, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a(Ljava/net/InetAddress;)Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    .line 72
    :cond_7
    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with ip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/Q;->b(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;->disableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;)V

    .line 77
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkChangeReceiver;->a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;->enableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 83
    :cond_8
    :goto_0
    return-void
.end method

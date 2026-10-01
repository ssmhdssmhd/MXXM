.class Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/NetworkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    const-class p1, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->setName(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 65
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 67
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    iget-object v2, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v2}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 70
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;->disableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;)V

    .line 72
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->b(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi is disabled and stop dlna service "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 78
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 81
    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v3}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 82
    if-eqz v1, :cond_5

    .line 83
    const-string v4, "%d.%d.%d.%d"

    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    const/4 v5, 0x2

    aput-object v7, v8, v5

    const/4 v5, 0x3

    aput-object v1, v8, v5

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->b()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 90
    :cond_3
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v5, v4}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;Ljava/net/InetAddress;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    .line 92
    :cond_4
    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)V

    .line 93
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->b(Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with ip "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;->disableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;)V

    .line 96
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;->a:Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-static {v1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;->enableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 105
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 107
    :cond_6
    return-void
.end method

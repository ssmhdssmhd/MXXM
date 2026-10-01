.class public Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 6

    .line 31
    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;->a:Landroid/content/Context;

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    .line 32
    sput-object p0, Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;->a:Landroid/content/Context;

    .line 33
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 34
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 39
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    and-int/lit16 v1, v0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string v0, "%d.%d.%d.%d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/Q;->b(Ljava/lang/String;)V

    .line 47
    :cond_3
    return-void
.end method

.method public static getProviderInstance(Landroid/content/Context;)Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    invoke-static {p0}, Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;->a(Landroid/content/Context;)V

    .line 27
    invoke-static {p0}, Lcom/baidu/cyberplayer/dlna/c;->a(Landroid/content/Context;)Lcom/baidu/cyberplayer/dlna/c;

    move-result-object v0

    return-object v0
.end method

.method public static getServerInstance(Landroid/content/Context;)Lcom/baidu/cyberplayer/dlna/d;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-static {p0}, Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;->a(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/baidu/cyberplayer/dlna/a;->a()Lcom/baidu/cyberplayer/dlna/a;

    move-result-object v0

    return-object v0
.end method

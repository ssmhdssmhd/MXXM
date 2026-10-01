.class public Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;
.super Ljava/lang/Object;
.source "WifiNetworkBean.java"


# instance fields
.field private MACAddr:Ljava/lang/String;

.field private bssid:Ljava/lang/String;

.field private dns:Ljava/lang/String;

.field private dns2:Ljava/lang/String;

.field private gateway:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private linkspeed:I

.field private mRssi:I

.field private mask:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getDns()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public getDns2()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkspeed()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->linkspeed:I

    return v0
.end method

.method public getMACAddr()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->MACAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getmRssi()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->mRssi:I

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->bssid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDns(Ljava/lang/String;)V
    .locals 0
    .param p1, "dns"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->dns:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDns2(Ljava/lang/String;)V
    .locals 0
    .param p1, "dns2"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->dns2:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "gateway"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->gateway:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->ip:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLinkspeed(I)V
    .locals 0
    .param p1, "linkspeed"    # I

    .line 44
    iput p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->linkspeed:I

    .line 45
    return-void
.end method

.method public setMACAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mACAddr"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->MACAddr:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0
    .param p1, "mask"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->mask:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->ssid:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setmRssi(I)V
    .locals 0
    .param p1, "mRssi"    # I

    .line 20
    iput p1, p0, Lcom/shenma/tvlauncher/wifi/WifiNetworkBean;->mRssi:I

    .line 21
    return-void
.end method

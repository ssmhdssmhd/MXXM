.class public Lcom/baidu/cyberplayer/dlna/NetworkDetector;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private a:Landroid/net/wifi/WifiInfo;

.field private a:Landroid/net/wifi/WifiManager;

.field private a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

.field private final a:Ljava/lang/String;

.field private a:Ljava/lang/Thread;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/16 v0, 0x2710

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:I

    .line 26
    const-class v0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/NetworkDetector;Ljava/net/InetAddress;)Z
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/net/InetAddress;)Z
    .locals 3

    .line 51
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 52
    return v1

    .line 53
    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 54
    return v1

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p1

    if-nez p1, :cond_2

    .line 56
    return v1

    .line 57
    :cond_2
    return v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    invoke-static {p0}, Lcom/baidu/cyberplayer/dlna/DLNAProviderFactory;->getProviderInstance(Landroid/content/Context;)Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Z

    .line 39
    new-instance v0, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/dlna/NetworkDetector$a;-><init>(Lcom/baidu/cyberplayer/dlna/NetworkDetector;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Ljava/lang/Thread;

    .line 40
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/NetworkDetector;->a:Z

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 47
    return-void
.end method

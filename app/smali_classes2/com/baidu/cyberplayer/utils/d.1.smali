.class public Lcom/baidu/cyberplayer/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/baidu/cyberplayer/utils/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/d;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 84
    const-string v0, "connectionless"

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/d;->e:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 86
    nop

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 88
    if-nez v1, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iput-object v3, p0, Lcom/baidu/cyberplayer/utils/d;->e:Ljava/lang/String;

    .line 98
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/baidu/cyberplayer/utils/d;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    .line 102
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->e:Ljava/lang/String;

    .line 105
    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .locals 6

    .line 28
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10.0.0.200"

    const-string v1, "10.0.0.172"

    const/4 v2, 0x0

    const-string v3, "80"

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 31
    if-eqz p1, :cond_4

    .line 33
    const-string p2, "cmwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "uniwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "3gwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    const-string p2, "ctwap"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 43
    iput-boolean v4, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 44
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->b:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/d;->c:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/baidu/cyberplayer/utils/d;->d:Ljava/lang/String;

    .line 47
    return-void

    .line 49
    :cond_1
    const-string p2, "cmnet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p2, "uninet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "ctnet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "3gnet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 51
    :cond_2
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 52
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->b:Ljava/lang/String;

    .line 53
    return-void

    .line 35
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 36
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->b:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/d;->c:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/baidu/cyberplayer/utils/d;->d:Ljava/lang/String;

    .line 39
    return-void

    .line 57
    :cond_4
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result p2

    .line 59
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 61
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->c:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 64
    iput-boolean v4, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 65
    iput-object v3, p0, Lcom/baidu/cyberplayer/utils/d;->d:Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_5
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 69
    iput-boolean v4, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 70
    iput-object v3, p0, Lcom/baidu/cyberplayer/utils/d;->d:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_6
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/d;->d:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_7
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    .line 80
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 111
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 112
    return v0

    .line 114
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    return v1

    .line 119
    :cond_1
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    return v1

    .line 124
    :cond_2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 125
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 126
    return v1

    .line 129
    :cond_3
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/d;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/d;->e:Ljava/lang/String;

    return-object v0
.end method

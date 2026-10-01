.class public Lcom/baidu/cyberplayer/utils/aS;
.super Lcom/baidu/cyberplayer/utils/aQ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const-string/jumbo v0, "upnp:rootdevice"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aS;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/aS;-><init>(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aQ;-><init>()V

    .line 31
    const-string v0, "M-SEARCH"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aS;->g(Ljava/lang/String;)V

    .line 32
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aS;->h(Ljava/lang/String;)V

    .line 34
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aS;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string p1, "MX"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/aS;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string p1, "MAN"

    const-string p2, "\"ssdp:discover\""

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/aS;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public n(Ljava/lang/String;)V
    .locals 1

    .line 55
    nop

    .line 56
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 57
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aL;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "239.255.255.250"

    .line 58
    :goto_0
    const/16 v0, 0x76c

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/aS;->b(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

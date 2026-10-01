.class public Lcom/baidu/cyberplayer/utils/bT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/by;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/utils/bl;Lcom/baidu/cyberplayer/utils/bl;)I
    .locals 1

    .line 34
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bl;->e()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/bl;->e()Ljava/lang/String;

    move-result-object p2

    .line 38
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 39
    :cond_2
    :goto_0
    return v0

    .line 35
    :cond_3
    :goto_1
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    const-string/jumbo v0, "upnp:class"

    return-object v0
.end method

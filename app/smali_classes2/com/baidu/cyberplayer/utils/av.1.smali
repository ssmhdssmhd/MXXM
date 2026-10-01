.class public Lcom/baidu/cyberplayer/utils/av;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Z
    .locals 2

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x0

    return p0

    .line 26
    :cond_0
    const-string/jumbo v0, "ssdp:discover"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 27
    return v1

    .line 28
    :cond_1
    const-string v0, "\"ssdp:discover\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.class public Lcom/baidu/cyberplayer/utils/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Z
    .locals 1

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 p0, 0x0

    return p0

    .line 28
    :cond_0
    const-string/jumbo v0, "ssdp:alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 p0, 0x0

    return p0

    .line 35
    :cond_0
    const-string/jumbo v0, "ssdp:byebye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

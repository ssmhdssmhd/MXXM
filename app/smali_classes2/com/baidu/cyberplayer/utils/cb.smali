.class public final Lcom/baidu/cyberplayer/utils/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Z
    .locals 1

    .line 73
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/ce;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 p0, 0x0

    return p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 76
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

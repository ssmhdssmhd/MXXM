.class public Lcom/baidu/cyberplayer/utils/bq;
.super Lcom/baidu/cyberplayer/utils/cj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 32
    const-string v0, "DIDL-Lite"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bq;->i(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "xmlns"

    const-string/jumbo v1, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/bq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "xmlns:dc"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/bq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "xmlns:upnp"

    const-string/jumbo v1, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/bq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

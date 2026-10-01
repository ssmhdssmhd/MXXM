.class public Lcom/baidu/cyberplayer/utils/R;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/cyberplayer/utils/cl;


# direct methods
.method public static final a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 3

    .line 55
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    const-string v1, "s:Envelope"

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "xmlns:s"

    const-string v2, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "s:encodingStyle"

    const-string v2, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "s:Body"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 63
    return-object v0
.end method

.method public static final a()Lcom/baidu/cyberplayer/utils/cl;
    .locals 1

    .line 79
    sget-object v0, Lcom/baidu/cyberplayer/utils/R;->a:Lcom/baidu/cyberplayer/utils/cl;

    return-object v0
.end method

.method public static final a(Lcom/baidu/cyberplayer/utils/cl;)V
    .locals 0

    .line 74
    sput-object p0, Lcom/baidu/cyberplayer/utils/R;->a:Lcom/baidu/cyberplayer/utils/cl;

    .line 75
    return-void
.end method

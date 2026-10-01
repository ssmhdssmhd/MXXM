.class public Lcom/baidu/cyberplayer/utils/aQ;
.super Lcom/baidu/cyberplayer/utils/G;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/G;-><init>()V

    .line 33
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aQ;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 47
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 61
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 75
    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .line 89
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aQ;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.class public Lcom/baidu/cyberplayer/utils/aR;
.super Lcom/baidu/cyberplayer/utils/I;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/I;-><init>()V

    .line 39
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aR;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 109
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

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aR;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 53
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aR;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 67
    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aR;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 81
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aR;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aR;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aR;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 95
    const-string v0, "MYNAME"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aR;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

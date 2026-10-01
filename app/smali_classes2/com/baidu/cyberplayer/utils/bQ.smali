.class public Lcom/baidu/cyberplayer/utils/bQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/bu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "dc:title"

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bw;Lcom/baidu/cyberplayer/utils/bl;)Z
    .locals 5

    .line 33
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->c()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/bl;->d()Ljava/lang/String;

    move-result-object p2

    .line 35
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 38
    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->a()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->c()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    :cond_1
    return v3

    .line 40
    :cond_2
    if-gez v2, :cond_3

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    return v3

    .line 42
    :cond_3
    if-lez v2, :cond_4

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    return v3

    .line 44
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 45
    if-ltz p2, :cond_5

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->f()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 46
    return v3

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 48
    return v3

    .line 49
    :cond_6
    return v1

    .line 36
    :cond_7
    :goto_0
    return v1
.end method

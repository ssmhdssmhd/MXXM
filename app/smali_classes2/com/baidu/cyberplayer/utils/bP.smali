.class public Lcom/baidu/cyberplayer/utils/bP;
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
    const-string v0, "@id"

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bw;Lcom/baidu/cyberplayer/utils/bl;)Z
    .locals 3

    .line 33
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->c()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/bl;->b()Ljava/lang/String;

    move-result-object p2

    .line 35
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bw;->a()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 39
    :cond_2
    return v1

    .line 36
    :cond_3
    :goto_0
    return v1
.end method

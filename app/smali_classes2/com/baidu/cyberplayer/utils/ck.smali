.class public Lcom/baidu/cyberplayer/utils/ck;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/cj;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ck;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/cj;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 5

    .line 33
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 34
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ck;->size()I

    move-result v1

    .line 37
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 38
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/ck;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 41
    return-object v3

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 6

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ck;->size()I

    move-result v1

    .line 52
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 53
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/ck;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 58
    return-object v3

    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_3
    return-object v0
.end method

.class public Lcom/baidu/cyberplayer/utils/bx;
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
.method public a(I)Lcom/baidu/cyberplayer/utils/bw;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bx;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/bw;

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bl;Lcom/baidu/cyberplayer/utils/bv;)Z
    .locals 6

    .line 52
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bx;->size()I

    move-result v0

    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 56
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/bx;->a(I)Lcom/baidu/cyberplayer/utils/bw;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bw;->a()Ljava/lang/String;

    move-result-object v5

    .line 58
    if-nez v5, :cond_0

    .line 59
    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/bw;->a(Z)V

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p2, v5}, Lcom/baidu/cyberplayer/utils/bv;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bu;

    move-result-object v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/bw;->a(Z)V

    .line 65
    goto :goto_1

    .line 67
    :cond_1
    invoke-interface {v5, v4, p1}, Lcom/baidu/cyberplayer/utils/bu;->a(Lcom/baidu/cyberplayer/utils/bw;Lcom/baidu/cyberplayer/utils/bl;)Z

    move-result v3

    .line 68
    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/bw;->a(Z)V

    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_2
    new-instance p1, Lcom/baidu/cyberplayer/utils/bx;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/bx;-><init>()V

    .line 73
    const/4 p2, 0x0

    :goto_2
    if-ge p2, v0, :cond_4

    .line 74
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/bx;->a(I)Lcom/baidu/cyberplayer/utils/bw;

    move-result-object v2

    .line 75
    add-int/lit8 v4, v0, -0x1

    if-ge p2, v4, :cond_3

    .line 76
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bw;->h()Z

    move-result v4

    if-ne v4, v3, :cond_3

    .line 77
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/bx;->a(I)Lcom/baidu/cyberplayer/utils/bw;

    move-result-object v4

    .line 78
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bw;->i()Z

    move-result v2

    .line 79
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bw;->i()Z

    move-result v5

    .line 80
    and-int/2addr v2, v5

    .line 81
    invoke-virtual {v4, v2}, Lcom/baidu/cyberplayer/utils/bw;->a(Z)V

    .line 82
    goto :goto_3

    .line 85
    :cond_3
    new-instance v4, Lcom/baidu/cyberplayer/utils/bw;

    invoke-direct {v4, v2}, Lcom/baidu/cyberplayer/utils/bw;-><init>(Lcom/baidu/cyberplayer/utils/bw;)V

    .line 86
    invoke-virtual {p1, v4}, Lcom/baidu/cyberplayer/utils/bx;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bx;->size()I

    move-result p1

    .line 91
    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_6

    .line 92
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/bx;->a(I)Lcom/baidu/cyberplayer/utils/bw;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bw;->i()Z

    move-result v0

    if-ne v0, v3, :cond_5

    .line 94
    return v3

    .line 91
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 97
    :cond_6
    return v1
.end method

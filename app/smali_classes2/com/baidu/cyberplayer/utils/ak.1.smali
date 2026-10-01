.class public Lcom/baidu/cyberplayer/utils/ak;
.super Lcom/baidu/cyberplayer/utils/am;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/am;-><init>()V

    .line 35
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/T;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/am;-><init>(Lcom/baidu/cyberplayer/utils/T;)V

    .line 41
    const-string p1, "EXT"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/U;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 6

    .line 63
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v2, "xmlns:u"

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v0

    .line 75
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 76
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    new-instance v4, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v4}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 80
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/cyberplayer/utils/cj;->i(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v4}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 75
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_2
    return-object v1
.end method

.method private e()Lcom/baidu/cyberplayer/utils/cj;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ak;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->e()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/Y;
    .locals 7

    .line 103
    new-instance v0, Lcom/baidu/cyberplayer/utils/Y;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/Y;-><init>()V

    .line 105
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/ak;->e()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 106
    if-nez v1, :cond_0

    .line 107
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v2

    .line 110
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 111
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v4

    .line 114
    new-instance v6, Lcom/baidu/cyberplayer/utils/X;

    invoke-direct {v6, v5, v4}, Lcom/baidu/cyberplayer/utils/X;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/utils/Y;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/U;)V
    .locals 1

    .line 51
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/ak;->b(I)V

    .line 53
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ak;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/ak;->a(Lcom/baidu/cyberplayer/utils/U;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 57
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/ak;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ak;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 59
    return-void
.end method

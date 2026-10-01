.class public Lcom/baidu/cyberplayer/utils/aj;
.super Lcom/baidu/cyberplayer/utils/al;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/al;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/al;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aj;->a(Lcom/baidu/cyberplayer/utils/G;)V

    .line 39
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/U;Lcom/baidu/cyberplayer/utils/Y;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 4

    .line 116
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 120
    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1, p2}, Lcom/baidu/cyberplayer/utils/cj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result p1

    .line 124
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 125
    invoke-virtual {p3, p2}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 127
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/X;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/cj;->i(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 124
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/Y;
    .locals 7

    .line 71
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aj;->c()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v1

    .line 73
    new-instance v2, Lcom/baidu/cyberplayer/utils/Y;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/Y;-><init>()V

    .line 74
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 75
    new-instance v4, Lcom/baidu/cyberplayer/utils/X;

    invoke-direct {v4}, Lcom/baidu/cyberplayer/utils/X;-><init>()V

    .line 76
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/cyberplayer/utils/X;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v4}, Lcom/baidu/cyberplayer/utils/Y;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object v2
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ak;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aj;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/aj;->a(Ljava/lang/String;I)Lcom/baidu/cyberplayer/utils/T;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/baidu/cyberplayer/utils/ak;

    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/ak;-><init>(Lcom/baidu/cyberplayer/utils/T;)V

    return-object v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/U;Lcom/baidu/cyberplayer/utils/Y;)V
    .locals 3

    .line 90
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aj;->a(Lcom/baidu/cyberplayer/utils/ac;)V

    .line 94
    invoke-static {}, Lcom/baidu/cyberplayer/utils/R;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aj;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 95
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aj;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aj;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v2

    .line 97
    invoke-direct {p0, v0, p1, p2}, Lcom/baidu/cyberplayer/utils/aj;->a(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/U;Lcom/baidu/cyberplayer/utils/Y;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p2

    .line 98
    invoke-virtual {v2, p2}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aj;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 101
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aj;->j(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public c()Lcom/baidu/cyberplayer/utils/cj;
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aj;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    return-object v1

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    return-object v1

    .line 52
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aj;->c()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 58
    const-string v1, ""

    if-nez v0, :cond_0

    .line 59
    return-object v1

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    return-object v1

    .line 63
    :cond_1
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 64
    if-gez v2, :cond_2

    .line 65
    return-object v1

    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

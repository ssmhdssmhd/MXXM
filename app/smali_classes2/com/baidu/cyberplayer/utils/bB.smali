.class public Lcom/baidu/cyberplayer/utils/bB;
.super Lcom/baidu/cyberplayer/utils/bl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bl;-><init>()V

    .line 41
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->a(I)V

    .line 42
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->i(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->e(I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->d(I)V

    .line 45
    const-string v0, "object.container"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->e(Ljava/lang/String;)V

    .line 46
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->f(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static final a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    const-string v0, "container"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/bl;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/bl;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;
    .locals 5

    .line 136
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 137
    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bB;->b()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 141
    return-object p0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v1

    .line 144
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 145
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 147
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/bl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 150
    :cond_2
    check-cast v3, Lcom/baidu/cyberplayer/utils/bB;

    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/bB;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_3

    .line 152
    return-object v3

    .line 144
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_4
    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bl;)V
    .locals 1

    .line 117
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bB;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 118
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bB;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->d(I)V

    .line 120
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bB;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/be;)V

    .line 121
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 6

    .line 68
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v0

    .line 69
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 70
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/bK;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/baidu/cyberplayer/utils/bB;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->e()I

    move-result v0

    .line 80
    nop

    :goto_2
    if-ge v1, v0, :cond_3

    .line 81
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/baidu/cyberplayer/utils/bB;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :cond_3
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bl;)Z
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bB;->b(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result p1

    .line 126
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->d(I)V

    .line 127
    return p1
.end method

.method public b()I
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bB;->f()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 169
    const-string v0, "childCount"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 183
    const-string v0, "searchable"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bB;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 164
    const-string v0, "childCount"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bB;->a(Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 178
    const-string v0, "searchable"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bB;->a(Ljava/lang/String;I)V

    .line 179
    return-void
.end method

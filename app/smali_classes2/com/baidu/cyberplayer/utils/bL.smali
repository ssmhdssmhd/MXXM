.class public Lcom/baidu/cyberplayer/utils/bL;
.super Lcom/baidu/cyberplayer/utils/bl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bl;-><init>()V

    .line 45
    return-void
.end method

.method public static final a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    const-string v0, "res"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bL;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bL;->f()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, ""

    if-nez v0, :cond_0

    .line 97
    return-object v1

    .line 98
    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    array-length v2, v0

    if-gt v2, p1, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    aget-object p1, v0, p1

    return-object p1

    .line 100
    :cond_2
    :goto_0
    return-object v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bL;->j(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->e()I

    move-result v0

    .line 69
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/baidu/cyberplayer/utils/bL;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bL;->j()Ljava/lang/String;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    return v1

    .line 170
    :cond_0
    const-string v2, "_TN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 126
    const-string v0, ""

    if-nez p1, :cond_0

    .line 127
    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bL;->i()Ljava/lang/String;

    move-result-object v1

    .line 129
    if-nez v1, :cond_1

    .line 130
    return-object v0

    .line 131
    :cond_1
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_7

    array-length v2, v1

    if-gtz v2, :cond_2

    goto :goto_2

    .line 134
    :cond_2
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 135
    aget-object v3, v1, v2

    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    nop

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_3
    const-string p1, "="

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 139
    if-eqz p1, :cond_5

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    goto :goto_1

    .line 141
    :cond_4
    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    .line 140
    :cond_5
    :goto_1
    return-object v0

    .line 143
    :cond_6
    return-object v0

    .line 133
    :cond_7
    :goto_2
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "protocolInfo"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bL;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bL;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bL;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 121
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bL;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "DLNA.ORG_PN"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bL;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

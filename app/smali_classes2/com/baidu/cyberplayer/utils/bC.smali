.class public Lcom/baidu/cyberplayer/utils/bC;
.super Lcom/baidu/cyberplayer/utils/bB;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bB;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bC;->a(I)V

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bC;->b(I)V

    .line 38
    const-string v0, "Root"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bC;->d(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private a()Z
    .locals 7

    .line 73
    nop

    .line 76
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->b()I

    move-result v0

    .line 77
    new-array v1, v0, [Lcom/baidu/cyberplayer/utils/bl;

    .line 78
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 79
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/bC;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v4

    aput-object v4, v1, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 81
    aget-object v4, v1, v2

    instance-of v4, v4, Lcom/baidu/cyberplayer/utils/bN;

    if-nez v4, :cond_1

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    aget-object v4, v1, v2

    check-cast v4, Lcom/baidu/cyberplayer/utils/bN;

    .line 84
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/bN;->a()Ljava/io/File;

    move-result-object v4

    .line 85
    if-nez v4, :cond_2

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 88
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/bC;->a(Lcom/baidu/cyberplayer/utils/bl;)Z

    .line 89
    const/4 v3, 0x1

    goto :goto_2

    .line 91
    :cond_3
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/bC;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 92
    const/4 v3, 0x1

    .line 80
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_5
    return v3
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bN;Ljava/io/File;)Z
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    invoke-interface {v0, p2}, Lcom/baidu/cyberplayer/utils/br;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bt;

    move-result-object v1

    .line 131
    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/io/File;)V

    .line 134
    invoke-interface {v1}, Lcom/baidu/cyberplayer/utils/bt;->c()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 136
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bN;->d(Ljava/lang/String;)V

    .line 139
    :cond_1
    invoke-interface {v1}, Lcom/baidu/cyberplayer/utils/bt;->d()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 141
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bN;->b(Ljava/lang/String;)V

    .line 144
    :cond_2
    invoke-interface {v0}, Lcom/baidu/cyberplayer/utils/br;->b()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 146
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bN;->e(Ljava/lang/String;)V

    .line 149
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 150
    invoke-virtual {p1, v2, v3}, Lcom/baidu/cyberplayer/utils/bN;->a(J)V

    .line 154
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 155
    invoke-virtual {p1, v2, v3}, Lcom/baidu/cyberplayer/utils/bN;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception p2

    .line 158
    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 162
    :goto_0
    invoke-interface {v0}, Lcom/baidu/cyberplayer/utils/br;->a()Ljava/lang/String;

    move-result-object p2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http-get:*:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bN;->b()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-interface {v1}, Lcom/baidu/cyberplayer/utils/bt;->a()Lcom/baidu/cyberplayer/utils/ci;

    move-result-object v1

    .line 167
    invoke-virtual {p1, v0, p2, v1}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/ci;)V

    .line 170
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/be;->a()V

    .line 172
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/bN;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bN;-><init>()V

    .line 119
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/io/File;)V

    .line 120
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->b()I

    move-result v0

    .line 102
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 103
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/bC;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v2

    .line 104
    instance-of v3, v2, Lcom/baidu/cyberplayer/utils/bN;

    if-nez v3, :cond_0

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    check-cast v2, Lcom/baidu/cyberplayer/utils/bN;

    .line 107
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/io/File;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 108
    return-object v2

    .line 102
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bC;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->b()I

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bC;->d(I)V

    .line 67
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/be;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 7

    .line 43
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/bC;->b(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;

    move-result-object v0

    .line 44
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bC;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;

    move-result-object v1

    .line 45
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bC;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/be;->b()I

    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/bN;->a(I)V

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bC;->a(Lcom/baidu/cyberplayer/utils/bN;Ljava/io/File;)Z

    .line 49
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bC;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 50
    return v2

    .line 53
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bN;->d()J

    move-result-wide v3

    .line 54
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bN;->d()J

    move-result-wide v5

    .line 55
    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 56
    const/4 p1, 0x0

    return p1

    .line 58
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/baidu/cyberplayer/utils/bC;->a(Lcom/baidu/cyberplayer/utils/bN;Ljava/io/File;)Z

    .line 60
    return v2
.end method

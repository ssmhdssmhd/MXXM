.class public Lcom/baidu/cyberplayer/utils/bk;
.super Lcom/baidu/cyberplayer/utils/bf;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/bf;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/bk;->b(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private a(Ljava/io/File;Lcom/baidu/cyberplayer/utils/bO;)I
    .locals 5

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 127
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 128
    :cond_0
    array-length v1, p1

    .line 129
    nop

    :goto_0
    if-ge v0, v1, :cond_4

    .line 130
    aget-object v2, p1, v0

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 132
    invoke-direct {p0, v2, p2}, Lcom/baidu/cyberplayer/utils/bk;->a(Ljava/io/File;Lcom/baidu/cyberplayer/utils/bO;)I

    .line 133
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 136
    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/utils/bk;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;

    move-result-object v2

    .line 137
    if-nez v2, :cond_2

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p2, v2}, Lcom/baidu/cyberplayer/utils/bO;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/bO;->size()I

    move-result p1

    return p1
.end method

.method private a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;

    move-result-object v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/bN;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bN;-><init>()V

    .line 116
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/io/File;)V

    .line 117
    return-object v0
.end method

.method private a()Lcom/baidu/cyberplayer/utils/bO;
    .locals 3

    .line 147
    new-instance v0, Lcom/baidu/cyberplayer/utils/bO;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bO;-><init>()V

    .line 148
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->a()Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, v2, v0}, Lcom/baidu/cyberplayer/utils/bk;->a(Ljava/io/File;Lcom/baidu/cyberplayer/utils/bO;)I

    .line 151
    return-object v0
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bN;)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bk;->a(Lcom/baidu/cyberplayer/utils/bl;)V

    .line 175
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bN;)Z
    .locals 7

    .line 179
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bN;->a()Ljava/io/File;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/bk;->b(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;

    move-result-object v1

    .line 181
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/be;->b()I

    move-result v1

    .line 183
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/bN;->a(I)V

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/bk;->a(Lcom/baidu/cyberplayer/utils/bN;Ljava/io/File;)Z

    .line 185
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/bk;->a(Lcom/baidu/cyberplayer/utils/bN;)V

    .line 186
    return v2

    .line 189
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bN;->d()J

    move-result-wide v3

    .line 190
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bN;->d()J

    move-result-wide v5

    .line 191
    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    .line 192
    const/4 p1, 0x0

    return p1

    .line 194
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/baidu/cyberplayer/utils/bk;->a(Lcom/baidu/cyberplayer/utils/bN;Ljava/io/File;)Z

    .line 196
    return v2
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bN;Ljava/io/File;)Z
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/br;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    invoke-interface {v0, p2}, Lcom/baidu/cyberplayer/utils/br;->a(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bt;

    move-result-object v1

    .line 66
    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/io/File;)V

    .line 69
    invoke-interface {v1}, Lcom/baidu/cyberplayer/utils/bt;->c()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 71
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bN;->d(Ljava/lang/String;)V

    .line 74
    :cond_1
    invoke-interface {v1}, Lcom/baidu/cyberplayer/utils/bt;->d()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 76
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bN;->b(Ljava/lang/String;)V

    .line 79
    :cond_2
    invoke-interface {v0}, Lcom/baidu/cyberplayer/utils/br;->b()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 81
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bN;->e(Ljava/lang/String;)V

    .line 84
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 85
    invoke-virtual {p1, v2, v3}, Lcom/baidu/cyberplayer/utils/bN;->a(J)V

    .line 89
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 90
    invoke-virtual {p1, v2, v3}, Lcom/baidu/cyberplayer/utils/bN;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception p2

    .line 93
    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 97
    :goto_0
    invoke-interface {v0}, Lcom/baidu/cyberplayer/utils/br;->a()Ljava/lang/String;

    move-result-object p2

    .line 98
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

    .line 99
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bN;->b()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-interface {v1}, Lcom/baidu/cyberplayer/utils/bt;->a()Lcom/baidu/cyberplayer/utils/ci;

    move-result-object v1

    .line 102
    invoke-virtual {p1, v0, p2, v1}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/ci;)V

    .line 105
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/be;->a()V

    .line 107
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/io/File;)Lcom/baidu/cyberplayer/utils/bN;
    .locals 5

    .line 160
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->b()I

    move-result v0

    .line 161
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 162
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/bk;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v2

    .line 163
    instance-of v3, v2, Lcom/baidu/cyberplayer/utils/bN;

    if-nez v3, :cond_0

    .line 164
    goto :goto_1

    .line 165
    :cond_0
    check-cast v2, Lcom/baidu/cyberplayer/utils/bN;

    .line 166
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/bN;->a(Ljava/io/File;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 167
    return-object v2

    .line 161
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private f()Z
    .locals 7

    .line 201
    nop

    .line 204
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bk;->b()I

    move-result v0

    .line 205
    new-array v1, v0, [Lcom/baidu/cyberplayer/utils/bl;

    .line 206
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 207
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/bk;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v4

    aput-object v4, v1, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v0, :cond_4

    .line 209
    aget-object v6, v1, v3

    instance-of v6, v6, Lcom/baidu/cyberplayer/utils/bN;

    if-nez v6, :cond_1

    .line 210
    goto :goto_2

    .line 211
    :cond_1
    aget-object v6, v1, v3

    check-cast v6, Lcom/baidu/cyberplayer/utils/bN;

    .line 212
    invoke-virtual {v6}, Lcom/baidu/cyberplayer/utils/bN;->a()Ljava/io/File;

    move-result-object v6

    .line 213
    if-nez v6, :cond_2

    .line 214
    goto :goto_2

    .line 215
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 216
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/bk;->a(Lcom/baidu/cyberplayer/utils/bl;)Z

    .line 217
    const/4 v4, 0x1

    .line 208
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bk;->a()Lcom/baidu/cyberplayer/utils/bO;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bO;->size()I

    move-result v1

    .line 224
    nop

    :goto_3
    if-ge v2, v1, :cond_6

    .line 225
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/bO;->a(I)Lcom/baidu/cyberplayer/utils/bN;

    move-result-object v3

    .line 226
    invoke-direct {p0, v3}, Lcom/baidu/cyberplayer/utils/bk;->a(Lcom/baidu/cyberplayer/utils/bN;)Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 227
    const/4 v4, 0x1

    .line 224
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 230
    :cond_6
    return v4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bk;->f()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bk;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

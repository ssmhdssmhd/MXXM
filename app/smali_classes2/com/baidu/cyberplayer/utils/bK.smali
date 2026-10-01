.class public Lcom/baidu/cyberplayer/utils/bK;
.super Lcom/baidu/cyberplayer/utils/bl;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/bM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bl;-><init>()V

    .line 270
    new-instance v0, Lcom/baidu/cyberplayer/utils/bM;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bM;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bK;->a:Lcom/baidu/cyberplayer/utils/bM;

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bK;->a(I)V

    .line 56
    const-string v0, "item"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bK;->i(Ljava/lang/String;)V

    .line 57
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bK;->g(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bK;->f(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static final a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 p0, 0x0

    return p0

    .line 70
    :cond_0
    const-string v0, "item"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 153
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bK;->a()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    return-wide v1

    .line 155
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/bL;
    .locals 4

    .line 305
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bK;->b()I

    move-result v0

    .line 306
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 307
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/bK;->a(I)Lcom/baidu/cyberplayer/utils/bL;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bL;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    return-object v2

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/bL;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bK;->a:Lcom/baidu/cyberplayer/utils/bM;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bM;->a(I)Lcom/baidu/cyberplayer/utils/bL;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/bM;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bK;->a:Lcom/baidu/cyberplayer/utils/bM;

    return-object v0
.end method

.method public a()Ljava/io/InputStream;
    .locals 1

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "dc:date"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .line 139
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 142
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 149
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bL;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bK;->a:Lcom/baidu/cyberplayer/utils/bM;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bM;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 6

    .line 80
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v0

    .line 81
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 82
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 83
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/bB;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/bK;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/bL;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 88
    new-instance v4, Lcom/baidu/cyberplayer/utils/bL;

    invoke-direct {v4}, Lcom/baidu/cyberplayer/utils/bL;-><init>()V

    .line 89
    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/bL;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 90
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/bK;->a(Lcom/baidu/cyberplayer/utils/bL;)V

    .line 91
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->e()I

    move-result v0

    .line 98
    nop

    :goto_2
    if-ge v1, v0, :cond_4

    .line 99
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/baidu/cyberplayer/utils/bK;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 128
    const-string v0, "dc:date"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/ci;)V
    .locals 3

    .line 331
    const-string v0, "res"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string p1, "protocolInfo"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Lcom/baidu/cyberplayer/utils/ci;->size()I

    move-result p1

    .line 335
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 336
    invoke-virtual {p3, p2}, Lcom/baidu/cyberplayer/utils/ci;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ch;->a()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ch;->b()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {p0, v0, v2, v1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bK;->a:Lcom/baidu/cyberplayer/utils/bM;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bM;->size()I

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 205
    const-string/jumbo v0, "upnp:storageUsed"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .line 200
    const-string/jumbo v0, "upnp:storageUsed"

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;J)V

    .line 201
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 172
    const-string v0, "dc:creator"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 345
    new-instance v0, Lcom/baidu/cyberplayer/utils/ci;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ci;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/ci;)V

    .line 346
    return-void
.end method

.method public c()J
    .locals 2

    .line 365
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 350
    const-string v0, "res"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 355
    const-string v0, "res"

    const-string v1, "protocolInfo"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 186
    const-string/jumbo v0, "upnp:storageMedium"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "*/*"

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 228
    const-string/jumbo v0, "subSwitch"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

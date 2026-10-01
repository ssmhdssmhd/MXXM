.class public abstract Lcom/baidu/cyberplayer/utils/bl;
.super Lcom/baidu/cyberplayer/utils/cj;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/be;

.field private a:Lcom/baidu/cyberplayer/utils/bo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 95
    new-instance v0, Lcom/baidu/cyberplayer/utils/bo;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bo;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bl;->a:Lcom/baidu/cyberplayer/utils/bo;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->a(I)V

    .line 47
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->b(I)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->c(I)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/be;)V

    .line 50
    return-void
.end method

.method private a(Ljava/io/PrintWriter;Lcom/baidu/cyberplayer/utils/bn;)V
    .locals 5

    .line 323
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/bn;->a()I

    move-result v0

    .line 324
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 325
    invoke-virtual {p2, v1}, Lcom/baidu/cyberplayer/utils/bn;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v2

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/ch;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bl;->a:Lcom/baidu/cyberplayer/utils/bo;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bo;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 2

    .line 177
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 181
    :catch_0
    move-exception p1

    .line 182
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/be;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bl;->a:Lcom/baidu/cyberplayer/utils/be;

    return-object v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/bn;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bl;->a:Lcom/baidu/cyberplayer/utils/bo;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bo;->a(I)Lcom/baidu/cyberplayer/utils/bn;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bn;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bl;->a:Lcom/baidu/cyberplayer/utils/bo;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bo;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bn;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bn;

    move-result-object p1

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bn;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bn;

    move-result-object p1

    .line 202
    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 219
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/be;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bl;->a:Lcom/baidu/cyberplayer/utils/be;

    .line 61
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bn;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bl;->a:Lcom/baidu/cyberplayer/utils/bo;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bo;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public abstract a(Lcom/baidu/cyberplayer/utils/cj;)V
.end method

.method public a(Ljava/io/PrintWriter;IZ)V
    .locals 16

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/bl;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bl;->k()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bl;->l()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bl;->e()Z

    move-result v6

    const-string v7, "</"

    const-string v8, "<"

    const-string v9, ">"

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bl;->d()Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/io/PrintWriter;)V

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    return-void

    .line 344
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/io/PrintWriter;)V

    .line 346
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bl;->a()I

    move-result v5

    .line 349
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v5, :cond_2

    .line 350
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v0, v12}, Lcom/baidu/cyberplayer/utils/bl;->b(I)Ljava/lang/String;

    move-result-object v12

    .line 351
    invoke-virtual {v0, v10}, Lcom/baidu/cyberplayer/utils/bl;->a(I)Lcom/baidu/cyberplayer/utils/bn;

    move-result-object v13

    .line 352
    invoke-virtual {v13}, Lcom/baidu/cyberplayer/utils/bn;->a()Ljava/lang/String;

    move-result-object v14

    .line 353
    invoke-virtual {v13}, Lcom/baidu/cyberplayer/utils/bn;->b()Ljava/lang/String;

    move-result-object v15

    .line 354
    invoke-virtual {v13}, Lcom/baidu/cyberplayer/utils/bn;->a()Z

    move-result v6

    if-ne v6, v11, :cond_1

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    invoke-direct {v0, v1, v13}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/io/PrintWriter;Lcom/baidu/cyberplayer/utils/bn;)V

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 360
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 363
    :cond_2
    move/from16 v5, p3

    if-ne v5, v11, :cond_3

    .line 364
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bl;->f()I

    move-result v5

    .line 365
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    .line 366
    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/utils/bl;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v8

    .line 367
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v8, v1, v10, v11}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/io/PrintWriter;IZ)V

    .line 365
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 371
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .line 157
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bn;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/bn;->b(Ljava/lang/String;)V

    .line 146
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/bn;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/bn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/bn;)V

    .line 150
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 191
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bn;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/baidu/cyberplayer/utils/bn;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/baidu/cyberplayer/utils/bn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->a(Lcom/baidu/cyberplayer/utils/bn;)V

    .line 196
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/baidu/cyberplayer/utils/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 229
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 238
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method public b()Z
    .locals 1

    .line 79
    instance-of v0, p0, Lcom/baidu/cyberplayer/utils/bB;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 248
    const-string v0, "parentID"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 257
    const-string v0, "restricted"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;I)V

    .line 258
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 243
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bl;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public c()Z
    .locals 1

    .line 86
    instance-of v0, p0, Lcom/baidu/cyberplayer/utils/bK;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 276
    const-string v0, "dc:title"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 271
    const-string v0, "dc:title"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public d()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bl;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 290
    const-string/jumbo v0, "upnp:class"

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 285
    const-string/jumbo v0, "upnp:class"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 309
    const-string/jumbo v0, "upnp:writeStatus"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

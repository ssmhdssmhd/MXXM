.class public Lcom/baidu/cyberplayer/utils/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/ah;

.field private a:Lcom/baidu/cyberplayer/utils/cd;

.field private a:Lcom/baidu/cyberplayer/utils/cj;

.field private a:Ljava/lang/Object;

.field private b:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/U;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 425
    new-instance v0, Lcom/baidu/cyberplayer/utils/ah;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ah;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/ah;

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Ljava/lang/Object;

    .line 99
    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/U;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 100
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/U;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 425
    new-instance v0, Lcom/baidu/cyberplayer/utils/ah;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ah;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/ah;

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 94
    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/U;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 95
    return-void
.end method

.method private a()Lcom/baidu/cyberplayer/utils/bU;
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/bU;

    .line 304
    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/baidu/cyberplayer/utils/bU;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bU;-><init>()V

    .line 306
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/bU;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 309
    :cond_0
    return-object v1
.end method

.method private a(Lcom/baidu/cyberplayer/utils/am;)V
    .locals 1

    .line 358
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/bU;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bU;->a(Lcom/baidu/cyberplayer/utils/am;)V

    .line 359
    return-void
.end method

.method public static a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 125
    const-string v0, "action"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private b()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 270
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v1

    .line 272
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 273
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    goto :goto_1

    .line 276
    :cond_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 272
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    .line 291
    if-nez p1, :cond_0

    .line 292
    const/4 p1, 0x0

    return p1

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/X;->a()I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;
    .locals 6

    .line 212
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v1

    .line 214
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 215
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->a()Ljava/lang/String;

    move-result-object v4

    .line 217
    if-nez v4, :cond_0

    .line 218
    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 220
    return-object v3

    .line 214
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/Y;
    .locals 7

    .line 150
    new-instance v0, Lcom/baidu/cyberplayer/utils/Y;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/Y;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    const-string v2, "argumentList"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 152
    if-nez v1, :cond_0

    .line 153
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v2

    .line 155
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 156
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 157
    invoke-static {v4}, Lcom/baidu/cyberplayer/utils/X;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    goto :goto_1

    .line 159
    :cond_1
    new-instance v5, Lcom/baidu/cyberplayer/utils/X;

    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/U;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/baidu/cyberplayer/utils/X;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    .line 160
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/Y;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_2
    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ac;
    .locals 2

    .line 64
    new-instance v0, Lcom/baidu/cyberplayer/utils/ac;

    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/U;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/ac;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ah;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/ah;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ai;
    .locals 1

    .line 318
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bU;->a()Lcom/baidu/cyberplayer/utils/ai;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->b:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    .line 283
    if-nez p1, :cond_0

    .line 284
    const-string p1, ""

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 9

    .line 409
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v1

    .line 412
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 413
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v3

    .line 414
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->a()Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object v5

    .line 416
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/X;->b()Ljava/lang/String;

    move-result-object v3

    .line 417
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 435
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(ILjava/lang/String;)V

    .line 436
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/ah;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ah;->a(I)V

    .line 430
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/U;->a:Lcom/baidu/cyberplayer/utils/ah;

    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/ah;->a(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ai;)V
    .locals 1

    .line 323
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/bU;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bU;->a(Lcom/baidu/cyberplayer/utils/ai;)V

    .line 324
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    .line 258
    if-nez p1, :cond_0

    .line 259
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public a()Z
    .locals 5

    .line 373
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->b()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v1

    .line 375
    new-instance v2, Lcom/baidu/cyberplayer/utils/aj;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/aj;-><init>()V

    .line 376
    invoke-virtual {v2, p0, v1}, Lcom/baidu/cyberplayer/utils/aj;->a(Lcom/baidu/cyberplayer/utils/U;Lcom/baidu/cyberplayer/utils/Y;)V

    .line 377
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 378
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aj;->c()V

    .line 379
    :cond_0
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aj;->a()Lcom/baidu/cyberplayer/utils/ak;

    move-result-object v1

    .line 380
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 381
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ak;->c()V

    .line 382
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(Lcom/baidu/cyberplayer/utils/am;)V

    .line 384
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ak;->c()I

    move-result v2

    .line 385
    const/4 v4, -0x1

    if-eq v4, v2, :cond_2

    .line 386
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ak;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/baidu/cyberplayer/utils/U;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ak;->b()I

    move-result v2

    .line 389
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(I)V

    .line 391
    :goto_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ak;->j()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 392
    return v4

    .line 393
    :cond_3
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ak;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v1

    .line 395
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/Y;->b(Lcom/baidu/cyberplayer/utils/Y;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    nop

    .line 400
    return v3

    .line 396
    :catch_0
    move-exception v0

    .line 397
    const/16 v0, 0x192

    const-string v1, "Action succesfully delivered but invalid arguments returned."

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/U;->a(ILjava/lang/String;)V

    .line 398
    return v4
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aj;)Z
    .locals 4

    .line 328
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ai;

    move-result-object v0

    .line 329
    if-nez v0, :cond_0

    .line 330
    const/4 p1, 0x0

    return p1

    .line 331
    :cond_0
    new-instance v1, Lcom/baidu/cyberplayer/utils/ak;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/ak;-><init>()V

    .line 332
    const/16 v2, 0x191

    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/U;->a(I)V

    .line 333
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/U;->b()V

    .line 334
    invoke-interface {v0, p0}, Lcom/baidu/cyberplayer/utils/ai;->a(Lcom/baidu/cyberplayer/utils/U;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 335
    invoke-virtual {v1, p0}, Lcom/baidu/cyberplayer/utils/ak;->a(Lcom/baidu/cyberplayer/utils/U;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/baidu/cyberplayer/utils/ak;->a(ILjava/lang/String;)V

    .line 341
    :goto_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 342
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ak;->c()V

    .line 343
    :cond_2
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/aj;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 344
    return v2
.end method

.method public b()Lcom/baidu/cyberplayer/utils/Y;
    .locals 6

    .line 184
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/Y;->size()I

    move-result v1

    .line 186
    new-instance v2, Lcom/baidu/cyberplayer/utils/Y;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/Y;-><init>()V

    .line 187
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 188
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/Y;->a(I)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/X;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    goto :goto_1

    .line 191
    :cond_0
    invoke-virtual {v2, v4}, Lcom/baidu/cyberplayer/utils/Y;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_1
    return-object v2
.end method

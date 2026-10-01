.class public Lcom/baidu/cyberplayer/utils/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/ai;
.implements Lcom/baidu/cyberplayer/utils/an;


# instance fields
.field private a:I

.field private a:Lcom/baidu/cyberplayer/utils/bc;

.field private a:Lcom/baidu/cyberplayer/utils/bh;

.field private a:Lcom/baidu/cyberplayer/utils/cd;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/bh;)V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 269
    new-instance v0, Lcom/baidu/cyberplayer/utils/bc;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bc;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    .line 209
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/bd;->a(Lcom/baidu/cyberplayer/utils/bh;)V

    .line 210
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/cyberplayer/utils/bd;->a:I

    .line 211
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bh;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bh;

    .line 222
    return-void
.end method

.method private b(Lcom/baidu/cyberplayer/utils/U;)Z
    .locals 5

    .line 368
    nop

    .line 369
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()V

    .line 370
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bc;->size()I

    move-result v0

    .line 371
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 372
    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {v3, v2}, Lcom/baidu/cyberplayer/utils/bc;->a(I)Lcom/baidu/cyberplayer/utils/bb;

    move-result-object v3

    .line 373
    if-lez v2, :cond_0

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/bb;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_1
    const-string v0, "ConnectionIDs"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->b()V

    .line 379
    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcom/baidu/cyberplayer/utils/U;)Z
    .locals 8

    .line 388
    const-string v0, "RcsID"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/X;->a()I

    move-result v1

    .line 389
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()V

    .line 390
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/bd;->a(I)Lcom/baidu/cyberplayer/utils/bb;

    move-result-object v1

    .line 391
    const-string v2, "Status"

    const-string v3, "Direction"

    const-string v4, "PeerConnectionID"

    const-string v5, "PeerConnectionManager"

    const-string v6, "AVTransportID"

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bb;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 393
    invoke-virtual {p1, v6}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bb;->c()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 394
    invoke-virtual {p1, v5}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1, v4}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bb;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 396
    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bb;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 401
    invoke-virtual {p1, v6}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 402
    invoke-virtual {p1, v5}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1, v4}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 404
    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    const-string v1, "Output"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 407
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->b()V

    .line 408
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()V

    .line 259
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:I

    .line 260
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->b()V

    .line 261
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:I

    return v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/bb;
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bc;->size()I

    move-result v0

    .line 279
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 280
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/bc;->a(I)Lcom/baidu/cyberplayer/utils/bb;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bb;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 282
    return-object v2

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/be;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/bh;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bh;

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 243
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 296
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()V

    .line 297
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bc;->size()I

    move-result v0

    .line 298
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 299
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/bc;->a(I)Lcom/baidu/cyberplayer/utils/bb;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bb;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/bc;->remove(Ljava/lang/Object;)Z

    .line 302
    goto :goto_1

    .line 298
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->b()V

    .line 306
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bb;)V
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()V

    .line 290
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/bc;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bc;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->b()V

    .line 292
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/U;)Z
    .locals 7

    .line 323
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/U;->a()Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, "GetProtocolInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 327
    nop

    .line 328
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/be;->d()I

    move-result v0

    .line 329
    const-string v1, ""

    move-object v4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 330
    if-lez v2, :cond_0

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bd;->a()Lcom/baidu/cyberplayer/utils/be;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/cyberplayer/utils/be;->a(I)Lcom/baidu/cyberplayer/utils/br;

    move-result-object v5

    .line 333
    invoke-interface {v5}, Lcom/baidu/cyberplayer/utils/br;->a()Ljava/lang/String;

    move-result-object v5

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "http-get:*:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    const-string v0, "Source"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 338
    const-string v0, "Sink"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 339
    return v3

    .line 342
    :cond_2
    const-string v1, "PrepareForConnection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 343
    const-string v0, "ConnectionID"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 344
    const-string v0, "AVTransportID"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 345
    const-string v0, "RcsID"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/U;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/X;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/X;->a(I)V

    .line 346
    return v3

    .line 349
    :cond_3
    const-string v1, "ConnectionComplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 350
    return v3

    .line 353
    :cond_4
    const-string v1, "GetCurrentConnectionInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 354
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/bd;->c(Lcom/baidu/cyberplayer/utils/U;)Z

    move-result p1

    return p1

    .line 356
    :cond_5
    const-string v1, "GetCurrentConnectionIDs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 357
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/bd;->b(Lcom/baidu/cyberplayer/utils/U;)Z

    move-result p1

    return p1

    .line 359
    :cond_6
    return v2
.end method

.method public a(Lcom/baidu/cyberplayer/utils/af;)Z
    .locals 0

    .line 417
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bd;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 248
    return-void
.end method

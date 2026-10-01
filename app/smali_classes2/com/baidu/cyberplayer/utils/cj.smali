.class public Lcom/baidu/cyberplayer/utils/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/ci;

.field private a:Lcom/baidu/cyberplayer/utils/cj;

.field private a:Lcom/baidu/cyberplayer/utils/ck;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 99
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/cj;->b:Ljava/lang/String;

    .line 156
    new-instance v1, Lcom/baidu/cyberplayer/utils/ci;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/ci;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ci;

    .line 246
    new-instance v1, Lcom/baidu/cyberplayer/utils/ck;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/ck;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    .line 334
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cj;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->i(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 0

    .line 225
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 229
    :catch_0
    move-exception p1

    .line 230
    const/4 p1, 0x0

    return p1
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/ch;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ci;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ci;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ck;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ck;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 370
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 371
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 421
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 422
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 423
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/io/PrintWriter;IZ)V

    .line 424
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 426
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 427
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 429
    :catch_0
    move-exception p1

    goto :goto_0

    .line 430
    :cond_0
    nop

    .line 431
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ch;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ci;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;I)V
    .locals 1

    .line 272
    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/utils/cj;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 273
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/ck;->insertElementAt(Ljava/lang/Object;I)V

    .line 274
    return-void
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 5

    .line 378
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->e()I

    move-result v0

    .line 379
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 380
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v2

    .line 381
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

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method public a(Ljava/io/PrintWriter;IZ)V
    .locals 8

    .line 387
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/cj;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->e()Z

    move-result v3

    const-string v4, "</"

    const-string v5, "<"

    const-string v6, ">"

    if-eqz v3, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 406
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/io/PrintWriter;)V

    .line 408
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result p3

    .line 411
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    .line 412
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 413
    const/4 v5, 0x1

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v3, p1, v7, v5}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/io/PrintWriter;IZ)V

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    return-void

    .line 393
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/io/PrintWriter;)V

    .line 396
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    .line 400
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v2}, Lcom/baidu/cyberplayer/utils/cn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 398
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "></"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public b()Lcom/baidu/cyberplayer/utils/cj;
    .locals 3

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    nop

    .line 90
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 92
    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ck;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 357
    const-string v0, "   "

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/cj;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 73
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/cj;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 289
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ck;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object p1

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ch;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 221
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public c(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 267
    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/utils/cj;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 268
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ck;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 327
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 180
    new-instance v0, Lcom/baidu/cyberplayer/utils/ch;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cj;->a(Lcom/baidu/cyberplayer/utils/ch;)V

    .line 182
    return-void
.end method

.method public e()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ci;->size()I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 204
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/ch;->b(Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/ch;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cj;->a(Lcom/baidu/cyberplayer/utils/ch;)V

    .line 211
    return-void
.end method

.method public e()Z
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ck;->size()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 313
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 316
    return-void

    .line 318
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 321
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/cj;->b:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/cj;->b:Ljava/lang/String;

    .line 141
    return-void

    .line 143
    :cond_0
    if-eqz p1, :cond_1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/cj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/cj;->b:Ljava/lang/String;

    .line 145
    :cond_1
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/cj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 436
    const-string/jumbo v0, "utf-8"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

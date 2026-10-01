.class public Lcom/baidu/cyberplayer/utils/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/H;


# static fields
.field private static b:Z


# instance fields
.field private a:I

.field private a:J

.field private a:Lcom/baidu/cyberplayer/utils/K;

.field private a:Lcom/baidu/cyberplayer/utils/aO;

.field private a:Lcom/baidu/cyberplayer/utils/aV;

.field private a:Lcom/baidu/cyberplayer/utils/aq;

.field private a:Lcom/baidu/cyberplayer/utils/at;

.field a:Lcom/baidu/cyberplayer/utils/cc;

.field private a:Lcom/baidu/cyberplayer/utils/cd;

.field private a:Lcom/baidu/cyberplayer/utils/ck;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Lcom/baidu/cyberplayer/utils/cc;

.field private c:I

.field private c:Lcom/baidu/cyberplayer/utils/cc;

.field private d:Lcom/baidu/cyberplayer/utils/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()V

    .line 862
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/cyberplayer/utils/Z;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 163
    const/16 v0, 0x1f48

    const/16 v1, 0x1f7a

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;-><init>(II)V

    .line 164
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/cyberplayer/utils/Z;-><init>(II[Ljava/net/InetAddress;)V

    .line 159
    return-void
.end method

.method public constructor <init>(II[Ljava/net/InetAddress;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:I

    .line 205
    iput v0, p0, Lcom/baidu/cyberplayer/utils/Z;->b:I

    .line 235
    new-instance v1, Lcom/baidu/cyberplayer/utils/ck;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/ck;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    .line 426
    new-instance v1, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->b:Lcom/baidu/cyberplayer/utils/cc;

    .line 455
    new-instance v1, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->c:Lcom/baidu/cyberplayer/utils/cc;

    .line 489
    new-instance v1, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cc;

    .line 555
    const/4 v1, 0x3

    iput v1, p0, Lcom/baidu/cyberplayer/utils/Z;->c:I

    .line 606
    new-instance v1, Lcom/baidu/cyberplayer/utils/K;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/K;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/K;

    .line 643
    new-instance v1, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->d:Lcom/baidu/cyberplayer/utils/cc;

    .line 668
    const-string v1, "/evetSub"

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Ljava/lang/String;

    .line 1003
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Ljava/lang/Object;

    .line 142
    new-instance v2, Lcom/baidu/cyberplayer/utils/aO;

    invoke-direct {v2, p3}, Lcom/baidu/cyberplayer/utils/aO;-><init>([Ljava/net/InetAddress;)V

    iput-object v2, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/aO;

    .line 143
    new-instance v2, Lcom/baidu/cyberplayer/utils/aV;

    invoke-direct {v2, p3}, Lcom/baidu/cyberplayer/utils/aV;-><init>([Ljava/net/InetAddress;)V

    iput-object v2, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/aV;

    .line 145
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(I)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/Z;->b(I)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/at;)V

    .line 149
    const-wide/16 p1, 0x3c

    invoke-virtual {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/Z;->a(J)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aq;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/Z;->a(Z)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aq;)V

    .line 155
    return-void
.end method

.method private a()Lcom/baidu/cyberplayer/utils/K;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/K;

    return-object v0
.end method

.method private a()Lcom/baidu/cyberplayer/utils/aO;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/aO;

    return-object v0
.end method

.method private a()Lcom/baidu/cyberplayer/utils/aV;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/aV;

    return-object v0
.end method

.method private a(Lcom/baidu/cyberplayer/utils/cj;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 2

    .line 291
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 292
    return-object v0

    .line 293
    :cond_0
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 294
    if-nez v1, :cond_1

    .line 295
    return-object v0

    .line 296
    :cond_1
    new-instance v0, Lcom/baidu/cyberplayer/utils/aa;

    invoke-direct {v0, p1, v1}, Lcom/baidu/cyberplayer/utils/aa;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 682
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 240
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ck;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 242
    return-void
.end method

.method private b(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 2

    .line 349
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/cj;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/Z;->c(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 354
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ck;->remove(Ljava/lang/Object;)Z

    .line 355
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 356
    return-void
.end method

.method private declared-synchronized c(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->j()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 261
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/net/URL;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/cj;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    if-nez v1, :cond_1

    .line 268
    monitor-exit p0

    return-void

    .line 269
    :cond_1
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Z;->b(Lcom/baidu/cyberplayer/utils/aa;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    :try_start_4
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->b(Ljava/lang/String;)V

    .line 285
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ca;->b(Ljava/lang/String;)V

    .line 281
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    :goto_0
    nop

    .line 287
    :goto_1
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private d(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 1

    .line 373
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    return-void

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->j()Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private h()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 247
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ck;->clear()V

    .line 248
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 249
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:I

    return v0
.end method

.method public a()J
    .locals 2

    .line 409
    iget-wide v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 318
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ck;->size()I

    move-result v0

    .line 319
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 320
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/ck;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v2

    .line 321
    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/cj;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v2

    .line 322
    if-nez v2, :cond_0

    .line 323
    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 325
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 326
    return-object v2

    .line 328
    :cond_1
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_2

    .line 330
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 331
    return-object v2

    .line 319
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_3
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 335
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ab;
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 302
    new-instance v0, Lcom/baidu/cyberplayer/utils/ab;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ab;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ck;->size()I

    move-result v1

    .line 304
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 305
    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/ck;

    invoke-virtual {v3, v2}, Lcom/baidu/cyberplayer/utils/ck;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v3

    .line 306
    invoke-direct {p0, v3}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/cj;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 307
    if-nez v3, :cond_0

    .line 308
    goto :goto_1

    .line 309
    :cond_0
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ab;->add(Ljava/lang/Object;)Z

    .line 304
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 312
    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aq;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/aq;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/at;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/at;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 6

    .line 389
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 391
    new-array v2, v1, [Lcom/baidu/cyberplayer/utils/aa;

    .line 392
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 393
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v5

    aput-object v5, v2, v4

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_0
    nop

    :goto_1
    if-ge v3, v1, :cond_2

    .line 395
    aget-object v0, v2, v3

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->d()Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expired device = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 397
    aget-object v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 394
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 400
    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:I

    .line 199
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 404
    iput-wide p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:J

    .line 405
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 9

    .line 615
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 616
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->c()V

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->o()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 620
    new-instance v0, Lcom/baidu/cyberplayer/utils/aB;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/aB;-><init>(Lcom/baidu/cyberplayer/utils/G;)V

    .line 621
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aB;->q()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aB;->d()J

    move-result-wide v3

    .line 623
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aB;->a()Lcom/baidu/cyberplayer/utils/aD;

    move-result-object v0

    .line 624
    if-nez v0, :cond_1

    return-void

    .line 625
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aD;->size()I

    move-result v7

    .line 626
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    .line 627
    invoke-virtual {v0, v8}, Lcom/baidu/cyberplayer/utils/aD;->a(I)Lcom/baidu/cyberplayer/utils/aC;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aC;->a()Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aC;->b()Ljava/lang/String;

    move-result-object v6

    .line 630
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 626
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->s()Z

    .line 633
    return-void

    .line 636
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 637
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aA;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->d:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cc;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 2

    .line 529
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 531
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->c(Lcom/baidu/cyberplayer/utils/aP;)V

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->e()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 533
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->d(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 537
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 0

    .line 360
    if-nez p1, :cond_0

    .line 361
    return-void

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->b(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 363
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;J)V
    .locals 6

    .line 807
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 809
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 810
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 811
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/ac;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 812
    goto :goto_1

    .line 813
    :cond_0
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/ac;->f()Ljava/lang/String;

    move-result-object v5

    .line 814
    invoke-virtual {p0, v4, v5, p2, p3}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/ac;Ljava/lang/String;J)Z

    move-result v5

    .line 815
    if-nez v5, :cond_1

    .line 816
    invoke-virtual {p0, v4, p2, p3}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/ac;J)Z

    .line 809
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v0

    .line 821
    nop

    :goto_2
    if-ge v2, v0, :cond_3

    .line 822
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    .line 823
    invoke-virtual {p0, v1, p2, p3}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aa;J)V

    .line 821
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 825
    :cond_3
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aq;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/aq;

    .line 851
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/as;)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cc;->add(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/at;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/at;

    .line 415
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object p1

    .line 368
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 369
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 569
    new-instance v0, Lcom/baidu/cyberplayer/utils/aS;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/aS;-><init>(Ljava/lang/String;I)V

    .line 570
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/aV;

    move-result-object p1

    .line 571
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/aV;->a(Lcom/baidu/cyberplayer/utils/aS;)Z

    .line 572
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 657
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->d:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cc;->size()I

    move-result v0

    .line 658
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 659
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/Z;->d:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/cc;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/baidu/cyberplayer/utils/aA;

    .line 660
    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/baidu/cyberplayer/utils/aA;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Z

    .line 224
    return-void
.end method

.method public a()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Z

    return v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ac;)Z
    .locals 2

    .line 711
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/ac;J)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ac;J)Z
    .locals 4

    .line 687
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 688
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->f()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/ac;Ljava/lang/String;J)Z

    move-result p1

    return p1

    .line 692
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    .line 693
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 694
    return v2

    .line 695
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->i()Ljava/lang/String;

    move-result-object v0

    .line 696
    new-instance v3, Lcom/baidu/cyberplayer/utils/aH;

    invoke-direct {v3}, Lcom/baidu/cyberplayer/utils/aH;-><init>()V

    .line 697
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0, p2, p3}, Lcom/baidu/cyberplayer/utils/aH;->a(Lcom/baidu/cyberplayer/utils/ac;Ljava/lang/String;J)V

    .line 698
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aH;->a()Lcom/baidu/cyberplayer/utils/aI;

    move-result-object p2

    .line 699
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aI;->j()Z

    move-result p3

    if-ne p3, v1, :cond_2

    .line 700
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aI;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/baidu/cyberplayer/utils/ac;->c(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aI;->d()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/baidu/cyberplayer/utils/ac;->a(J)V

    .line 702
    return v1

    .line 705
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()V

    .line 706
    return v2
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ac;Ljava/lang/String;J)Z
    .locals 2

    .line 716
    new-instance v0, Lcom/baidu/cyberplayer/utils/aH;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/aH;-><init>()V

    .line 717
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/cyberplayer/utils/aH;->b(Lcom/baidu/cyberplayer/utils/ac;Ljava/lang/String;J)V

    .line 718
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aH;->c()V

    .line 720
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aH;->a()Lcom/baidu/cyberplayer/utils/aI;

    move-result-object p2

    .line 721
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result p4

    if-ne p4, p3, :cond_1

    .line 722
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aI;->c()V

    .line 723
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aI;->j()Z

    move-result p4

    if-ne p4, p3, :cond_2

    .line 724
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aI;->k()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/baidu/cyberplayer/utils/ac;->c(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aI;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/ac;->a(J)V

    .line 726
    return p3

    .line 728
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()V

    .line 729
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 5

    .line 866
    sget-boolean p1, Lcom/baidu/cyberplayer/utils/Z;->b:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->c()Z

    .line 868
    sput-boolean p2, Lcom/baidu/cyberplayer/utils/Z;->b:Z

    .line 875
    :cond_0
    nop

    .line 876
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->b()I

    move-result p1

    .line 877
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/K;

    move-result-object v0

    const/4 v1, 0x0

    .line 878
    :goto_0
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/K;->a(I)Z

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 879
    add-int/2addr v1, v4

    .line 880
    if-ge v3, v1, :cond_1

    .line 881
    return p2

    .line 882
    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->b(I)V

    .line 883
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->b()I

    move-result p1

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/utils/K;->a(Lcom/baidu/cyberplayer/utils/H;)V

    .line 886
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/K;->b()V

    .line 892
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/aO;

    move-result-object p1

    .line 893
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aO;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 894
    return p2

    .line 895
    :cond_3
    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/utils/aO;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 896
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aO;->b()V

    .line 902
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()I

    move-result p1

    .line 903
    nop

    .line 904
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/aV;

    move-result-object v0

    const/4 v1, 0x0

    .line 905
    :goto_1
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aV;->a(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 906
    add-int/2addr v1, v4

    .line 907
    if-ge v3, v1, :cond_4

    .line 908
    return p2

    .line 909
    :cond_4
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(I)V

    .line 910
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()I

    move-result p1

    goto :goto_1

    .line 912
    :cond_5
    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/utils/aV;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 913
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aV;->b()V

    .line 919
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->b()V

    .line 920
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->e()V

    .line 921
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->c()V

    .line 922
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->d()V

    .line 928
    new-instance p1, Lcom/baidu/cyberplayer/utils/at;

    invoke-direct {p1, p0}, Lcom/baidu/cyberplayer/utils/at;-><init>(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 929
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/at;)V

    .line 930
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/at;->b()V

    .line 936
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Z

    move-result p1

    if-ne p1, v4, :cond_6

    .line 937
    new-instance p1, Lcom/baidu/cyberplayer/utils/aq;

    invoke-direct {p1, p0}, Lcom/baidu/cyberplayer/utils/aq;-><init>(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 938
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aq;)V

    .line 939
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aq;->b()V

    .line 942
    :cond_6
    return v4
.end method

.method public b()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/baidu/cyberplayer/utils/Z;->b:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 586
    const-string/jumbo v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;I)V

    .line 587
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/baidu/cyberplayer/utils/Z;->b:I

    .line 213
    return-void
.end method

.method public b(J)V
    .locals 4

    .line 829
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 831
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 832
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 833
    invoke-virtual {p0, v3, p1, p2}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aa;J)V

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 835
    :cond_0
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 1

    .line 545
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/Z;->c(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 549
    :cond_1
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cc;->size()I

    move-result v0

    .line 504
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 505
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/cc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/cyberplayer/utils/as;

    .line 506
    invoke-interface {v2, p1}, Lcom/baidu/cyberplayer/utils/as;->a(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 952
    const-string/jumbo v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/ac;)Z
    .locals 2

    .line 746
    new-instance v0, Lcom/baidu/cyberplayer/utils/aH;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/aH;-><init>()V

    .line 747
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aH;->a(Lcom/baidu/cyberplayer/utils/ac;)V

    .line 748
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aH;->a()Lcom/baidu/cyberplayer/utils/aI;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aI;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 750
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->b()V

    .line 751
    return v1

    .line 753
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 2

    .line 591
    const-string/jumbo v0, "urn:schemas-upnp-org:device:MediaServer:1"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;I)V

    .line 592
    return-void
.end method

.method public c(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cc;->size()I

    move-result v0

    .line 513
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 514
    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/Z;->a:Lcom/baidu/cyberplayer/utils/cc;

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/cc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/cyberplayer/utils/as;

    .line 515
    invoke-interface {v2, p1}, Lcom/baidu/cyberplayer/utils/as;->b(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 957
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->f()V

    .line 959
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/aO;

    move-result-object v0

    .line 960
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aO;->c()V

    .line 961
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aO;->a()V

    .line 962
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aO;->clear()V

    .line 964
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/aV;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aV;->c()V

    .line 966
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aV;->a()V

    .line 967
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aV;->clear()V

    .line 969
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/K;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/K;->c()V

    .line 971
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/K;->a()V

    .line 972
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/K;->clear()V

    .line 978
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/at;

    move-result-object v0

    .line 979
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/at;->c()V

    .line 981
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/at;)V

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/aq;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_1

    .line 990
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aq;->c()V

    .line 991
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Lcom/baidu/cyberplayer/utils/aq;)V

    .line 994
    :cond_1
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/Z;->h()V

    .line 996
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .line 595
    const-string/jumbo v0, "urn:schemas-upnp-org:service:ContentDirectory:1"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;I)V

    .line 596
    return-void
.end method

.method public d(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 7

    .line 758
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 760
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 761
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 762
    invoke-virtual {v4}, Lcom/baidu/cyberplayer/utils/ac;->a()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 763
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/Z;->b(Lcom/baidu/cyberplayer/utils/ac;)Z

    .line 760
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object p1

    .line 767
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v0

    .line 768
    nop

    :goto_1
    if-ge v2, v0, :cond_2

    .line 769
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    .line 770
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/Z;->d(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 772
    :cond_2
    return-void
.end method

.method public e()V
    .locals 2

    .line 599
    const-string/jumbo v0, "urn:schemas-upnp-org:service:AVTransport:1"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;->a(Ljava/lang/String;I)V

    .line 600
    return-void
.end method

.method public f()V
    .locals 4

    .line 776
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 778
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 779
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 780
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/Z;->d(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/Z;->c()Z

    .line 169
    return-void
.end method

.method public g()V
    .locals 2

    .line 839
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/Z;->b(J)V

    .line 840
    return-void
.end method

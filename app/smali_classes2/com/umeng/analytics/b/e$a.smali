.class Lcom/umeng/analytics/b/e$a;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/b/e;

.field private b:Lcom/umeng/analytics/d/c;

.field private c:Lcom/umeng/analytics/d/e;

.field private d:Lcom/umeng/analytics/d/r;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/b/e;Landroid/content/Context;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/umeng/analytics/b/e$a;->a:Lcom/umeng/analytics/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/umeng/analytics/b/e$a;->e:Landroid/content/Context;

    .line 297
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/c;

    .line 359
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->e(Ljava/lang/String;)Lcom/umeng/analytics/d/c;

    .line 361
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->f(Ljava/lang/String;)Lcom/umeng/analytics/d/c;

    .line 363
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->g(Ljava/lang/String;)Lcom/umeng/analytics/d/c;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    invoke-static {p1}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->c(Ljava/lang/String;)Lcom/umeng/analytics/d/c;

    .line 367
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    sget-object v1, Lcom/umeng/analytics/d/w;->a:Lcom/umeng/analytics/d/w;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->a(Lcom/umeng/analytics/d/w;)Lcom/umeng/analytics/d/c;

    .line 368
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    const-string v1, "5.2.2"

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->d(Ljava/lang/String;)Lcom/umeng/analytics/d/c;

    .line 369
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->b(Ljava/lang/String;)Lcom/umeng/analytics/d/c;

    .line 370
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    invoke-static {p1}, Lcom/umeng/common/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/c;->a(I)Lcom/umeng/analytics/d/c;

    .line 372
    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 373
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/c;->c(I)Lcom/umeng/analytics/d/c;

    .line 374
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    const-string v0, "5.2.2.1"

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/c;->d(Ljava/lang/String;)Lcom/umeng/analytics/d/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_1
    goto :goto_0

    .line 376
    :catch_0
    move-exception p1

    .line 377
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    invoke-static {}, Lcom/umeng/common/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->f(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 384
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    invoke-static {p1}, Lcom/umeng/common/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 385
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->b(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 386
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    invoke-static {p1}, Lcom/umeng/common/b;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->c(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 387
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->e(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 388
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->g(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 389
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->h(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 391
    invoke-static {p1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)[I

    move-result-object p1

    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    new-instance v1, Lcom/umeng/analytics/d/u;

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x0

    aget p1, p1, v3

    invoke-direct {v1, v2, p1}, Lcom/umeng/analytics/d/u;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/e;->a(Lcom/umeng/analytics/d/u;)Lcom/umeng/analytics/d/e;

    .line 397
    :cond_0
    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/e;->i(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 402
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/e;->j(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 403
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/d/e;->a(J)Lcom/umeng/analytics/d/e;

    .line 404
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/e;->k(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 405
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/e;->l(Ljava/lang/String;)Lcom/umeng/analytics/d/e;

    .line 406
    iget-object p1, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/e;->m(Ljava/lang/String;)Lcom/umeng/analytics/d/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_0

    .line 407
    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    :goto_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .line 414
    :try_start_0
    invoke-static {p1}, Lcom/umeng/common/b;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 416
    const-string v1, "Wi-Fi"

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    sget-object v3, Lcom/umeng/analytics/d/a;->c:Lcom/umeng/analytics/d/a;

    invoke-virtual {v1, v3}, Lcom/umeng/analytics/d/r;->a(Lcom/umeng/analytics/d/a;)Lcom/umeng/analytics/d/r;

    goto :goto_0

    .line 418
    :cond_0
    const-string v1, "2G/3G"

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    sget-object v3, Lcom/umeng/analytics/d/a;->b:Lcom/umeng/analytics/d/a;

    invoke-virtual {v1, v3}, Lcom/umeng/analytics/d/r;->a(Lcom/umeng/analytics/d/a;)Lcom/umeng/analytics/d/r;

    goto :goto_0

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    sget-object v3, Lcom/umeng/analytics/d/a;->a:Lcom/umeng/analytics/d/a;

    invoke-virtual {v1, v3}, Lcom/umeng/analytics/d/r;->a(Lcom/umeng/analytics/d/a;)Lcom/umeng/analytics/d/r;

    .line 424
    :goto_0
    const-string v1, ""

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/d/r;->e(Ljava/lang/String;)Lcom/umeng/analytics/d/r;

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    invoke-static {p1}, Lcom/umeng/common/b;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/r;->c(Ljava/lang/String;)Lcom/umeng/analytics/d/r;

    .line 430
    invoke-static {p1}, Lcom/umeng/common/b;->n(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/d/r;->b(Ljava/lang/String;)Lcom/umeng/analytics/d/r;

    .line 433
    iget-object v1, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/d/r;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/r;

    .line 434
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    invoke-static {p1}, Lcom/umeng/common/b;->m(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/r;->a(I)Lcom/umeng/analytics/d/r;

    .line 436
    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->sAge:I

    if-nez p1, :cond_3

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->sGender:Lcom/umeng/analytics/Gender;

    if-nez p1, :cond_3

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->sId:Ljava/lang/String;

    if-nez p1, :cond_3

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->sSource:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 440
    :cond_3
    new-instance p1, Lcom/umeng/analytics/d/A;

    invoke-direct {p1}, Lcom/umeng/analytics/d/A;-><init>()V

    .line 441
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sAge:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/A;->a(I)Lcom/umeng/analytics/d/A;

    .line 442
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->sGender:Lcom/umeng/analytics/Gender;

    invoke-static {v0}, Lcom/umeng/analytics/Gender;->transGender(Lcom/umeng/analytics/Gender;)Lcom/umeng/analytics/d/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/A;->a(Lcom/umeng/analytics/d/j;)Lcom/umeng/analytics/d/A;

    .line 443
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->sId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/A;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/A;

    .line 444
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->sSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/A;->b(Ljava/lang/String;)Lcom/umeng/analytics/d/A;

    .line 446
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/r;->a(Lcom/umeng/analytics/d/A;)Lcom/umeng/analytics/d/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_4
    goto :goto_1

    .line 448
    :catch_0
    move-exception p1

    .line 449
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/c;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/umeng/analytics/d/c;

    invoke-direct {v0}, Lcom/umeng/analytics/d/c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    .line 302
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b/e$a;->a(Landroid/content/Context;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->b:Lcom/umeng/analytics/d/c;

    return-object v0
.end method

.method public b()Lcom/umeng/analytics/d/e;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/umeng/analytics/d/e;

    invoke-direct {v0}, Lcom/umeng/analytics/d/e;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    .line 311
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b/e$a;->b(Landroid/content/Context;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->c:Lcom/umeng/analytics/d/e;

    return-object v0
.end method

.method public c()Lcom/umeng/analytics/d/r;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/umeng/analytics/d/r;

    invoke-direct {v0}, Lcom/umeng/analytics/d/r;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b/e$a;->c(Landroid/content/Context;)V

    .line 326
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->d:Lcom/umeng/analytics/d/r;

    return-object v0
.end method

.method public d()Lcom/umeng/analytics/d/n;
    .locals 1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/a/h;->b(Landroid/content/Context;)Lcom/umeng/analytics/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/a/f;->a()Lcom/umeng/analytics/d/n;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/umeng/analytics/d/m;
    .locals 1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/a/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d;->b()Lcom/umeng/analytics/d/m;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/umeng/analytics/d/d;
    .locals 1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/e$a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/d/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    new-instance v0, Lcom/umeng/analytics/d/d;

    invoke-direct {v0}, Lcom/umeng/analytics/d/d;-><init>()V

    return-object v0
.end method

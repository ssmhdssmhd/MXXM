.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field final a:J

.field final b:Lokhttp3/Request;

.field final c:Lokhttp3/Response;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->a:J

    iput-object p3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    invoke-virtual {p4}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    invoke-virtual {p4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_5

    invoke-virtual {p1, p3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    iput-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    iput-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    :cond_4
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a()Lokhttp3/internal/cache/CacheStrategy;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v4, v2, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto/16 :goto_9

    :cond_0
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v4, v2, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto/16 :goto_9

    :cond_1
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-static {v1, v4}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v4, v2, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto/16 :goto_9

    :cond_2
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->noCache()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    const-string v5, "If-Modified-Since"

    invoke-virtual {v4, v5}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_15

    const-string v6, "If-None-Match"

    invoke-virtual {v4, v6}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_4

    iget-wide v9, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_0

    :cond_4
    move-wide v9, v7

    :goto_0
    iget v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    const/4 v11, -0x1

    if-eq v4, v11, :cond_5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    int-to-long v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :cond_5
    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    iget-wide v14, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    sub-long/2addr v12, v14

    add-long/2addr v9, v12

    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->a:J

    iget-wide v14, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    sub-long/2addr v12, v14

    add-long/2addr v9, v12

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v12

    if-eq v12, v11, :cond_6

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v4

    int-to-long v13, v4

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    goto :goto_1

    :cond_7
    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    :goto_1
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long v12, v14, v12

    cmp-long v4, v12, v7

    if-gtz v4, :cond_b

    goto :goto_3

    :cond_8
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    goto :goto_2

    :cond_9
    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    :goto_2
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v4, v12, v7

    if-lez v4, :cond_a

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    goto :goto_4

    :cond_a
    :goto_3
    move-wide v12, v7

    :cond_b
    :goto_4
    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v4

    if-eq v4, v11, :cond_c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_c
    invoke-virtual {v1}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v4

    if-eq v4, v11, :cond_d

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    goto :goto_5

    :cond_d
    move-wide v14, v7

    :goto_5
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v16

    if-nez v16, :cond_e

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v7

    if-eq v7, v11, :cond_e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    move-wide/from16 v16, v1

    goto :goto_6

    :cond_e
    const-wide/16 v16, 0x0

    :goto_6
    invoke-virtual {v4}, Lokhttp3/CacheControl;->noCache()Z

    move-result v1

    if-nez v1, :cond_11

    add-long/2addr v14, v9

    add-long v16, v16, v12

    cmp-long v1, v14, v16

    if-gez v1, :cond_11

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    const-string v2, "Warning"

    cmp-long v3, v14, v12

    if-ltz v3, :cond_f

    const-string v3, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_f
    const-wide/32 v3, 0x5265c00

    cmp-long v5, v9, v3

    if-lez v5, :cond_10

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    if-ne v3, v11, :cond_10

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    if-nez v3, :cond_10

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_10
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v8, v1, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    move-object v1, v2

    goto :goto_9

    :cond_11
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->k:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->k:Ljava/lang/String;

    move-object v5, v6

    goto :goto_7

    :cond_12
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->g:Ljava/lang/String;

    goto :goto_7

    :cond_13
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->e:Ljava/lang/String;

    :goto_7
    iget-object v2, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v3, v2, v5, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto :goto_9

    :cond_14
    const/4 v4, 0x0

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v2, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    const/4 v8, 0x0

    invoke-direct {v1, v2, v8, v4}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto :goto_9

    :cond_15
    :goto_8
    move-object v8, v2

    const/4 v4, 0x0

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v2, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v2, v8, v4}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    :goto_9
    return-object v1
.end method

.method private static a(Lokhttp3/Request;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b()J
    .locals 7

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v3, v5, v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, v3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    div-long v0, v3, v0

    goto :goto_3

    :cond_5
    :goto_2
    move-wide v0, v1

    :goto_3
    return-wide v0
.end method

.method private c()J
    .locals 7

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    iget v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    iget-wide v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->a:J

    iget-wide v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public get()Lokhttp3/internal/cache/CacheStrategy;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v4, v3, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_0
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v4, v3, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-static {v1, v4}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v4, v3, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->noCache()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    const-string v5, "If-Modified-Since"

    invoke-virtual {v4, v5}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_15

    const-string v6, "If-None-Match"

    invoke-virtual {v4, v6}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_4

    iget-wide v9, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_1

    :cond_4
    move-wide v9, v7

    :goto_1
    iget v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    const/4 v11, -0x1

    if-eq v4, v11, :cond_5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->l:I

    int-to-long v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :cond_5
    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    iget-wide v14, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    sub-long/2addr v12, v14

    add-long/2addr v9, v12

    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->a:J

    iget-wide v14, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    sub-long/2addr v12, v14

    add-long/2addr v9, v12

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v12

    if-eq v12, v11, :cond_6

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v4

    int-to-long v13, v4

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    goto :goto_5

    :cond_6
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    goto :goto_2

    :cond_7
    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->j:J

    :goto_2
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long v12, v14, v12

    cmp-long v4, v12, v7

    if-gtz v4, :cond_b

    goto :goto_4

    :cond_8
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    goto :goto_3

    :cond_9
    iget-wide v12, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->i:J

    :goto_3
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v4, v12, v7

    if-lez v4, :cond_a

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    goto :goto_5

    :cond_a
    :goto_4
    move-wide v12, v7

    :cond_b
    :goto_5
    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v4

    if-eq v4, v11, :cond_c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_c
    invoke-virtual {v1}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v4

    if-eq v4, v11, :cond_d

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    goto :goto_6

    :cond_d
    move-wide v14, v7

    :goto_6
    iget-object v4, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v16

    if-nez v16, :cond_e

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v7

    if-eq v7, v11, :cond_e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    move-wide/from16 v16, v1

    goto :goto_7

    :cond_e
    const-wide/16 v16, 0x0

    :goto_7
    invoke-virtual {v4}, Lokhttp3/CacheControl;->noCache()Z

    move-result v1

    if-nez v1, :cond_11

    add-long/2addr v14, v9

    add-long v16, v16, v12

    cmp-long v1, v14, v16

    if-gez v1, :cond_11

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    const-string v2, "Warning"

    cmp-long v3, v14, v12

    if-ltz v3, :cond_f

    const-string v3, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_f
    const-wide/32 v3, 0x5265c00

    cmp-long v5, v9, v3

    if-lez v5, :cond_10

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    if-ne v3, v11, :cond_10

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->h:Ljava/util/Date;

    if-nez v3, :cond_10

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_10
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v3, v1, v8}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_11
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->k:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->k:Ljava/lang/String;

    move-object v5, v6

    goto :goto_8

    :cond_12
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->f:Ljava/util/Date;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->g:Ljava/lang/String;

    goto :goto_8

    :cond_13
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->d:Ljava/util/Date;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->e:Ljava/lang/String;

    :goto_8
    iget-object v2, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v3, v2, v5, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    iget-object v3, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->c:Lokhttp3/Response;

    const/4 v8, 0x0

    invoke-direct {v1, v2, v3, v8}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    const/4 v3, 0x0

    goto :goto_a

    :cond_14
    const/4 v8, 0x0

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v2, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v8}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v8, 0x0

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v2, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-direct {v1, v2, v3, v8}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    :goto_a
    iget-object v2, v1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->b:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v1, v3, v3, v8}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;B)V

    :cond_16
    return-object v1
.end method

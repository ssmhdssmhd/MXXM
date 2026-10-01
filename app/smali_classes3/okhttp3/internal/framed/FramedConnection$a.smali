.class final Lokhttp3/internal/framed/FramedConnection$a;
.super Lokhttp3/internal/NamedRunnable;

# interfaces
.implements Lokhttp3/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lokhttp3/internal/framed/FrameReader;

.field final synthetic c:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$a;->a:Lokhttp3/internal/framed/FrameReader;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection$a;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;)V

    return-void
.end method

.method private a(Lokhttp3/internal/framed/Settings;)V
    .locals 5

    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/framed/k;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/framed/k;-><init>(Lokhttp3/internal/framed/FramedConnection$a;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final ackSettings()V
    .locals 0

    return-void
.end method

.method public final alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public final data(ZILokio/BufferedSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3, p4, p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/framed/FramedStream;->a(Lokio/BufferedSource;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final execute()V
    .locals 4

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v2, v2, Lokhttp3/internal/framed/FramedConnection;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v2}, Lokhttp3/internal/framed/FrameReader;->readConnectionPreface()V

    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lokhttp3/internal/framed/FrameReader;->nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    :goto_0
    invoke-static {v2, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v3, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->a:Lokhttp3/internal/framed/FrameReader;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public final goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 3

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    iget-object p2, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p3}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lokhttp3/internal/framed/FramedStream;

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->i(Lokhttp3/internal/framed/FramedConnection;)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p4, p3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p1, p3, p5, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V

    goto/16 :goto_1

    :cond_0
    iget-object p4, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p4

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result p6

    if-eqz p6, :cond_2

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    sget-object p2, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, p3, p2}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    goto :goto_0

    :cond_2
    iget-object p6, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p6}, Lokhttp3/internal/framed/FramedConnection;->c(Lokhttp3/internal/framed/FramedConnection;)I

    move-result p6

    if-gt p3, p6, :cond_3

    goto :goto_0

    :cond_3
    rem-int/lit8 p6, p3, 0x2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->d(Lokhttp3/internal/framed/FramedConnection;)I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-ne p6, v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v2, Lokhttp3/internal/framed/FramedStream;

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    move v5, p1

    move v6, p2

    move v3, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p1, v3}, Lokhttp3/internal/framed/FramedConnection;->b(Lokhttp3/internal/framed/FramedConnection;I)I

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lokhttp3/internal/framed/i;

    const-string p3, "OkHttp %s stream %d"

    iget-object p5, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p5}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object p5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 p5, 0x1

    aput-object p6, v0, p5

    invoke-direct {p2, p0, p3, v0, v2}, Lokhttp3/internal/framed/i;-><init>(Lokhttp3/internal/framed/FramedConnection$a;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    move v6, p2

    move v3, p3

    move-object v7, p5

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p6}, Lokhttp3/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {p1, v3}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v7, p6}, Lokhttp3/internal/framed/FramedStream;->a(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->a()V

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final ping(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p1, p2}, Lokhttp3/internal/framed/FramedConnection;->c(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/internal/framed/Ping;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public final pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V

    return-void
.end method

.method public final rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final settings(ZLokhttp3/internal/framed/Settings;)V
    .locals 10

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v1}, Lokhttp3/internal/framed/Settings;->e()I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object p1, p1, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->a()V

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object p1, p1, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {p1, p2}, Lokhttp3/internal/framed/Settings;->a(Lokhttp3/internal/framed/Settings;)V

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object p1

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v2, Lokhttp3/internal/framed/k;

    const-string v5, "OkHttp %s ACK Settings"

    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v6}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-direct {v2, p0, v5, v7, p2}, Lokhttp3/internal/framed/k;-><init>(Lokhttp3/internal/framed/FramedConnection$a;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object p1, p1, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->e()I

    move-result p1

    const/4 p2, -0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    if-eq p1, p2, :cond_4

    if-eq p1, v1, :cond_4

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->g(Lokhttp3/internal/framed/FramedConnection;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-wide v7, v1, Lokhttp3/internal/framed/FramedConnection;->d:J

    add-long/2addr v7, p1

    iput-wide v7, v1, Lokhttp3/internal/framed/FramedConnection;->d:J

    cmp-long v7, p1, v5

    if-lez v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->h(Lokhttp3/internal/framed/FramedConnection;)Z

    :cond_3
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedConnection;->e(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Lokhttp3/internal/framed/FramedStream;

    goto :goto_0

    :cond_4
    move-wide p1, v5

    :cond_5
    :goto_0
    invoke-static {}, Lokhttp3/internal/framed/FramedConnection;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v7, Lokhttp3/internal/framed/j;

    const-string v8, "OkHttp %s settings"

    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v9}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v3

    invoke-direct {v7, p0, v8, v4}, Lokhttp3/internal/framed/j;-><init>(Lokhttp3/internal/framed/FramedConnection$a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_6

    cmp-long v0, p1, v5

    if-eqz v0, :cond_6

    array-length v0, v2

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v1, v2, v3

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/framed/FramedStream;->a(J)V

    monitor-exit v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final windowUpdate(IJ)V
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    if-nez p1, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-wide v1, p1, Lokhttp3/internal/framed/FramedConnection;->d:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lokhttp3/internal/framed/FramedConnection;->d:J

    iget-object p1, p0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/FramedConnection;->a(I)Lokhttp3/internal/framed/FramedStream;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/framed/FramedStream;->a(J)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

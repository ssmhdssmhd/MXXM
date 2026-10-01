.class final Lokhttp3/internal/framed/FramedStream$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final c:J = 0x4000L


# instance fields
.field final synthetic b:Lokhttp3/internal/framed/FramedStream;

.field private final d:Lokio/Buffer;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/framed/FramedStream;

    const/4 v0, 0x1

    sput-boolean v0, Lokhttp3/internal/framed/FramedStream$a;->a:Z

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    return-void
.end method

.method private a(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$a;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->e(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->h(Lokhttp3/internal/framed/FramedStream;)V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    sub-long/2addr v2, v10

    iput-wide v2, v0, Lokhttp3/internal/framed/FramedStream;->b:J

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->enter()V

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v6

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/FramedStream;)I

    move-result v7

    if-eqz p1, :cond_1

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v10, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual/range {v6 .. v11}, Lokhttp3/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p1}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$a;)Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$a;->f:Z

    return p0
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$a;->f:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedStream$a;)Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$a;->e:Z

    return p0
.end method


# virtual methods
.method public final close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$a;->e:Z

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    iget-boolean v0, v0, Lokhttp3/internal/framed/FramedStream$a;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/FramedStream$a;->a(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/FramedStream;)I

    move-result v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V

    :cond_4
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$a;->e:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->f(Lokhttp3/internal/framed/FramedStream;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->h(Lokhttp3/internal/framed/FramedStream;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Z)V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_1
    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream$a;->d:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream$a;->a(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

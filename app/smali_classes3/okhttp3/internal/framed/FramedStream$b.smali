.class final Lokhttp3/internal/framed/FramedStream$b;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lokhttp3/internal/framed/FramedStream;

.field private final c:Lokio/Buffer;

.field private final d:Lokio/Buffer;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/framed/FramedStream;

    const/4 v0, 0x1

    sput-boolean v0, Lokhttp3/internal/framed/FramedStream$b;->a:Z

    return-void
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedStream;J)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$b;->c:Lokio/Buffer;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    iput-wide p2, p0, Lokhttp3/internal/framed/FramedStream$b;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedStream;JB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedStream$b;-><init>(Lokhttp3/internal/framed/FramedStream;J)V

    return-void
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->enter()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$b;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->e(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$b;)Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$b;->g:Z

    return p0
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$b;->g:Z

    return p1
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedStream$b;)Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/framed/FramedStream$b;->f:Z

    return p0
.end method


# virtual methods
.method final a(Lokio/BufferedSource;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream$b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

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
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedStream$b;->g:Z

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/framed/FramedStream$b;->e:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    sget-object p2, Lokhttp3/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, p2}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->c:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    sub-long/2addr p2, v2

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$b;->c:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v8, :cond_6

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$b;->f:Z

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->f(Lokhttp3/internal/framed/FramedStream;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream$b;->a()V

    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedStream$b;->f:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    monitor-exit v2

    const-wide/16 p1, -0x1

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$b;->d:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v3, p3, Lokhttp3/internal/framed/FramedStream;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lokhttp3/internal/framed/FramedStream;->a:J

    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v3, p3, Lokhttp3/internal/framed/FramedStream;->a:J

    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object p3

    iget-object p3, p3, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    invoke-virtual {p3}, Lokhttp3/internal/framed/Settings;->e()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object p3

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/FramedStream;)I

    move-result v3

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    iget-wide v4, v4, Lokhttp3/internal/framed/FramedStream;->a:J

    invoke-virtual {p3, v3, v4, v5}, Lokhttp3/internal/framed/FramedConnection;->a(IJ)V

    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    iput-wide v0, p3, Lokhttp3/internal/framed/FramedStream;->a:J

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object p3

    monitor-enter p3

    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v3, v2, Lokhttp3/internal/framed/FramedConnection;->c:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lokhttp3/internal/framed/FramedConnection;->c:J

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v2, v2, Lokhttp3/internal/framed/FramedConnection;->c:J

    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v4}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v4

    iget-object v4, v4, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v4}, Lokhttp3/internal/framed/Settings;->e()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v3

    iget-wide v3, v3, Lokhttp3/internal/framed/FramedConnection;->c:J

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lokhttp3/internal/framed/FramedConnection;->a(IJ)V

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iput-wide v0, v2, Lokhttp3/internal/framed/FramedConnection;->c:J

    :cond_2
    monitor-exit p3

    :goto_0
    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :try_start_2
    new-instance p1, Lokhttp3/internal/framed/StreamResetException;

    iget-object p2, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {p2}, Lokhttp3/internal/framed/FramedStream;->d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object p2

    invoke-direct {p1, p2}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$b;->b:Lokhttp3/internal/framed/FramedStream;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;

    move-result-object v0

    return-object v0
.end method

.class public final Lokhttp3/internal/framed/FramedStream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedStream$a;,
        Lokhttp3/internal/framed/FramedStream$b;,
        Lokhttp3/internal/framed/FramedStream$c;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field a:J

.field b:J

.field final c:Lokhttp3/internal/framed/FramedStream$a;

.field private final e:I

.field private final f:Lokhttp3/internal/framed/FramedConnection;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lokhttp3/internal/framed/FramedStream$b;

.field private final j:Lokhttp3/internal/framed/FramedStream$c;

.field private final k:Lokhttp3/internal/framed/FramedStream$c;

.field private l:Lokhttp3/internal/framed/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    return-void
.end method

.method constructor <init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->a:J

    new-instance v0, Lokhttp3/internal/framed/FramedStream$c;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$c;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$c;

    new-instance v0, Lokhttp3/internal/framed/FramedStream$c;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/FramedStream$c;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->k:Lokhttp3/internal/framed/FramedStream$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    iput p1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    iput-object p2, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget-object p1, p2, Lokhttp3/internal/framed/FramedConnection;->f:Lokhttp3/internal/framed/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->e()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->b:J

    new-instance p1, Lokhttp3/internal/framed/FramedStream$b;

    iget-object p2, p2, Lokhttp3/internal/framed/FramedConnection;->e:Lokhttp3/internal/framed/Settings;

    invoke-virtual {p2}, Lokhttp3/internal/framed/Settings;->e()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, v1, p2}, Lokhttp3/internal/framed/FramedStream$b;-><init>(Lokhttp3/internal/framed/FramedStream;JB)V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    new-instance p1, Lokhttp3/internal/framed/FramedStream$a;

    invoke-direct {p1, p0}, Lokhttp3/internal/framed/FramedStream$a;-><init>(Lokhttp3/internal/framed/FramedStream;)V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {p1, p4}, Lokhttp3/internal/framed/FramedStream$b;->a(Lokhttp3/internal/framed/FramedStream$b;Z)Z

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {p1, p3}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;Z)Z

    iput-object p5, p0, Lokhttp3/internal/framed/FramedStream;->g:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    return-object p0
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedStream;)I
    .locals 0

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    return p0
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$b;->a(Lokhttp3/internal/framed/FramedStream$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$b;->b(Lokhttp3/internal/framed/FramedStream$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->b(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lokhttp3/internal/framed/ErrorCode;)Z
    .locals 1

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-eqz v0, :cond_2

    :goto_1
    monitor-exit p0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$b;->a(Lokhttp3/internal/framed/FramedStream$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    const/4 p1, 0x1

    :goto_3
    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method static synthetic c(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$c;

    return-object p0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->b(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    return-object p0
.end method

.method private d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method static synthetic e(Lokhttp3/internal/framed/FramedStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->d()V

    return-void
.end method

.method static synthetic f(Lokhttp3/internal/framed/FramedStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$b;->a(Lokhttp3/internal/framed/FramedStream$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$b;->b(Lokhttp3/internal/framed/FramedStream$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->b(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget p0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, p0}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic g(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$c;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->k:Lokhttp3/internal/framed/FramedStream$c;

    return-object p0
.end method

.method static synthetic h(Lokhttp3/internal/framed/FramedStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->b(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object p0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a()V
    .locals 2

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lokhttp3/internal/framed/FramedStream$b;->a(Lokhttp3/internal/framed/FramedStream$b;Z)Z

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final a(J)V
    .locals 3

    iget-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedStream;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method final a(Ljava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lokhttp3/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->STREAM_IN_USE:Lokhttp3/internal/framed/ErrorCode;

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget p2, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {p1, p2}, Lokhttp3/internal/framed/FramedConnection;->b(I)Lokhttp3/internal/framed/FramedStream;

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Lokio/BufferedSource;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokhttp3/internal/framed/FramedStream$b;->a(Lokio/BufferedSource;J)V

    return-void
.end method

.method public final close(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->b(ILokhttp3/internal/framed/ErrorCode;)V

    :goto_0
    return-void
.end method

.method public final closeLater(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 2

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedStream;->b(Lokhttp3/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/framed/FramedConnection;->a(ILokhttp3/internal/framed/ErrorCode;)V

    :goto_0
    return-void
.end method

.method public final getConnection()Lokhttp3/internal/framed/FramedConnection;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    return-object v0
.end method

.method public final getErrorCode()Lokhttp3/internal/framed/ErrorCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    return v0
.end method

.method public final getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getResponseHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$c;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$c;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_3
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$c;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$c;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final getSink()Lokio/Sink;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lokhttp3/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getSource()Lokio/Source;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    return-object v0
.end method

.method public final isLocallyInitiated()Z
    .locals 4

    iget v0, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lokhttp3/internal/framed/FramedConnection;->b:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isOpen()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->l:Lokhttp3/internal/framed/ErrorCode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$b;->a(Lokhttp3/internal/framed/FramedStream$b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->i:Lokhttp3/internal/framed/FramedStream$b;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$b;->b(Lokhttp3/internal/framed/FramedStream$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream$a;->b(Lokhttp3/internal/framed/FramedStream$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final readTimeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->j:Lokhttp3/internal/framed/FramedStream$c;

    return-object v0
.end method

.method public final reply(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/framed/FramedStream;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    monitor-enter p0

    if-eqz p1, :cond_5

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-nez v0, :cond_4

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream;->h:Ljava/util/List;

    if-nez p2, :cond_2

    iget-object p2, p0, Lokhttp3/internal/framed/FramedStream;->c:Lokhttp3/internal/framed/FramedStream$a;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lokhttp3/internal/framed/FramedStream$a;->a(Lokhttp3/internal/framed/FramedStream$a;Z)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    iget v1, p0, Lokhttp3/internal/framed/FramedStream;->e:I

    iget-object p2, p2, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {p2, v0, v1, p1}, Lokhttp3/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    if-eqz v0, :cond_3

    iget-object p1, p0, Lokhttp3/internal/framed/FramedStream;->f:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->flush()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "reply already sent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "responseHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final writeTimeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream;->k:Lokhttp3/internal/framed/FramedStream$c;

    return-object v0
.end method

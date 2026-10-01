.class final Lokhttp3/internal/framed/i;
.super Lokhttp3/internal/NamedRunnable;


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/FramedStream;

.field final synthetic c:Lokhttp3/internal/framed/FramedConnection$a;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$a;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/i;->c:Lokhttp3/internal/framed/FramedConnection$a;

    iput-object p4, p0, Lokhttp3/internal/framed/i;->a:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/i;->c:Lokhttp3/internal/framed/FramedConnection$a;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->f(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/i;->a:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection$Listener;->onStream(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FramedConnection.Listener failure for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/internal/framed/i;->c:Lokhttp3/internal/framed/FramedConnection$a;

    iget-object v3, v3, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v3}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/i;->a:Lokhttp3/internal/framed/FramedStream;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    return-void
.end method

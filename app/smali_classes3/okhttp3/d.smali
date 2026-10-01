.class final Lokhttp3/d;
.super Lokio/ForwardingSink;


# instance fields
.field final synthetic a:Lokhttp3/Cache;

.field final synthetic b:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic c:Lokhttp3/Cache$a;


# direct methods
.method constructor <init>(Lokhttp3/Cache$a;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/d;->c:Lokhttp3/Cache$a;

    iput-object p3, p0, Lokhttp3/d;->a:Lokhttp3/Cache;

    iput-object p4, p0, Lokhttp3/d;->b:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/d;->c:Lokhttp3/Cache$a;

    iget-object v0, v0, Lokhttp3/Cache$a;->a:Lokhttp3/Cache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lokhttp3/d;->c:Lokhttp3/Cache$a;

    invoke-static {v1}, Lokhttp3/Cache$a;->a(Lokhttp3/Cache$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lokhttp3/d;->c:Lokhttp3/Cache$a;

    invoke-static {v1}, Lokhttp3/Cache$a;->b(Lokhttp3/Cache$a;)Z

    iget-object v1, p0, Lokhttp3/d;->c:Lokhttp3/Cache$a;

    iget-object v1, v1, Lokhttp3/Cache$a;->a:Lokhttp3/Cache;

    invoke-static {v1}, Lokhttp3/Cache;->c(Lokhttp3/Cache;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    iget-object v0, p0, Lokhttp3/d;->b:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

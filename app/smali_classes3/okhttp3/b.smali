.class final Lokhttp3/b;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/cache/InternalCache;


# instance fields
.field final synthetic a:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/b;->a:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/b;->a:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public final put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/b;->a:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Cache;Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Lokhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/b;->a:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Cache;Lokhttp3/Request;)V

    return-void
.end method

.method public final trackConditionalCacheHit()V
    .locals 1

    iget-object v0, p0, Lokhttp3/b;->a:Lokhttp3/Cache;

    invoke-static {v0}, Lokhttp3/Cache;->a(Lokhttp3/Cache;)V

    return-void
.end method

.method public final trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/b;->a:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->a(Lokhttp3/Cache;Lokhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public final update(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 0

    invoke-static {p1, p2}, Lokhttp3/Cache;->a(Lokhttp3/Response;Lokhttp3/Response;)V

    return-void
.end method

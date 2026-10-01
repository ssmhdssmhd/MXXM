.class final Lokhttp3/internal/framed/p;
.super Lokio/ForwardingSource;


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/o;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/o;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/p;->a:Lokhttp3/internal/framed/o;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public final read(Lokio/Buffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/p;->a:Lokhttp3/internal/framed/o;

    invoke-static {v0}, Lokhttp3/internal/framed/o;->a(Lokhttp3/internal/framed/o;)I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/p;->a:Lokhttp3/internal/framed/o;

    invoke-static {v0}, Lokhttp3/internal/framed/o;->a(Lokhttp3/internal/framed/o;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lokhttp3/internal/framed/p;->a:Lokhttp3/internal/framed/o;

    iget-object v0, p0, Lokhttp3/internal/framed/p;->a:Lokhttp3/internal/framed/o;

    invoke-static {v0}, Lokhttp3/internal/framed/o;->a(Lokhttp3/internal/framed/o;)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p3, v1}, Lokhttp3/internal/framed/o;->a(Lokhttp3/internal/framed/o;I)I

    move-wide v1, p1

    :cond_1
    :goto_0
    return-wide v1
.end method

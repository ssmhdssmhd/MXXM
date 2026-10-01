.class abstract Lokhttp3/internal/huc/d;
.super Lokhttp3/RequestBody;


# instance fields
.field private a:Lokio/Timeout;

.field private b:J

.field c:Z

.field private d:Ljava/io/OutputStream;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lokio/BufferedSink;J)V
    .locals 1

    invoke-interface {p1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/huc/d;->a:Lokio/Timeout;

    iput-wide p2, p0, Lokhttp3/internal/huc/d;->b:J

    new-instance v0, Lokhttp3/internal/huc/e;

    invoke-direct {v0, p0, p2, p3, p1}, Lokhttp3/internal/huc/e;-><init>(Lokhttp3/internal/huc/d;JLokio/BufferedSink;)V

    iput-object v0, p0, Lokhttp3/internal/huc/d;->d:Ljava/io/OutputStream;

    return-void
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lokhttp3/internal/huc/d;->b:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/internal/huc/d;->c:Z

    return v0
.end method

.method public final outputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/huc/d;->d:Ljava/io/OutputStream;

    return-object v0
.end method

.method public prepareToSendRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/huc/d;->a:Lokio/Timeout;

    return-object v0
.end method

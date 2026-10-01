.class final Lokhttp3/internal/framed/Http2$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    return-void
.end method

.method private a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-static {v1}, Lokhttp3/internal/framed/Http2;->a(Lokio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/framed/Http2$a;->d:I

    iput v1, p0, Lokhttp3/internal/framed/Http2$a;->a:I

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lokhttp3/internal/framed/Http2$a;->b:B

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v2

    iget v4, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    iget v5, p0, Lokhttp3/internal/framed/Http2$a;->a:I

    iget-byte v6, p0, Lokhttp3/internal/framed/Http2$a;->b:B

    invoke-static {v3, v4, v5, v1, v6}, Lokhttp3/internal/framed/Http2$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    const/16 v2, 0x9

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    iget v1, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "%s != TYPE_CONTINUATION"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lokhttp3/internal/framed/Http2$a;->d:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    iget-short v3, p0, Lokhttp3/internal/framed/Http2$a;->e:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    const/4 v0, 0x0

    int-to-short v3, v0

    iput-short v3, p0, Lokhttp3/internal/framed/Http2$a;->e:S

    iget-byte v3, p0, Lokhttp3/internal/framed/Http2$a;->b:B

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-static {v2}, Lokhttp3/internal/framed/Http2;->a(Lokio/BufferedSource;)I

    move-result v2

    iput v2, p0, Lokhttp3/internal/framed/Http2$a;->d:I

    iput v2, p0, Lokhttp3/internal/framed/Http2$a;->a:I

    iget-object v2, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lokhttp3/internal/framed/Http2$a;->b:B

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v3

    iget v5, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    iget v6, p0, Lokhttp3/internal/framed/Http2$a;->a:I

    iget-byte v7, p0, Lokhttp3/internal/framed/Http2$a;->b:B

    invoke-static {v4, v5, v6, v2, v7}, Lokhttp3/internal/framed/Http2$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v5, 0x7fffffff

    and-int/2addr v3, v5

    iput v3, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    iget v2, p0, Lokhttp3/internal/framed/Http2$a;->c:I

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "TYPE_CONTINUATION streamId changed"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%s != TYPE_CONTINUATION"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    iget v3, p0, Lokhttp3/internal/framed/Http2$a;->d:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-eqz p3, :cond_5

    iget p3, p0, Lokhttp3/internal/framed/Http2$a;->d:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lokhttp3/internal/framed/Http2$a;->d:I

    move-wide v1, p1

    :cond_5
    :goto_1
    return-wide v1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$a;->f:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

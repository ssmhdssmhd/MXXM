.class final Lokhttp3/internal/framed/Spdy3$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Z

.field private final c:Lokhttp3/internal/framed/o;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    new-instance p1, Lokhttp3/internal/framed/o;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-direct {p1, v0}, Lokhttp3/internal/framed/o;-><init>(Lokio/BufferedSource;)V

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$a;->b:Z

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7fffffff

    and-int/2addr p2, v0

    invoke-interface {p1, p2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {v2, p3}, Lokhttp3/internal/framed/o;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p3, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const p2, 0x7fffffff

    and-int v6, v0, p2

    and-int v7, v1, p2

    sget-object v9, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private b(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v0, p2}, Lokhttp3/internal/framed/o;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private b(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v1, p3}, Lokhttp3/internal/framed/o;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v7

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_0
    const p2, 0x7fffffff

    and-int v5, v0, p2

    const/4 v6, -0x1

    sget-object v8, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private c(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    and-int/2addr p2, v3

    invoke-interface {p1, p2, v4, v5}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "windowSizeIncrement was 0"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private c(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_2

    new-instance p3, Lokhttp3/internal/framed/Settings;

    invoke-direct {p3}, Lokhttp3/internal/framed/Settings;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v5, v4

    const/high16 v6, -0x1000000

    and-int/2addr v4, v6

    ushr-int/lit8 v4, v4, 0x18

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    invoke-virtual {p3, v5, v4, v6}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/2addr p2, v2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v2, p3}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    return-void

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v3

    aput-object p2, p3, v2

    const-string p1, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p1, p3}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private d(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$a;->b:Z

    and-int/lit8 v3, p2, 0x1

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v2, p2, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_PING length: %d != 4"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private e(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7fffffff

    and-int/2addr p2, v0

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, p2, v3, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_GOAWAY length: %d != 8"

    invoke-static {p1, p2}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    invoke-virtual {v0}, Lokhttp3/internal/framed/o;->close()V

    return-void
.end method

.method public final nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v4, -0x80000000

    and-int/2addr v4, v0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v3, v6

    const v6, 0x7fffffff

    if-eqz v4, :cond_e

    const/high16 v4, 0x7fff0000

    and-int/2addr v4, v0

    ushr-int/lit8 v4, v4, 0x10

    const/4 v7, 0x3

    if-ne v4, v7, :cond_d

    const v4, 0xffff

    and-int/2addr v0, v4

    const/16 v4, 0x8

    const/4 v7, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    int-to-long v1, v3

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_6

    :pswitch_1
    if-ne v3, v4, :cond_2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/2addr v3, v6

    int-to-long v3, v3

    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    if-eqz v5, :cond_1

    and-int/2addr v0, v6

    invoke-interface {p1, v0, v3, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    goto/16 :goto_6

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_2
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    and-int v4, v0, v6

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    sub-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lokhttp3/internal/framed/o;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1
    move-object v1, p1

    :goto_2
    invoke-interface/range {v1 .. v7}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    goto/16 :goto_6

    :pswitch_3
    if-ne v3, v4, :cond_4

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    invoke-static {v3}, Lokhttp3/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v4

    if-eqz v4, :cond_3

    and-int/2addr v0, v6

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, v0, v4, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_4
    if-ne v3, v7, :cond_7

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$a;->b:Z

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v8, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-interface {p1, v3, v0, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    goto/16 :goto_6

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "TYPE_PING length: %d != 4"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_5
    invoke-direct {p0, p1, v5, v3}, Lokhttp3/internal/framed/Spdy3$a;->c(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto/16 :goto_6

    :pswitch_6
    if-ne v3, v4, :cond_9

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    invoke-static {v3}, Lokhttp3/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v4

    if-eqz v4, :cond_8

    and-int/2addr v0, v6

    invoke-interface {p1, v0, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_7
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    sub-int/2addr v3, v7

    invoke-virtual {v4, v3}, Lokhttp3/internal/framed/o;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v3

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    :cond_a
    and-int v4, v0, v6

    const/4 v5, -0x1

    sget-object v7, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    move-object v6, v3

    move v3, v2

    const/4 v2, 0x0

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readShort()S

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$a;->c:Lokhttp3/internal/framed/o;

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {v4, v3}, Lokhttp3/internal/framed/o;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v3

    and-int/lit8 v4, v5, 0x1

    move-object v6, v3

    if-eqz v4, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    const v4, 0x7fffffff

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_c

    const/4 v2, 0x1

    :cond_c
    and-int/2addr v0, v4

    and-int v5, v1, v4

    sget-object v7, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    move-object v1, p1

    move v4, v0

    goto/16 :goto_2

    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version != 3: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const v4, 0x7fffffff

    and-int/2addr v5, v8

    if-eqz v5, :cond_f

    const/4 v2, 0x1

    :cond_f
    and-int/2addr v0, v4

    iget-object v4, p0, Lokhttp3/internal/framed/Spdy3$a;->a:Lokio/BufferedSource;

    invoke-interface {p1, v2, v0, v4, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    :goto_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final readConnectionPreface()V
    .locals 0

    return-void
.end method

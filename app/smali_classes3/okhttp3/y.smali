.class final Lokhttp3/y;
.super Lokhttp3/ResponseBody;


# instance fields
.field final synthetic a:Lokhttp3/MediaType;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/y;->a:Lokhttp3/MediaType;

    iput-wide p2, p0, Lokhttp3/y;->b:J

    iput-object p4, p0, Lokhttp3/y;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/y;->b:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->a:Lokhttp3/MediaType;

    return-object v0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->c:Lokio/BufferedSource;

    return-object v0
.end method

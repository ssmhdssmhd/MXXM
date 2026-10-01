.class final Lokhttp3/internal/framed/q;
.super Ljava/util/zip/Inflater;


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/o;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/o;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/q;->a:Lokhttp3/internal/framed/o;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/framed/q;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lokhttp3/internal/framed/Spdy3;->m:[B

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/q;->setDictionary([B)V

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_0
    return v0
.end method

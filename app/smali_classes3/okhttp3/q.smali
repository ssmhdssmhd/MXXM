.class final Lokhttp3/q;
.super Ljava/net/URLStreamHandler;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lokhttp3/OkUrlFactory;


# direct methods
.method constructor <init>(Lokhttp3/OkUrlFactory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/q;->b:Lokhttp3/OkUrlFactory;

    iput-object p2, p0, Lokhttp3/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getDefaultPort()I
    .locals 2

    iget-object v0, p0, Lokhttp3/q;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/q;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected final openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    iget-object v0, p0, Lokhttp3/q;->b:Lokhttp3/OkUrlFactory;

    invoke-virtual {v0, p1}, Lokhttp3/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method protected final openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1

    iget-object v0, p0, Lokhttp3/q;->b:Lokhttp3/OkUrlFactory;

    invoke-virtual {v0, p1, p2}, Lokhttp3/OkUrlFactory;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.class final Lokhttp3/r$a;
.super Lokhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/r;

.field private final c:Lokhttp3/Callback;


# direct methods
.method private constructor <init>(Lokhttp3/r;Lokhttp3/Callback;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-virtual {p1}, Lokhttp3/r;->c()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp3/r$a;->c:Lokhttp3/Callback;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/r;Lokhttp3/Callback;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lokhttp3/r$a;-><init>(Lokhttp3/r;Lokhttp3/Callback;)V

    return-void
.end method

.method private b()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    iget-object v0, v0, Lokhttp3/r;->a:Lokhttp3/Request;

    return-object v0
.end method

.method private c()Lokhttp3/r;
    .locals 1

    iget-object v0, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    iget-object v0, v0, Lokhttp3/r;->a:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-static {v0}, Lokhttp3/r;->a(Lokhttp3/r;)Lokhttp3/Response;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-static {v1}, Lokhttp3/r;->b(Lokhttp3/r;)Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lokhttp3/r$a;->c:Lokhttp3/Callback;

    iget-object v1, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lokhttp3/r$a;->c:Lokhttp3/Callback;

    iget-object v2, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-interface {v1, v2, v0}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Callback failure for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-static {v3}, Lokhttp3/r;->c(Lokhttp3/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lokhttp3/r$a;->c:Lokhttp3/Callback;

    iget-object v2, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-interface {v1, v2, v0}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v0, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-static {v0}, Lokhttp3/r;->d(Lokhttp3/r;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/r$a;)V

    return-void

    :goto_2
    iget-object v1, p0, Lokhttp3/r$a;->a:Lokhttp3/r;

    invoke-static {v1}, Lokhttp3/r;->d(Lokhttp3/r;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/r$a;)V

    throw v0
.end method

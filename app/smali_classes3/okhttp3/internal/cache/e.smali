.class final Lokhttp3/internal/cache/e;
.super Lokhttp3/internal/cache/i;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/cache/DiskLruCache;

    const/4 v0, 0x1

    sput-boolean v0, Lokhttp3/internal/cache/e;->a:Z

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/cache/e;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lokhttp3/internal/cache/i;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    sget-boolean v0, Lokhttp3/internal/cache/e;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/cache/e;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/cache/e;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->i(Lokhttp3/internal/cache/DiskLruCache;)Z

    return-void
.end method

.class final Lokhttp3/internal/framed/c;
.super Lokhttp3/internal/NamedRunnable;


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lokhttp3/internal/framed/Ping;

.field final synthetic f:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/Ping;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/c;->f:Lokhttp3/internal/framed/FramedConnection;

    iput-boolean p4, p0, Lokhttp3/internal/framed/c;->a:Z

    iput p5, p0, Lokhttp3/internal/framed/c;->c:I

    iput p6, p0, Lokhttp3/internal/framed/c;->d:I

    iput-object p7, p0, Lokhttp3/internal/framed/c;->e:Lokhttp3/internal/framed/Ping;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->f:Lokhttp3/internal/framed/FramedConnection;

    iget-boolean v1, p0, Lokhttp3/internal/framed/c;->a:Z

    iget v2, p0, Lokhttp3/internal/framed/c;->c:I

    iget v3, p0, Lokhttp3/internal/framed/c;->d:I

    iget-object v4, p0, Lokhttp3/internal/framed/c;->e:Lokhttp3/internal/framed/Ping;

    invoke-static {v0, v1, v2, v3, v4}, Lokhttp3/internal/framed/FramedConnection;->a(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

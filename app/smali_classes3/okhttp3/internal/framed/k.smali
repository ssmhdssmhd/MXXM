.class final Lokhttp3/internal/framed/k;
.super Lokhttp3/internal/NamedRunnable;


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/Settings;

.field final synthetic c:Lokhttp3/internal/framed/FramedConnection$a;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$a;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/k;->c:Lokhttp3/internal/framed/FramedConnection$a;

    iput-object p4, p0, Lokhttp3/internal/framed/k;->a:Lokhttp3/internal/framed/Settings;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/k;->c:Lokhttp3/internal/framed/FramedConnection$a;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    iget-object v1, p0, Lokhttp3/internal/framed/k;->a:Lokhttp3/internal/framed/Settings;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/FrameWriter;->applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

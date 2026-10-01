.class final Lokhttp3/internal/framed/j;
.super Lokhttp3/internal/NamedRunnable;


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/FramedConnection$a;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/framed/j;->a:Lokhttp3/internal/framed/FramedConnection$a;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/framed/j;->a:Lokhttp3/internal/framed/FramedConnection$a;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->f(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/j;->a:Lokhttp3/internal/framed/FramedConnection$a;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection$a;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection$Listener;->onSettings(Lokhttp3/internal/framed/FramedConnection;)V

    return-void
.end method

.class public Lcom/umeng/a/a/a/m;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/umeng/a/a/a/d/a;

.field private c:Lcom/umeng/a/a/a/b/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/umeng/a/a/a/b/b$a;

    invoke-direct {v0}, Lcom/umeng/a/a/a/b/b$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/a/a/a/m;-><init>(Lcom/umeng/a/a/a/b/j;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/umeng/a/a/a/b/j;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/a/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    .line 46
    new-instance v0, Lcom/umeng/a/a/a/d/a;

    iget-object v1, p0, Lcom/umeng/a/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/umeng/a/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/umeng/a/a/a/m;->b:Lcom/umeng/a/a/a/d/a;

    .line 67
    iget-object v0, p0, Lcom/umeng/a/a/a/m;->b:Lcom/umeng/a/a/a/d/a;

    invoke-interface {p1, v0}, Lcom/umeng/a/a/a/b/j;->a(Lcom/umeng/a/a/a/d/c;)Lcom/umeng/a/a/a/b/h;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/a/a/a/m;->c:Lcom/umeng/a/a/a/b/h;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/a/a/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/a/a/a/m;->a(Lcom/umeng/a/a/a/d;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception p1

    .line 98
    new-instance p1, Lcom/umeng/a/a/a/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/umeng/a/a/a/d;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/umeng/a/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 81
    iget-object v0, p0, Lcom/umeng/a/a/a/m;->c:Lcom/umeng/a/a/a/b/h;

    invoke-interface {p1, v0}, Lcom/umeng/a/a/a/d;->b(Lcom/umeng/a/a/a/b/h;)V

    .line 82
    iget-object p1, p0, Lcom/umeng/a/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/umeng/a/a/a/d;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/a/a/a/m;->a(Lcom/umeng/a/a/a/d;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

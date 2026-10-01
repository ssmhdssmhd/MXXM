.class public Lcom/umeng/a/a/a/d/a;
.super Lcom/umeng/a/a/a/d/c;
.source "TIOStreamTransport.java"


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/umeng/a/a/a/d/c;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/umeng/a/a/a/d/c;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    .line 53
    iput-object p1, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/umeng/a/a/a/d/c;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    .line 72
    iput-object p1, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    .line 73
    iput-object p2, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/umeng/a/a/a/d/c;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/d/d;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .line 126
    if-ltz p1, :cond_0

    .line 129
    return p1

    .line 127
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/d/d;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/d/d;-><init>(I)V

    throw p1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Lcom/umeng/a/a/a/d/d;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/a/a/a/d/d;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 118
    :cond_1
    new-instance p1, Lcom/umeng/a/a/a/d/d;

    const/4 p2, 0x1

    const-string p3, "Cannot read from null inputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/a/a/a/d/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/d/d;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/d/d;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Lcom/umeng/a/a/a/d/d;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/a/a/a/d/d;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 137
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/d/d;

    const/4 p2, 0x1

    const-string p3, "Cannot write to null outputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/a/a/a/d/d;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :goto_0
    iput-object v1, p0, Lcom/umeng/a/a/a/d/a;->a:Ljava/io/InputStream;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :goto_1
    iput-object v1, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    .line 111
    :cond_1
    return-void
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/d/d;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/a/a/d/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lcom/umeng/a/a/a/d/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/umeng/a/a/a/d/d;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_0
    new-instance v0, Lcom/umeng/a/a/a/d/d;

    const/4 v1, 0x1

    const-string v2, "Cannot flush null outputStream"

    invoke-direct {v0, v1, v2}, Lcom/umeng/a/a/a/d/d;-><init>(ILjava/lang/String;)V

    throw v0
.end method

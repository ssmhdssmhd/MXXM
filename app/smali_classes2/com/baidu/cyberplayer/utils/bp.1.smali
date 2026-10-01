.class public Lcom/baidu/cyberplayer/utils/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/bm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/baidu/cyberplayer/utils/bm;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bm;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bp;->a:Lcom/baidu/cyberplayer/utils/bm;

    .line 62
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bp;->a:Lcom/baidu/cyberplayer/utils/bm;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bm;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/bl;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bp;->a:Lcom/baidu/cyberplayer/utils/bm;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bm;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/bl;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bp;->a:Lcom/baidu/cyberplayer/utils/bm;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bm;->clear()V

    .line 73
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bp;->a:Lcom/baidu/cyberplayer/utils/bm;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bm;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 7

    .line 98
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/baidu/cyberplayer/utils/bq;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/bq;-><init>()V

    .line 102
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bq;->k()Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bq;->a(Ljava/io/PrintWriter;)V

    .line 107
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bp;->a()I

    move-result v2

    .line 110
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 111
    invoke-virtual {p0, v4}, Lcom/baidu/cyberplayer/utils/bp;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v5

    .line 112
    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6, v3}, Lcom/baidu/cyberplayer/utils/bl;->a(Ljava/io/PrintWriter;IZ)V

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/bl;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bp;->a:Lcom/baidu/cyberplayer/utils/bm;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bm;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/bp;->a(Ljava/io/PrintWriter;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 131
    const-string v0, ""

    return-object v0
.end method

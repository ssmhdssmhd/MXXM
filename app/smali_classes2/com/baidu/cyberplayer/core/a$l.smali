.class Lcom/baidu/cyberplayer/core/a$l;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1922
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$l;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1947
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$l;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$l;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$l;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$l;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1951
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1926
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$l;->a()V

    .line 1927
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1931
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$l;->a()V

    .line 1932
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 1936
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1937
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1938
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1939
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$l;->a()V

    goto :goto_1

    .line 1941
    :cond_0
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$l;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1936
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1944
    :cond_1
    return-void
.end method

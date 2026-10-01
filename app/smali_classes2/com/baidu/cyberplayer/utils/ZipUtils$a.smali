.class Lcom/baidu/cyberplayer/utils/ZipUtils$a;
.super Ljava/util/zip/ZipInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/utils/ZipUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/utils/ZipUtils;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/ZipUtils;Ljava/io/InputStream;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/ZipUtils$a;->a:Lcom/baidu/cyberplayer/utils/ZipUtils;

    .line 25
    invoke-direct {p0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 34
    nop

    .line 35
    const-wide/16 v2, 0x800

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    .line 36
    :goto_0
    cmp-long v4, v0, p1

    if-eqz v4, :cond_2

    .line 37
    sub-long v4, p1, v0

    .line 38
    int-to-long v6, v3

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    move-wide v4, v6

    :goto_1
    long-to-int v5, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/baidu/cyberplayer/utils/ZipUtils$a;->read([BII)I

    move-result v4

    .line 39
    if-gtz v4, :cond_1

    .line 40
    return-wide v0

    .line 42
    :cond_1
    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-wide v0

    .line 31
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

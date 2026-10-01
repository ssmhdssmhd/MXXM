.class public Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "SimpleHttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlushedInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 79
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;->this$0:Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader;

    .line 80
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const-wide/16 v0, 0x0

    .line 86
    .local v0, "totalBytesSkipped":J
    nop

    :goto_0
    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 88
    .local v2, "bytesSkipped":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 89
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/download/SimpleHttpDownloader$FlushedInputStream;->read()I

    move-result v4

    .line 90
    .local v4, "by_te":I
    if-gez v4, :cond_1

    .line 91
    nop

    .line 98
    .end local v2    # "bytesSkipped":J
    .end local v4    # "by_te":I
    :goto_1
    return-wide v0

    .line 93
    .restart local v2    # "bytesSkipped":J
    .restart local v4    # "by_te":I
    :cond_1
    const-wide/16 v2, 0x1

    .line 96
    .end local v4    # "by_te":I
    :cond_2
    add-long/2addr v0, v2

    goto :goto_0
.end method

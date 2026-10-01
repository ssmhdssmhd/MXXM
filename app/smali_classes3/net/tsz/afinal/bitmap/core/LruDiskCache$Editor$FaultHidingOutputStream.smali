.class Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 853
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    .line 854
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 855
    return-void
.end method

.method synthetic constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Ljava/io/OutputStream;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1, p2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 875
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    .line 879
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 883
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    .line 887
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .line 859
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    .line 863
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 867
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    .line 871
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

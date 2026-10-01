.class public final Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;


# direct methods
.method private constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)V
    .locals 0
    .param p2, "entry"    # Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 773
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 775
    return-void
.end method

.method synthetic constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V
    .locals 0

    .line 773
    invoke-direct {p0, p1, p2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    .locals 0

    .line 770
    iget-object p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    return-object p0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$8(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    .line 850
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$8(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    .line 838
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$8(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    .line 842
    :goto_0
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 799
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 786
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$1(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 789
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-virtual {v2, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v0

    return-object v1

    .line 784
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 782
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 814
    new-instance v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->entry:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-virtual {v3, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Ljava/io/OutputStream;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v0

    return-object v1

    .line 812
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 810
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    const/4 v0, 0x0

    .line 824
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$7()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v1

    .line 825
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 829
    return-void

    .line 826
    :catchall_0
    move-exception v1

    .line 827
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 828
    throw v1
.end method

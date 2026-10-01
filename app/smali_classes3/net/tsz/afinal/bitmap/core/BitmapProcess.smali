.class public Lnet/tsz/afinal/bitmap/core/BitmapProcess;
.super Ljava/lang/Object;
.source "BitmapProcess.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x1400000

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BitmapProcess"


# instance fields
.field private cacheSize:I

.field private downloader:Lnet/tsz/afinal/bitmap/download/Downloader;

.field private final mHttpDiskCacheLock:Ljava/lang/Object;

.field private mHttpDiskCacheStarting:Z

.field private mOriginalCacheDir:Ljava/io/File;

.field private mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

.field private neverCalculate:Z


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/bitmap/download/Downloader;Ljava/lang/String;I)V
    .locals 3
    .param p1, "downloader"    # Lnet/tsz/afinal/bitmap/download/Downloader;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "cacheSize"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheStarting:Z

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->neverCalculate:Z

    .line 45
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalCacheDir:Ljava/io/File;

    .line 46
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->downloader:Lnet/tsz/afinal/bitmap/download/Downloader;

    .line 47
    if-gtz p3, :cond_0

    .line 48
    const/high16 p3, 0x1400000

    .line 49
    :cond_0
    iput p3, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->cacheSize:I

    .line 50
    return-void
.end method


# virtual methods
.method public clearCacheInternal()V
    .locals 5

    .line 137
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 140
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BitmapProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheStarting:Z

    .line 146
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->initHttpDiskCache()V

    .line 137
    :cond_0
    monitor-exit v0

    .line 149
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public closeCacheInternal()V
    .locals 5

    .line 164
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 167
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->close()V

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BitmapProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "closeCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 176
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public configCalculateBitmap(Z)V
    .locals 0
    .param p1, "neverCalculate"    # Z

    .line 53
    iput-boolean p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->neverCalculate:Z

    .line 54
    return-void
.end method

.method public flushCacheInternal()V
    .locals 5

    .line 152
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 155
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BitmapProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flush - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 161
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public initHttpDiskCache()V
    .locals 6

    .line 120
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 123
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalCacheDir:Ljava/io/File;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/BitmapCommonUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v1

    iget v3, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->cacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 126
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalCacheDir:Ljava/io/File;

    iget v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->cacheSize:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v4, v4, v2, v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->open(Ljava/io/File;IIJ)Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    move-result-object v1

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheStarting:Z

    .line 132
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 123
    monitor-exit v0

    .line 134
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public processBitmap(Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "config"    # Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 57
    invoke-static {p1}, Lnet/tsz/afinal/bitmap/core/FileNameGenerator;->generator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 59
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 61
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    nop

    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheStarting:Z

    if-nez v4, :cond_9

    .line 70
    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_5

    .line 72
    :try_start_1
    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v4, v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->get(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;

    move-result-object v4

    .line 73
    .local v4, "snapshot":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 74
    iget-object v6, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->edit(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v6

    .line 75
    .local v6, "editor":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    if-eqz v6, :cond_1

    .line 76
    iget-object v7, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->downloader:Lnet/tsz/afinal/bitmap/download/Downloader;

    invoke-virtual {v6, v5}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Lnet/tsz/afinal/bitmap/download/Downloader;->downloadToLocalStreamByUrl(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    invoke-virtual {v6}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->commit()V

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v6}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->abort()V

    .line 82
    :cond_1
    :goto_1
    iget-object v7, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mOriginalDiskCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v7, v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->get(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;

    move-result-object v7

    move-object v4, v7

    .line 84
    .end local v6    # "editor":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    :cond_2
    if-eqz v4, :cond_3

    .line 85
    invoke-virtual {v4, v5}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    check-cast v5, Ljava/io/FileInputStream;

    move-object v2, v5

    .line 86
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    .line 93
    .end local v4    # "snapshot":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    :cond_3
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 95
    goto :goto_2

    .line 96
    :catch_0
    move-exception v4

    goto :goto_6

    .line 92
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 90
    :catch_1
    move-exception v4

    .line 91
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v5, "BitmapProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processBitmap - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    nop

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 95
    :goto_2
    goto :goto_3

    .line 88
    :catch_2
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "BitmapProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processBitmap - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 95
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 93
    :goto_4
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 95
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 96
    :catch_3
    move-exception v5

    .line 99
    :cond_4
    :goto_5
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p1    # "data":Ljava/lang/String;
    .end local p2    # "config":Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    :try_start_5
    throw v4

    .line 61
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p1    # "data":Ljava/lang/String;
    .restart local p2    # "config":Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;
    :cond_5
    :goto_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    .line 105
    iget-boolean v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->neverCalculate:Z

    if-eqz v4, :cond_6

    .line 106
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_7

    .line 108
    :cond_6
    invoke-virtual {p2}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapWidth()I

    move-result v4

    invoke-virtual {p2}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapHeight()I

    move-result v5

    invoke-static {v1, v4, v5}, Lnet/tsz/afinal/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 110
    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    .line 112
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 113
    :catch_4
    move-exception v4

    .line 116
    :cond_8
    :goto_8
    return-object v3

    .line 65
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    :try_start_7
    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapProcess;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 66
    :catch_5
    move-exception v4

    goto/16 :goto_0

    .line 61
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_a

    :goto_9
    throw v4

    :goto_a
    goto :goto_9
.end method

.class public Lnet/tsz/afinal/bitmap/core/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0x1400000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x800000

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

.field private mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 31
    return-void
.end method

.method public constructor <init>(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V
    .locals 1
    .param p1, "cacheParams"    # Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheStarting:Z

    .line 64
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->init(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V

    .line 65
    return-void
.end method

.method static synthetic access$0()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 42
    sget-object v0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private init(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V
    .locals 2
    .param p1, "cacheParams"    # Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    .line 74
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    .line 77
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-boolean v0, v0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lnet/tsz/afinal/bitmap/core/BitmapCache$1;

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v1, v1, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/bitmap/core/BitmapCache$1;-><init>(Lnet/tsz/afinal/bitmap/core/BitmapCache;I)V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    .line 92
    :cond_0
    iget-boolean v0, p1, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->initDiskCache()V

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 134
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 139
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0, p1, p2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 147
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_2
    invoke-static {p1}, Lnet/tsz/afinal/bitmap/core/FileNameGenerator;->generator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v3, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->get(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;

    move-result-object v3

    .line 154
    .local v3, "snapshot":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 155
    iget-object v5, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v5, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->edit(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v5

    .line 156
    .local v5, "editor":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    if-eqz v5, :cond_4

    .line 157
    invoke-virtual {v5, v4}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v4

    move-object v2, v4

    .line 158
    nop

    .line 159
    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-object v4, v4, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v6, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v6, v6, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->compressQuality:I

    .line 158
    invoke-virtual {p2, v4, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v5}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->commit()V

    .line 161
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 164
    .end local v5    # "editor":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    :cond_3
    invoke-virtual {v3, v4}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v3    # "snapshot":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    :cond_4
    :goto_0
    if-eqz v2, :cond_6

    .line 173
    :goto_1
    goto :goto_2

    .line 175
    :catch_0
    move-exception v3

    goto :goto_5

    .line 170
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 168
    :catch_1
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addBitmapToCache - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_6

    .line 173
    goto :goto_1

    .line 166
    :catch_2
    move-exception v3

    .line 167
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addBitmapToCache - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6

    .line 173
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 172
    :goto_3
    if-eqz v2, :cond_5

    .line 173
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 175
    :catch_3
    move-exception v4

    .line 176
    :cond_5
    :goto_4
    nop

    .end local p1    # "data":Ljava/lang/String;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_5
    throw v3

    .line 143
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local p1    # "data":Ljava/lang/String;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_5
    monitor-exit v0

    .line 179
    return-void

    .line 143
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 135
    :cond_7
    :goto_6
    return-void
.end method

.method public clearCache()V
    .locals 0

    .line 243
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 244
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearDiskCache()V

    .line 245
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 270
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public clearDiskCache()V
    .locals 5

    .line 248
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheStarting:Z

    .line 250
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 252
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearCache - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    .line 257
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->initDiskCache()V

    .line 248
    :cond_0
    monitor-exit v0

    .line 260
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 278
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearCache - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 284
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 263
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->evictAll()V

    .line 266
    :cond_0
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 313
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 316
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->close()V

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 325
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 5

    .line 297
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_1
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flush - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 306
    return-void

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lnet/tsz/afinal/bitmap/core/FileNameGenerator;->generator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    nop

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheStarting:Z

    if-nez v2, :cond_4

    .line 213
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v3, v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->get(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;

    move-result-object v3

    .line 217
    .local v3, "snapshot":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    if-eqz v3, :cond_1

    .line 218
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 219
    if-eqz v2, :cond_1

    .line 220
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 228
    if-eqz v2, :cond_0

    .line 229
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 231
    :catch_0
    move-exception v5

    .line 221
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v4

    .line 228
    .end local v3    # "snapshot":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v2, :cond_3

    .line 229
    goto :goto_2

    .line 231
    :catch_1
    move-exception v3

    goto :goto_5

    .line 226
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 224
    :catch_2
    move-exception v3

    .line 225
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getBitmapFromDiskCache - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 229
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 228
    :goto_3
    if-eqz v2, :cond_2

    .line 229
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 231
    :catch_3
    move-exception v4

    .line 232
    :cond_2
    :goto_4
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p1    # "data":Ljava/lang/String;
    :try_start_7
    throw v3

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p1    # "data":Ljava/lang/String;
    :cond_3
    :goto_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 234
    const/4 v1, 0x0

    return-object v1

    .line 210
    :cond_4
    :try_start_8
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 211
    :catch_4
    move-exception v2

    goto :goto_0

    .line 207
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :goto_6
    throw v2

    :goto_7
    goto :goto_6
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lnet/tsz/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 190
    .local v0, "memBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 191
    return-object v0

    .line 194
    .end local v0    # "memBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initDiskCache()V
    .locals 7

    .line 106
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-object v1, v1, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 109
    .local v1, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-boolean v2, v2, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_1
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/BitmapCommonUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v4, v4, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 115
    :try_start_1
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v2, v2, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v4, v4, v2, v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->open(Ljava/io/File;IIJ)Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    move-result-object v2

    iput-object v2, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskLruCache:Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v3, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 118
    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initDiskCache - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v1    # "diskCacheDir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheStarting:Z

    .line 124
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v0

    .line 126
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 329
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache;->mCacheParams:Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    invoke-virtual {v0, p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 330
    return-void
.end method

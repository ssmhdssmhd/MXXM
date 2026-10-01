.class public Lcom/shenma/tvlauncher/utils/LruCacheUtils;
.super Ljava/lang/Object;
.source "LruCacheUtils.java"


# static fields
.field private static mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;


# instance fields
.field private MAXMEMONRY:I

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->MAXMEMONRY:I

    .line 18
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/shenma/tvlauncher/utils/LruCacheUtils$1;

    iget v1, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->MAXMEMONRY:I

    div-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/shenma/tvlauncher/utils/LruCacheUtils$1;-><init>(Lcom/shenma/tvlauncher/utils/LruCacheUtils;I)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    .line 31
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/shenma/tvlauncher/utils/LruCacheUtils;
    .locals 1

    .line 34
    sget-object v0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/utils/LruCacheUtils;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    .line 36
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mCacheUtils:Lcom/shenma/tvlauncher/utils/LruCacheUtils;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    .end local p0    # "this":Lcom/shenma/tvlauncher/utils/LruCacheUtils;
    :cond_0
    const-string/jumbo v0, "zhouchuan"

    const-string/jumbo v1, "the res is aready exits"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clearAllImageCache()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before mMemoryCache.size() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zhouchuan"

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after mMemoryCache.size()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMemoryCache.size() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zhouchuan"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMemoryCache.size()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    .line 51
    :cond_1
    return-void
.end method

.method public declared-synchronized getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 76
    monitor-exit p0

    return-object v0

    .line 78
    :cond_0
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 73
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "this":Lcom/shenma/tvlauncher/utils/LruCacheUtils;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeImageCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/LruCacheUtils;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 90
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 86
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "this":Lcom/shenma/tvlauncher/utils/LruCacheUtils;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 94
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

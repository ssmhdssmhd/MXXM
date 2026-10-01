.class public Ltv/danmaku/ijk/media/exo/ExoSourceManager;
.super Ljava/lang/Object;
.source "ExoSourceManager.java"


# static fields
.field private static final DEFAULT_MAX_SIZE:J = 0x20000000L

.field private static final TAG:Ljava/lang/String; = "ExoSourceManager"

.field public static final TYPE_RTMP:I = 0x4

.field protected static mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;


# instance fields
.field private isCached:Z

.field protected mAppContext:Landroid/content/Context;

.field protected mDataSource:Ljava/lang/String;

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "mapHeadData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->isCached:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public static cachePreView(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;

    .line 181
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    invoke-static {v0, p2}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;

    .line 163
    :try_start_0
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    .line 164
    .local v0, "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_0
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "key":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :cond_1
    :goto_1
    goto :goto_2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static declared-synchronized getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/io/File;

    const-class v0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "dirs":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 132
    :cond_0
    sget-object v2, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v2, :cond_1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "exo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->isCacheFolderLocked(Ljava/io/File;)Z

    move-result v3

    .line 135
    .local v3, "isLocked":Z
    if-nez v3, :cond_1

    .line 136
    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    const-wide/32 v7, 0x20000000

    invoke-direct {v6, v7, v8}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    sput-object v4, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 139
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "isLocked":Z
    :cond_1
    sget-object v2, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 127
    .end local v1    # "dirs":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "cacheDir":Ljava/io/File;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preview"    # Z

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 208
    :goto_0
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 207
    return-object v0
.end method

.method private getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheEnable"    # Z
    .param p3, "preview"    # Z
    .param p4, "cacheDir"    # Ljava/io/File;

    .line 193
    if-eqz p2, :cond_0

    .line 194
    invoke-static {p1, p4}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    .line 195
    .local v0, "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mDataSource:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->isCached:Z

    .line 197
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    invoke-direct {p0, p1, p3}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    return-object v1

    .line 200
    .end local v0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :cond_0
    invoke-direct {p0, p1, p3}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method private getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preview"    # Z

    .line 212
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->userAgent:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 213
    .local v0, "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 214
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 215
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 218
    :cond_1
    return-object v0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 109
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 110
    const-string v0, ".mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x2

    return v0

    .line 114
    :cond_1
    const-string v0, ".ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".isml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    const-string v0, ".ism/manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".isml/manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "rtmp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    const/4 v0, 0x4

    return v0

    .line 120
    :cond_3
    const/4 v0, 0x3

    return v0

    .line 116
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/Map;)Ltv/danmaku/ijk/media/exo/ExoSourceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/danmaku/ijk/media/exo/ExoSourceManager;"
        }
    .end annotation

    .line 59
    .local p1, "mapHeadData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;

    invoke-direct {v0, p0, p1}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object v0
.end method

.method private static resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z
    .locals 14
    .param p0, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p1, "url"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, "isCache":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 231
    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 232
    .local v1, "cachedSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    invoke-interface {v1}, Ljava/util/NavigableSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const/4 v0, 0x0

    move-object v2, p0

    goto :goto_2

    .line 235
    :cond_0
    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v8

    .line 236
    .local v8, "contentLength":J
    const-wide/16 v4, 0x0

    .line 237
    .local v4, "currentLength":J
    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v11, v4

    .end local v4    # "currentLength":J
    .local v11, "currentLength":J
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 238
    .local v13, "cachedSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    iget-wide v4, v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v6, v13, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    move-object v2, p0

    .end local p0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .local v2, "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v4

    add-long/2addr v11, v4

    .line 239
    .end local v13    # "cachedSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    goto :goto_0

    .line 240
    .end local v2    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .restart local p0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :cond_1
    move-object v2, p0

    .end local p0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .restart local v2    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    cmp-long p0, v11, v8

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    move v0, p0

    .line 242
    .end local v1    # "cachedSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    .end local v8    # "contentLength":J
    .end local v11    # "currentLength":J
    :goto_2
    goto :goto_3

    .line 243
    .end local v2    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .restart local p0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :cond_3
    move-object v2, p0

    .end local p0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .restart local v2    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    const/4 v0, 0x0

    goto :goto_3

    .line 228
    .end local v2    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .end local v3    # "key":Ljava/lang/String;
    .restart local p0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :cond_4
    move-object v2, p0

    .line 246
    .end local p0    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .restart local v2    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :goto_3
    return v0
.end method


# virtual methods
.method public getMediaSource(Ljava/lang/String;ZZZLjava/io/File;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 8
    .param p1, "dataSource"    # Ljava/lang/String;
    .param p2, "preview"    # Z
    .param p3, "cacheEnable"    # Z
    .param p4, "isLooping"    # Z
    .param p5, "cacheDir"    # Ljava/io/File;

    .line 68
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mDataSource:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p1}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->inferContentType(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "contentType":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 95
    :pswitch_0
    new-instance v2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v3, p3, p2, p5}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 96
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    .local v2, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto :goto_0

    .line 88
    .end local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :pswitch_1
    new-instance v3, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 89
    .local v3, "rtmpDataSourceFactory":Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;
    new-instance v2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 90
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    .line 92
    .restart local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto :goto_0

    .line 85
    .end local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local v3    # "rtmpDataSourceFactory":Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;
    :pswitch_2
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v3, p3, p2, p5}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v2

    .line 86
    .restart local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto :goto_0

    .line 74
    .end local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :pswitch_3
    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance v4, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v5, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, v5, p3, p2, p5}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0, v7, p2}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v7

    invoke-direct {v5, v6, v2, v7}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object v2

    .line 78
    .restart local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    goto :goto_0

    .line 80
    .end local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :pswitch_4
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v5, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v5, p3, p2, p5}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v6, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0, v7, p2}, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v7

    invoke-direct {v5, v6, v2, v7}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object v2

    .line 83
    .restart local v2    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    nop

    .line 100
    :goto_0
    if-eqz p4, :cond_0

    .line 101
    new-instance v3, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-object v3

    .line 103
    :cond_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hadCached()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->isCached:Z

    return v0
.end method

.method public release()V
    .locals 1

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->isCached:Z

    .line 144
    sget-object v0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    sget-object v0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->release()V

    .line 147
    const/4 v0, 0x0

    sput-object v0, Ltv/danmaku/ijk/media/exo/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    :cond_0
    :goto_0
    return-void
.end method

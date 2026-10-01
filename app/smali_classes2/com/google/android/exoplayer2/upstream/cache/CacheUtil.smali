.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000

.field public static final DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 9
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "upstream"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .param p4, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 130
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 v0, 0x20000

    new-array v3, v0, [B

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    .end local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p1    # "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .end local p3    # "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .end local p4    # "isCanceled":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .local v1, "cache":Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .local v6, "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .local v7, "isCanceled":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 140
    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 20
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
    .param p3, "buffer"    # [B
    .param p4, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p5, "priority"    # I
    .param p6, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .param p7, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p8, "enableEOFException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    if-eqz v2, :cond_0

    .line 182
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    move-object v9, v2

    goto :goto_0

    .line 185
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    move-object v9, v3

    .line 188
    .end local p6    # "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .local v9, "counters":Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "key":Ljava/lang/String;
    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 190
    .local v3, "start":J
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v11, -0x1

    cmp-long v7, v5, v11

    if-eqz v7, :cond_1

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v5

    :goto_1
    move-wide v13, v5

    .line 191
    .local v13, "left":J
    :goto_2
    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    if-eqz v5, :cond_7

    .line 192
    invoke-static/range {p7 .. p7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 193
    cmp-long v5, v13, v11

    if-eqz v5, :cond_2

    move-wide v5, v13

    goto :goto_3

    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    .line 194
    :goto_3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v5

    .line 195
    move-object/from16 v17, v2

    move-wide v1, v3

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "start":J
    .local v1, "start":J
    .local v5, "blockLength":J
    .local v17, "key":Ljava/lang/String;
    cmp-long v3, v5, v15

    if-lez v3, :cond_3

    goto :goto_4

    .line 199
    :cond_3
    neg-long v3, v5

    .line 200
    .end local v5    # "blockLength":J
    .local v3, "blockLength":J
    nop

    .line 201
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)J

    move-result-wide v18

    .line 211
    .local v18, "read":J
    cmp-long v0, v18, v3

    if-gez v0, :cond_5

    .line 213
    if-eqz p8, :cond_8

    cmp-long v0, v13, v11

    if-nez v0, :cond_4

    goto :goto_6

    .line 214
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 211
    :cond_5
    move-wide v5, v3

    .line 219
    .end local v3    # "blockLength":J
    .end local v18    # "read":J
    .restart local v5    # "blockLength":J
    :goto_4
    add-long v3, v1, v5

    .line 220
    .end local v1    # "start":J
    .local v3, "start":J
    cmp-long v0, v13, v11

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move-wide v15, v5

    :goto_5
    sub-long/2addr v13, v15

    .line 221
    .end local v5    # "blockLength":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    goto :goto_2

    .line 191
    .end local v17    # "key":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v2

    move-wide v1, v3

    .line 222
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "start":J
    .restart local v1    # "start":J
    .restart local v17    # "key":Ljava/lang/String;
    :cond_8
    :goto_6
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 66
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .locals 16
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "key":Ljava/lang/String;
    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 91
    .local v4, "start":J
    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v6

    .line 92
    .local v6, "left":J
    :goto_0
    iput-wide v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 93
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    .line 94
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    move-wide v12, v6

    .line 95
    .end local v6    # "left":J
    .local v12, "left":J
    :goto_1
    cmp-long v6, v12, v10

    if-eqz v6, :cond_5

    .line 96
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v6, v12, v8

    if-eqz v6, :cond_1

    move-wide v6, v12

    goto :goto_2

    :cond_1
    move-wide v6, v14

    .line 97
    :goto_2
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v6

    .line 98
    .local v6, "blockLength":J
    cmp-long v2, v6, v10

    if-lez v2, :cond_2

    .line 99
    iget-wide v14, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v14, v6

    iput-wide v14, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    goto :goto_3

    .line 101
    :cond_2
    neg-long v6, v6

    .line 102
    cmp-long v2, v6, v14

    if-nez v2, :cond_3

    .line 103
    return-void

    .line 106
    :cond_3
    :goto_3
    add-long/2addr v4, v6

    .line 107
    cmp-long v2, v12, v8

    if-nez v2, :cond_4

    move-wide v14, v10

    goto :goto_4

    :cond_4
    move-wide v14, v6

    :goto_4
    sub-long/2addr v12, v14

    .line 108
    .end local v6    # "blockLength":J
    move-object/from16 v2, p1

    goto :goto_1

    .line 109
    :cond_5
    return-void
.end method

.method public static getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)J
    .locals 17
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p1, "absoluteStreamPosition"    # J
    .param p3, "length"    # J
    .param p5, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p6, "buffer"    # [B
    .param p7, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p8, "priority"    # I
    .param p9, "counters"    # Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    .param p10, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 253
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p0

    .end local p0    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .local v4, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :goto_0
    if-eqz p7, :cond_0

    .line 255
    invoke-virtual/range {p7 .. p8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 258
    :cond_0
    :try_start_0
    invoke-static/range {p10 .. p10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 261
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v6, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget-object v8, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iget-wide v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long v9, v9, p1

    iget-wide v11, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long v11, v9, v11

    iget-object v15, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v0, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    or-int/lit8 v16, v0, 0x2

    const-wide/16 v13, -0x1

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    move-object v4, v5

    .line 271
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    .line 272
    .local v5, "resolvedLength":J
    iget-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    cmp-long v0, v5, v9

    if-eqz v0, :cond_1

    .line 273
    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v7, v5

    iput-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 275
    :cond_1
    const-wide/16 v7, 0x0

    .line 276
    .local v7, "totalRead":J
    :goto_1
    cmp-long v0, v7, p3

    if-eqz v0, :cond_4

    .line 277
    invoke-static/range {p10 .. p10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 278
    cmp-long v0, p3, v9

    if-eqz v0, :cond_2

    array-length v0, v2

    int-to-long v11, v0

    sub-long v13, p3, v7

    .line 279
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v0, v11

    goto :goto_2

    :cond_2
    array-length v0, v2

    .line 278
    :goto_2
    const/4 v11, 0x0

    invoke-interface {v1, v2, v11, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 281
    .local v0, "read":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_3

    .line 282
    iget-wide v11, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v13, v11, v9

    if-nez v13, :cond_4

    .line 283
    iget-wide v9, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v9, v7

    iput-wide v9, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    goto :goto_3

    .line 287
    :cond_3
    int-to-long v11, v0

    add-long/2addr v7, v11

    .line 288
    iget-wide v11, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    int-to-long v13, v0

    add-long/2addr v11, v13

    iput-wide v11, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v0    # "read":I
    goto :goto_1

    .line 290
    :cond_4
    :goto_3
    nop

    .line 294
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 290
    return-wide v7

    .line 294
    .end local v5    # "resolvedLength":J
    .end local v7    # "totalRead":J
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 295
    throw v0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 295
    goto :goto_0
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 4
    .param p0, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p1, "key"    # Ljava/lang/String;

    .line 301
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 302
    .local v0, "cachedSpans":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 304
    .local v2, "cachedSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_start_0
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_1

    .line 305
    :catch_0
    move-exception v3

    .line 308
    .end local v2    # "cachedSpan":Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :goto_1
    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method private static throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p0, "isCanceled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 313
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

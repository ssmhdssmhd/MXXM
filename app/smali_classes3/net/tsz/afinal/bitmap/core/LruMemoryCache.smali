.class public Lnet/tsz/afinal/bitmap/core/LruMemoryCache;
.super Ljava/lang/Object;
.source "LruMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .line 39
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-lez p1, :cond_0

    .line 43
    iput p1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->maxSize:I

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    .line 45
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 222
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 223
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 226
    return v0

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private trimToSize(I)V
    .locals 5
    .param p1, "maxSize"    # I

    .line 138
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    nop

    :goto_0
    monitor-enter p0

    .line 139
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    if-nez v0, :cond_3

    .line 144
    :cond_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget v3, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    invoke-direct {p0, v1, v2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    .line 153
    iget v3, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->evictionCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->evictionCount:I

    .line 138
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v1, v2, v0}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 145
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 158
    return-void

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "maxSize":I
    throw v0

    .line 138
    .restart local p1    # "maxSize":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 284
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 284
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .line 244
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->trimToSize(I)V

    .line 245
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 298
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 298
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_4

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 62
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->hitCount:I

    .line 63
    monitor-exit p0

    return-object v0

    .line 65
    :cond_0
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->missCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->missCount:I

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 77
    const/4 v2, 0x0

    return-object v2

    .line 80
    :cond_1
    monitor-enter p0

    .line 81
    :try_start_1
    iget v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->createCount:I

    .line 82
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 84
    if-eqz v0, :cond_2

    .line 86
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_2
    iget v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v1}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    .line 80
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    return-object v0

    .line 96
    :cond_3
    iget v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->maxSize:I

    invoke-direct {p0, v2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->trimToSize(I)V

    .line 97
    return-object v1

    .line 80
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 59
    .end local v0    # "mapValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "createdValue":Ljava/lang/Object;, "TV;"
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 55
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 269
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 262
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 262
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 277
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 277
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->putCount:I

    .line 115
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    invoke-direct {p0, p1, p2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    .line 116
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 118
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    .line 113
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    :cond_1
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->maxSize:I

    invoke-direct {p0, v1}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->trimToSize(I)V

    .line 127
    return-object v0

    .line 113
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 291
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 291
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 174
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I

    .line 171
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    :cond_1
    return-object v0

    .line 171
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 253
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 253
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 237
    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 306
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 306
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 9

    .local p0, "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 310
    :try_start_0
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->hitCount:I

    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->missCount:I

    add-int/2addr v0, v1

    .line 311
    .local v0, "accesses":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v0

    goto :goto_0

    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruMemoryCache;, "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    .line 312
    .local v2, "hitPercent":I
    :goto_0
    const-string v3, "LruMemoryCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    iget v4, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->maxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;->missCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v1

    const/4 v1, 0x1

    aput-object v5, v8, v1

    const/4 v1, 0x2

    aput-object v6, v8, v1

    const/4 v1, 0x3

    aput-object v7, v8, v1

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 309
    .end local v0    # "accesses":I
    .end local v2    # "hitPercent":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

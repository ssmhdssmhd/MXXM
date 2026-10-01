.class public Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
.super Ljava/lang/Object;
.source "DrawingCache.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/IDrawingCache;
.implements Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<",
        "Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;",
        ">;",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable<",
        "Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

.field private mIsPooled:Z

.field private mNextElement:Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

.field private mSize:I

.field private referenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mSize:I

    .line 17
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->referenceCount:I

    .line 20
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    .line 21
    return-void
.end method


# virtual methods
.method public build(IIIZI)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "density"    # I
    .param p4, "checkSizeEquals"    # Z
    .param p5, "bitsPerPixel"    # I

    .line 25
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    .line 26
    .local v0, "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "w":I
    .end local p2    # "h":I
    .end local p3    # "density":I
    .end local p4    # "checkSizeEquals":Z
    .end local p5    # "bitsPerPixel":I
    .local v1, "w":I
    .local v2, "h":I
    .local v3, "density":I
    .local v4, "checkSizeEquals":Z
    .local v5, "bitsPerPixel":I
    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->buildCache(IIIZI)V

    .line 27
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mSize:I

    .line 28
    return-void
.end method

.method public declared-synchronized decreaseReference()V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->referenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 46
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->recycle()V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mSize:I

    .line 50
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->referenceCount:I

    .line 51
    return-void
.end method

.method public erase()V
    .locals 1

    .line 32
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->erase()V

    .line 33
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->get()Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    .locals 2

    .line 37
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    .line 38
    .local v0, "holder":Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 39
    const/4 v1, 0x0

    return-object v1

    .line 41
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    return-object v1
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->getNextPoolable()Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v0

    return-object v0
.end method

.method public getNextPoolable()Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    .locals 1

    .line 65
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mNextElement:Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    return-object v0
.end method

.method public declared-synchronized hasReferences()Z
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->referenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 80
    .end local p0    # "this":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public height()I
    .locals 1

    .line 100
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->height:I

    return v0
.end method

.method public declared-synchronized increaseReference()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->referenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    .end local p0    # "this":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isPooled()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mIsPooled:Z

    return v0
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->setNextPoolable(Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V

    return-void
.end method

.method public setNextPoolable(Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V
    .locals 0
    .param p1, "element"    # Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .line 60
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mNextElement:Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .line 61
    return-void
.end method

.method public setPooled(Z)V
    .locals 0
    .param p1, "isPooled"    # Z

    .line 75
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mIsPooled:Z

    .line 76
    return-void
.end method

.method public size()I
    .locals 1

    .line 55
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mSize:I

    return v0
.end method

.method public width()I
    .locals 1

    .line 95
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->mHolder:Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCacheHolder;->width:I

    return v0
.end method

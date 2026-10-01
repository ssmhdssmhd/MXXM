.class Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;
.super Ljava/lang/Object;
.source "FinitePool.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mInfinite:Z

.field private final mLimit:I

.field private final mManager:Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mPoolCount:I

.field private mRoot:Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;, "Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool<TT;>;"
    .local p1, "manager":Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;, "Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mManager:Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mLimit:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mInfinite:Z

    .line 39
    return-void
.end method

.method constructor <init>(Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;I)V
    .locals 2
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager<",
            "TT;>;I)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;, "Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool<TT;>;"
    .local p1, "manager":Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;, "Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-lez p2, :cond_0

    .line 46
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mManager:Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;

    .line 47
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mLimit:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mInfinite:Z

    .line 49
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pool limit must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;, "Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool<TT;>;"
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mRoot:Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mRoot:Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    .line 56
    .local v0, "element":Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;, "TT;"
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;->getNextPoolable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mRoot:Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    .line 57
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    goto :goto_0

    .line 59
    .end local v0    # "element":Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;, "TT;"
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mManager:Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;->newInstance()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    move-result-object v0

    .line 62
    .restart local v0    # "element":Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;, "TT;"
    :goto_0
    if-eqz v0, :cond_1

    .line 63
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 64
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;->setPooled(Z)V

    .line 65
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mManager:Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;

    invoke-interface {v1, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;->onAcquired(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 68
    :cond_1
    return-object v0
.end method

.method public release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;, "Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool<TT;>;"
    .local p1, "element":Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;, "TT;"
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;->isPooled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mInfinite:Z

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mLimit:I

    if-ge v0, v1, :cond_1

    .line 74
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mPoolCount:I

    .line 75
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mRoot:Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 76
    invoke-interface {p1, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;->setPooled(Z)V

    .line 77
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mRoot:Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    .line 79
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/FinitePool;->mManager:Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;->onReleased(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FinitePool] Element is already in pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void
.end method

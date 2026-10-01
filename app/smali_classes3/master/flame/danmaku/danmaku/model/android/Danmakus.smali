.class public Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/IDanmakus;


# instance fields
.field private endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private mComparator:Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

.field private mDuplicateMergingEnabled:Z

.field private mLockObject:Ljava/lang/Object;

.field private volatile mSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSortType:I

.field private startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "sortType"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "sortType"    # I
    .param p2, "duplicateMergingEnabled"    # Z

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(IZLmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;)V

    .line 62
    return-void
.end method

.method public constructor <init>(IZLmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;)V
    .locals 3
    .param p1, "sortType"    # I
    .param p2, "duplicateMergingEnabled"    # Z
    .param p3, "baseComparator"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "comparator":Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;
    if-nez p1, :cond_1

    .line 67
    if-nez p3, :cond_0

    new-instance v2, Lmaster/flame/danmaku/danmaku/model/IDanmakus$TimeComparator;

    invoke-direct {v2, p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$TimeComparator;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 68
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 69
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosComparator;

    invoke-direct {v2, p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosComparator;-><init>(Z)V

    move-object v0, v2

    goto :goto_1

    .line 70
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 71
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosDescComparator;

    invoke-direct {v2, p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$YPosDescComparator;-><init>(Z)V

    move-object v0, v2

    .line 73
    :cond_3
    :goto_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 74
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    goto :goto_2

    .line 76
    :cond_4
    iput-boolean p2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 77
    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 78
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 79
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mComparator:Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

    .line 81
    :goto_2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 82
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    .line 86
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "duplicateMergingEnabled"    # Z

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 91
    return-void
.end method

.method private createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 216
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/Danmaku;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/Danmaku;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private setDuplicateMergingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 271
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mComparator:Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 272
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 273
    return-void
.end method

.method private subset(JJ)Ljava/util/Collection;
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation

    .line 144
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 149
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    .line 151
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_2

    .line 152
    const-string v0, "start"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 154
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_3

    .line 155
    const-string v0, "end"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 158
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    .line 159
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    .line 160
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0

    .line 145
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 111
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 3

    .line 225
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 228
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 230
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 233
    const-string v0, "start"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 234
    const-string v0, "end"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 236
    :cond_1
    return-void

    .line 230
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public contains(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 262
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 2

    .line 240
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    return-object v0

    .line 246
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
            "-",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            "*>;)V"
        }
    .end annotation

    .line 300
    .local p1, "consumer":Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<-Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;*>;"
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;->before()V

    .line 301
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 304
    .local v1, "next":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-nez v1, :cond_0

    .line 305
    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p1, v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;->accept(Ljava/lang/Object;)I

    move-result v2

    .line 308
    .local v2, "action":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 309
    goto :goto_2

    .line 310
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 312
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    .line 313
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 315
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 316
    goto :goto_2

    .line 318
    .end local v1    # "next":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v2    # "action":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 319
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;->after()V

    .line 320
    return-void
.end method

.method public forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
            "-",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            "*>;)V"
        }
    .end annotation

    .line 293
    .local p1, "consumer":Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;, "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<-Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;*>;"
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEach(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 2

    .line 251
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    return-object v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainSynchronizer()Ljava/lang/Object;
    .locals 1

    .line 324
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method public removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 3
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 128
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setVisibility(Z)V

    .line 134
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 137
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 139
    :cond_2
    monitor-exit v1

    .line 140
    return v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 97
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    move-object p1, v2

    .line 99
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_0
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 103
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 104
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 106
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 107
    return-void
.end method

.method public setSubItemsDuplicateMergingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 277
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 279
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 281
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    .line 283
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setDuplicateMergingEnabled(Z)V

    .line 284
    return-void
.end method

.method public size()I
    .locals 1

    .line 220
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public sub(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 175
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 178
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 179
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    if-ne v0, v1, :cond_1

    .line 180
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 181
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    iput-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 184
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 186
    :cond_1
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    invoke-direct {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 187
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    iput-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    .line 190
    :cond_2
    :goto_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    if-ne v0, v1, :cond_3

    .line 191
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    return-object v0

    .line 193
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_4

    .line 194
    const-string v0, "start"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 196
    :cond_4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_5

    .line 197
    const-string v0, "end"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 200
    :cond_5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_6

    .line 201
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 202
    .local v0, "dtime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v2

    cmp-long v4, p3, v2

    if-gtz v4, :cond_6

    .line 203
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    return-object v2

    .line 207
    .end local v0    # "dtime":J
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    .line 208
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0, p3, p4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    .line 209
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v2, Ljava/util/SortedSet;

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-interface {v2, v3, v4}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 211
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    return-object v0

    .line 211
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 176
    :cond_7
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subset(JJ)Ljava/util/Collection;

    move-result-object v0

    .line 166
    .local v0, "subset":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 170
    .local v1, "newSet":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v2, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 167
    .end local v1    # "newSet":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

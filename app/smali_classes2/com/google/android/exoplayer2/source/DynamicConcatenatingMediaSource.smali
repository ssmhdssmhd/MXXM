.class public final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.super Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isAtomic"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 36
    return-void
.end method

.method public constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 45
    return-void
.end method

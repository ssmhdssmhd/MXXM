.class public final Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# instance fields
.field private final chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;J)V
    .locals 0
    .param p1, "chunkIndex"    # Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .param p2, "timeOffsetUs"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 36
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    .line 37
    return-void
.end method


# virtual methods
.method public getDurationUs(JJ)J
    .locals 3
    .param p1, "segmentNum"    # J
    .param p3, "periodDurationUs"    # J

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    long-to-int v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getFirstSegmentNum()J
    .locals 2

    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSegmentCount(J)I
    .locals 1
    .param p1, "periodDurationUs"    # J

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    return v0
.end method

.method public getSegmentNum(JJ)J
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 6
    .param p1, "segmentNum"    # J

    .line 61
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    long-to-int v2, p1

    aget-wide v2, v1, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    long-to-int v4, p1

    aget v1, v1, v4

    int-to-long v4, v1

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public getTimeUs(J)J
    .locals 5
    .param p1, "segmentNum"    # J

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    long-to-int v1, p1

    aget-wide v1, v0, v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public isExplicit()Z
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method

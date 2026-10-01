.class final Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 17
    .param p0, "fixedSampleSize"    # I
    .param p1, "chunkOffsets"    # [J
    .param p2, "chunkSampleCounts"    # [I
    .param p3, "timestampDeltaInTimeUnits"    # J

    .line 70
    move-object/from16 v0, p2

    const/16 v1, 0x2000

    div-int v1, v1, p0

    .line 73
    .local v1, "maxSampleCount":I
    const/4 v2, 0x0

    .line 74
    .local v2, "rechunkedSampleCount":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    .line 75
    .local v5, "chunkSampleCount":I
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    add-int/2addr v2, v6

    .line 74
    .end local v5    # "chunkSampleCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-array v6, v2, [J

    .line 79
    .local v6, "offsets":[J
    new-array v7, v2, [I

    .line 80
    .local v7, "sizes":[I
    const/4 v3, 0x0

    .line 81
    .local v3, "maximumSize":I
    new-array v9, v2, [J

    .line 82
    .local v9, "timestamps":[J
    new-array v10, v2, [I

    .line 84
    .local v10, "flags":[I
    const/4 v4, 0x0

    .line 85
    .local v4, "originalSampleIndex":I
    const/4 v5, 0x0

    .line 86
    .local v5, "newSampleIndex":I
    const/4 v8, 0x0

    move/from16 v16, v8

    move v8, v3

    move v3, v5

    move/from16 v5, v16

    .local v3, "newSampleIndex":I
    .local v5, "chunkIndex":I
    .local v8, "maximumSize":I
    :goto_1
    array-length v11, v0

    if-ge v5, v11, :cond_2

    .line 87
    aget v11, v0, v5

    .line 88
    .local v11, "chunkSamplesRemaining":I
    aget-wide v12, p1, v5

    .line 90
    .local v12, "sampleOffset":J
    :goto_2
    if-lez v11, :cond_1

    .line 91
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 93
    .local v14, "bufferSampleCount":I
    aput-wide v12, v6, v3

    .line 94
    mul-int v15, p0, v14

    aput v15, v7, v3

    .line 95
    aget v15, v7, v3

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 96
    move v15, v1

    .end local v1    # "maxSampleCount":I
    .local v15, "maxSampleCount":I
    int-to-long v0, v4

    mul-long v0, v0, p3

    aput-wide v0, v9, v3

    .line 97
    const/4 v0, 0x1

    aput v0, v10, v3

    .line 99
    aget v0, v7, v3

    int-to-long v0, v0

    add-long/2addr v12, v0

    .line 100
    add-int/2addr v4, v14

    .line 102
    sub-int/2addr v11, v14

    .line 103
    nop

    .end local v14    # "bufferSampleCount":I
    add-int/lit8 v3, v3, 0x1

    .line 104
    move-object/from16 v0, p2

    move v1, v15

    goto :goto_2

    .line 90
    .end local v15    # "maxSampleCount":I
    .restart local v1    # "maxSampleCount":I
    :cond_1
    move v15, v1

    .line 86
    .end local v1    # "maxSampleCount":I
    .end local v11    # "chunkSamplesRemaining":I
    .end local v12    # "sampleOffset":J
    .restart local v15    # "maxSampleCount":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p2

    goto :goto_1

    .line 106
    .end local v5    # "chunkIndex":I
    .end local v15    # "maxSampleCount":I
    .restart local v1    # "maxSampleCount":I
    :cond_2
    int-to-long v0, v4

    mul-long v11, p3, v0

    .line 108
    .local v11, "duration":J
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJLcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v5
.end method

.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field public static final DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x7d0L


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private final minTimeBetweenBufferReevaluationMs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 15
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 253
    const-wide/16 v12, 0x7d0

    sget-object v14, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x61a8

    const-wide/16 v8, 0x61a8

    const/high16 v10, 0x3f400000    # 0.75f

    const/high16 v11, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJFFJLcom/google/android/exoplayer2/util/Clock;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJFFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 7
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p4, "minDurationForQualityIncreaseMs"    # J
    .param p6, "maxDurationForQualityDecreaseMs"    # J
    .param p8, "minDurationToRetainAfterDiscardMs"    # J
    .param p10, "bandwidthFraction"    # F
    .param p11, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p12, "minTimeBetweenBufferReevaluationMs"    # J
    .param p14, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 304
    invoke-direct/range {p0 .. p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 305
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 306
    const-wide/16 v0, 0x3e8

    mul-long v2, p4, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    .line 307
    mul-long v2, p6, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    .line 308
    mul-long v0, v0, p8

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 309
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    .line 310
    move/from16 v1, p11

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 312
    move-wide/from16 v2, p12

    iput-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    .line 313
    move-object/from16 v4, p14

    iput-object v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 314
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 315
    const/4 v5, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 316
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 318
    const-wide/high16 v5, -0x8000000000000000L

    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v5

    .line 319
    .local v5, "selectedIndex":I
    iput v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 320
    return-void
.end method

.method private determineIdealSelectedIndex(J)I
    .locals 8
    .param p1, "nowMs"    # J

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 435
    .local v0, "effectiveBitrate":J
    const/4 v2, 0x0

    .line 436
    .local v2, "lowestBitrateNonBlacklistedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v3, v4, :cond_3

    .line 437
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 438
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 439
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_1

    .line 440
    return v3

    .line 442
    :cond_1
    move v2, v3

    .line 436
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .locals 3
    .param p1, "availableDurationUs"    # J

    .line 450
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 452
    .local v0, "isAvailableDurationTooShort":Z
    :goto_0
    if-eqz v0, :cond_1

    long-to-float v1, p1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float v1, v1, v2

    float-to-long v1, v1

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    :goto_1
    return-wide v1
.end method


# virtual methods
.method public enable()V
    .locals 2

    .line 324
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 325
    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 19
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 387
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 388
    .local v2, "nowMs":J
    iget-wide v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    sub-long v4, v2, v4

    iget-wide v6, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 390
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    return v4

    .line 392
    :cond_0
    iput-wide v2, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 393
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    const/4 v4, 0x0

    return v4

    .line 397
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 398
    .local v4, "queueSize":I
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 399
    .local v5, "lastChunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v6, p1

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 400
    invoke-static {v6, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v6

    .line 402
    .local v6, "playoutBufferedDurationBeforeLastChunkUs":J
    iget-wide v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    .line 403
    return v4

    .line 405
    :cond_2
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v8

    .line 406
    .local v8, "idealSelectedIndex":I
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 410
    .local v9, "idealFormat":Lcom/google/android/exoplayer2/Format;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v4, :cond_4

    .line 411
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 412
    .local v11, "chunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-object v12, v11, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 413
    .local v12, "format":Lcom/google/android/exoplayer2/Format;
    iget-wide v13, v11, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v13, v13, p1

    .line 414
    .local v13, "mediaDurationBeforeThisChunkUs":J
    iget v15, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 415
    invoke-static {v13, v14, v15}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v15

    .line 416
    .local v15, "playoutDurationBeforeThisChunkUs":J
    move-wide/from16 v17, v2

    .end local v2    # "nowMs":J
    .local v17, "nowMs":J
    iget-wide v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v3, v15, v1

    if-ltz v3, :cond_3

    iget v1, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v2, v9, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v1, v2, :cond_3

    iget v1, v12, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, v12, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v3, 0x2d0

    if-ge v1, v3, :cond_3

    iget v1, v12, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_3

    iget v1, v12, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v2, 0x500

    if-ge v1, v2, :cond_3

    iget v1, v12, Lcom/google/android/exoplayer2/Format;->height:I

    iget v2, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v1, v2, :cond_3

    .line 421
    return v10

    .line 410
    .end local v11    # "chunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .end local v12    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v13    # "mediaDurationBeforeThisChunkUs":J
    .end local v15    # "playoutDurationBeforeThisChunkUs":J
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p3

    move-wide/from16 v2, v17

    goto :goto_0

    .line 424
    .end local v10    # "i":I
    .end local v17    # "nowMs":J
    .restart local v2    # "nowMs":J
    :cond_4
    return v4
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0
    .param p1, "playbackSpeed"    # F

    .line 329
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 330
    return-void
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .locals 10
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .param p8, "mediaChunkIterators"    # [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 339
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 342
    .local v0, "nowMs":J
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 343
    .local v2, "currentSelectedIndex":I
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 344
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-ne v3, v2, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 350
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 351
    .local v3, "currentFormat":Lcom/google/android/exoplayer2/Format;
    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 352
    .local v4, "selectedFormat":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v6, v3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le v5, v6, :cond_1

    .line 353
    move-wide v5, p5

    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide v7

    cmp-long v9, p3, v7

    if-gez v9, :cond_2

    .line 356
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_0

    .line 352
    :cond_1
    move-wide v5, p5

    .line 357
    :cond_2
    iget v7, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v8, v3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v7, v8, :cond_4

    iget-wide v7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v9, p3, v7

    if-ltz v9, :cond_4

    .line 361
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_0

    .line 348
    .end local v3    # "currentFormat":Lcom/google/android/exoplayer2/Format;
    .end local v4    # "selectedFormat":Lcom/google/android/exoplayer2/Format;
    :cond_3
    move-wide v5, p5

    .line 365
    :cond_4
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-eq v3, v2, :cond_5

    .line 366
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 368
    :cond_5
    return-void
.end method

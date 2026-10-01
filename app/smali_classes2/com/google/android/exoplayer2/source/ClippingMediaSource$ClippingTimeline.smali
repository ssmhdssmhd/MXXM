.class final Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final durationUs:J

.field private final endUs:J

.field private final isDynamic:Z

.field private final startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;JJ)V
    .locals 18
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "startUs"    # J
    .param p4, "endUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 347
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    .line 351
    new-instance v3, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    .line 352
    .local v3, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    const-wide/16 v7, 0x0

    move-wide/from16 v9, p2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 353
    .end local p2    # "startUs":J
    .local v9, "startUs":J
    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v13, v1, v11

    if-nez v13, :cond_0

    iget-wide v11, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    goto :goto_0

    :cond_0
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 354
    .local v11, "resolvedEndUs":J
    :goto_0
    iget-wide v13, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v13, v15

    if-eqz v17, :cond_5

    .line 355
    iget-wide v13, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v17, v11, v13

    if-lez v17, :cond_1

    .line 356
    iget-wide v11, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 358
    :cond_1
    cmp-long v13, v9, v7

    if-eqz v13, :cond_3

    iget-boolean v7, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v7, :cond_2

    goto :goto_1

    .line 359
    :cond_2
    new-instance v4, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v4

    .line 361
    :cond_3
    :goto_1
    cmp-long v7, v9, v11

    if-gtz v7, :cond_4

    goto :goto_2

    .line 362
    :cond_4
    new-instance v4, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v4

    .line 365
    :cond_5
    :goto_2
    iput-wide v9, v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 366
    iput-wide v11, v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 367
    cmp-long v7, v11, v15

    if-nez v7, :cond_6

    move-wide v7, v15

    goto :goto_3

    :cond_6
    sub-long v7, v11, v9

    :goto_3
    iput-wide v7, v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 368
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v7, :cond_8

    cmp-long v7, v11, v15

    if-eqz v7, :cond_7

    iget-wide v7, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v13, v7, v15

    if-eqz v13, :cond_8

    iget-wide v7, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v13, v11, v7

    if-nez v13, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    .line 372
    return-void

    .line 349
    .end local v3    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    .end local v9    # "startUs":J
    .end local v11    # "resolvedEndUs":J
    .restart local p2    # "startUs":J
    :cond_9
    move-object/from16 v6, p1

    move-wide/from16 v9, p2

    new-instance v3, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw v3
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 12
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 401
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long v10, v0, v2

    .line 402
    .local v10, "positionInClippedWindowUs":J
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    sub-long v2, v0, v10

    :goto_0
    move-wide v8, v2

    .line 404
    .local v8, "periodDurationUs":J
    iget-object v5, p2, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    .end local p2    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    .local v4, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setTag"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    move v3, p3

    .end local p2    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    .end local p3    # "setTag":Z
    .local v2, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    .local v3, "setTag":Z
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 379
    iget-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr p2, v0

    iput-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    .line 380
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    iput-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 381
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    iput-boolean p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    .line 382
    iget-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v0

    if-eqz v4, :cond_1

    .line 383
    iget-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 384
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v4, p2, v0

    iget-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 385
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :goto_0
    iput-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 386
    iget-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr p2, v4

    iput-wide p2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 388
    :cond_1
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide p2

    .line 389
    .local p2, "startMs":J
    iget-wide v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_2

    .line 390
    iget-wide v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v4, p2

    iput-wide v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    .line 392
    :cond_2
    iget-wide v4, v2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_3

    .line 393
    iget-wide v0, v2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, p2

    iput-wide v0, v2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    .line 395
    :cond_3
    return-object v2
.end method

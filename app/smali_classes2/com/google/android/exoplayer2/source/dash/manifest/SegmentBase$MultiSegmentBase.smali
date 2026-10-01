.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.super Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final duration:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;)V
    .locals 2
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # J
    .param p8, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p10, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJ)V

    .line 128
    move-wide v0, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local p4    # "presentationTimeOffset":J
    .local v0, "presentationTimeOffset":J
    .local p2, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .local p3, "timescale":J
    iput-wide p6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 129
    iput-wide p8, p1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 130
    iput-object p10, p1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 131
    return-void
.end method


# virtual methods
.method public getFirstSegmentNum()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    return-wide v0
.end method

.method public abstract getSegmentCount(J)I
.end method

.method public final getSegmentDurationUs(JJ)J
    .locals 7
    .param p1, "sequenceNumber"    # J
    .param p3, "periodDurationUs"    # J

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v3, p1, v3

    long-to-int v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    .line 171
    .local v3, "duration":J
    mul-long v1, v1, v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v1, v5

    return-wide v1

    .line 173
    .end local v3    # "duration":J
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)I

    move-result v0

    .line 174
    .local v0, "segmentCount":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    cmp-long v5, p1, v3

    if-nez v5, :cond_1

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v1

    sub-long v1, p3, v1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long v3, v3, v1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long v1, v3, v1

    .line 174
    :goto_0
    return-wide v1
.end method

.method public getSegmentNum(JJ)J
    .locals 18
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 135
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v1

    .line 136
    .local v1, "firstSegmentNum":J
    move-wide/from16 v3, p3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)I

    move-result v5

    int-to-long v5, v5

    .line 137
    .local v5, "segmentCount":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 138
    return-wide v1

    .line 140
    :cond_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/16 v8, 0x1

    if-nez v7, :cond_3

    .line 142
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v12, 0xf4240

    mul-long v10, v10, v12

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v10, v12

    .line 143
    .local v10, "durationUs":J
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    div-long v14, p1, v10

    add-long/2addr v12, v14

    .line 145
    .local v12, "segmentNum":J
    cmp-long v7, v12, v1

    if-gez v7, :cond_1

    move-wide v7, v1

    goto :goto_0

    :cond_1
    const-wide/16 v14, -0x1

    cmp-long v7, v5, v14

    if-nez v7, :cond_2

    move-wide v7, v12

    goto :goto_0

    :cond_2
    add-long v14, v1, v5

    sub-long/2addr v14, v8

    .line 147
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 145
    :goto_0
    return-wide v7

    .line 150
    .end local v10    # "durationUs":J
    .end local v12    # "segmentNum":J
    :cond_3
    move-wide v10, v1

    .line 151
    .local v10, "lowIndex":J
    add-long v12, v1, v5

    sub-long/2addr v12, v8

    .line 152
    .local v12, "highIndex":J
    :goto_1
    cmp-long v7, v10, v12

    if-gtz v7, :cond_6

    .line 153
    sub-long v14, v12, v10

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    add-long/2addr v14, v10

    .line 154
    .local v14, "midIndex":J
    invoke-virtual {v0, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v16

    .line 155
    .local v16, "midTimeUs":J
    cmp-long v7, v16, p1

    if-gez v7, :cond_4

    .line 156
    add-long v10, v14, v8

    goto :goto_2

    .line 157
    :cond_4
    cmp-long v7, v16, p1

    if-lez v7, :cond_5

    .line 158
    sub-long v12, v14, v8

    .line 162
    .end local v14    # "midIndex":J
    .end local v16    # "midTimeUs":J
    :goto_2
    goto :goto_1

    .line 160
    .restart local v14    # "midIndex":J
    .restart local v16    # "midTimeUs":J
    :cond_5
    return-wide v14

    .line 163
    .end local v14    # "midIndex":J
    .end local v16    # "midTimeUs":J
    :cond_6
    cmp-long v7, v10, v1

    if-nez v7, :cond_7

    move-wide v7, v10

    goto :goto_3

    :cond_7
    move-wide v7, v12

    :goto_3
    return-wide v7
.end method

.method public final getSegmentTimeUs(J)J
    .locals 8
    .param p1, "sequenceNumber"    # J

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->presentationTimeOffset:J

    sub-long/2addr v0, v2

    move-wide v2, v0

    .local v0, "unscaledSegmentTime":J
    goto :goto_0

    .line 189
    .end local v0    # "unscaledSegmentTime":J
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long v0, v0, v2

    move-wide v2, v0

    .line 191
    .local v2, "unscaledSegmentTime":J
    :goto_0
    const-wide/32 v4, 0xf4240

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getSegmentUrl(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public isExplicit()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

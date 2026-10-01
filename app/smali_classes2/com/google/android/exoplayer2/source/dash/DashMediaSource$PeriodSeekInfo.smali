.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodSeekInfo"
.end annotation


# instance fields
.field public final availableEndTimeUs:J

.field public final availableStartTimeUs:J

.field public final isIndexExplicit:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0
    .param p1, "isIndexExplicit"    # Z
    .param p2, "availableStartTimeUs"    # J
    .param p4, "availableEndTimeUs"    # J

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    .line 1109
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 1110
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    .line 1111
    return-void
.end method

.method public static createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .locals 27
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .param p1, "durationUs"    # J

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1055
    .local v7, "adaptationSetCount":I
    const-wide/16 v1, 0x0

    .line 1056
    .local v1, "availableStartTimeUs":J
    const-wide v3, 0x7fffffffffffffffL

    .line 1057
    .local v3, "availableEndTimeUs":J
    const/4 v5, 0x0

    .line 1058
    .local v5, "isIndexExplicit":Z
    const/4 v6, 0x0

    .line 1060
    .local v6, "seenEmptyIndex":Z
    const/4 v8, 0x0

    .line 1061
    .local v8, "haveAudioVideoAdaptationSets":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 1062
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v10, v10, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    .line 1063
    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    goto :goto_1

    .line 1061
    .end local v10    # "type":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1064
    .restart local v10    # "type":I
    :cond_1
    :goto_1
    const/4 v8, 0x1

    .line 1065
    nop

    .line 1069
    .end local v9    # "i":I
    .end local v10    # "type":I
    :cond_2
    const/4 v9, 0x0

    move-wide v12, v1

    move-wide v14, v3

    move v11, v5

    move v10, v9

    move v9, v6

    .end local v1    # "availableStartTimeUs":J
    .end local v3    # "availableEndTimeUs":J
    .end local v5    # "isIndexExplicit":Z
    .end local v6    # "seenEmptyIndex":Z
    .local v9, "seenEmptyIndex":Z
    .local v10, "i":I
    .local v11, "isIndexExplicit":Z
    .local v12, "availableStartTimeUs":J
    .local v14, "availableEndTimeUs":J
    :goto_2
    if-ge v10, v7, :cond_8

    .line 1070
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 1073
    .local v1, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    if-eqz v8, :cond_3

    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1074
    move-wide/from16 v5, p1

    move/from16 v17, v7

    move/from16 v18, v8

    goto/16 :goto_3

    .line 1077
    :cond_3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v2

    .line 1078
    .local v2, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v2, :cond_4

    .line 1079
    move-object v3, v1

    .end local v1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .local v3, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-object v4, v2

    .end local v2    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .local v4, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    const/4 v2, 0x1

    move-object v5, v3

    move-object v6, v4

    .end local v3    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v4    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .local v5, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .local v6, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    const-wide/16 v3, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v5, p1

    .end local v5    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v6    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .local v16, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .local v17, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    return-object v1

    .line 1081
    .end local v16    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v17    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local v2    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :cond_4
    move-wide/from16 v5, p1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v2    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v16    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local v17    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-interface/range {v17 .. v17}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v1

    or-int/2addr v1, v11

    .line 1082
    .end local v11    # "isIndexExplicit":Z
    .local v1, "isIndexExplicit":Z
    move-object/from16 v4, v17

    .end local v17    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v4    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    invoke-interface {v4, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v2

    .line 1083
    .local v2, "segmentCount":I
    if-nez v2, :cond_5

    .line 1084
    const/4 v3, 0x1

    .line 1085
    .end local v9    # "seenEmptyIndex":Z
    .local v3, "seenEmptyIndex":Z
    const-wide/16 v11, 0x0

    .line 1086
    .end local v12    # "availableStartTimeUs":J
    .local v11, "availableStartTimeUs":J
    const-wide/16 v13, 0x0

    move v9, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move-wide v14, v13

    move-wide v12, v11

    move v11, v1

    .end local v14    # "availableEndTimeUs":J
    .local v13, "availableEndTimeUs":J
    goto :goto_3

    .line 1087
    .end local v3    # "seenEmptyIndex":Z
    .end local v11    # "availableStartTimeUs":J
    .end local v13    # "availableEndTimeUs":J
    .restart local v9    # "seenEmptyIndex":Z
    .restart local v12    # "availableStartTimeUs":J
    .restart local v14    # "availableEndTimeUs":J
    :cond_5
    if-nez v9, :cond_7

    .line 1088
    move v3, v1

    .end local v1    # "isIndexExplicit":Z
    .local v3, "isIndexExplicit":Z
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v0

    .line 1089
    .local v0, "firstSegmentNum":J
    move/from16 v17, v7

    move/from16 v18, v8

    .end local v7    # "adaptationSetCount":I
    .end local v8    # "haveAudioVideoAdaptationSets":Z
    .local v17, "adaptationSetCount":I
    .local v18, "haveAudioVideoAdaptationSets":Z
    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v7

    .line 1090
    .local v7, "adaptationSetAvailableStartTimeUs":J
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1091
    .end local v12    # "availableStartTimeUs":J
    .restart local v11    # "availableStartTimeUs":J
    const/4 v13, -0x1

    if-eq v2, v13, :cond_6

    .line 1092
    move-wide/from16 v19, v0

    .end local v0    # "firstSegmentNum":J
    .local v19, "firstSegmentNum":J
    int-to-long v0, v2

    add-long v0, v19, v0

    const-wide/16 v21, 0x1

    sub-long v0, v0, v21

    .line 1093
    .local v0, "lastSegmentNum":J
    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v21

    .line 1094
    invoke-interface {v4, v0, v1, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v23

    move-wide/from16 v25, v0

    .end local v0    # "lastSegmentNum":J
    .local v25, "lastSegmentNum":J
    add-long v0, v21, v23

    .line 1095
    .local v0, "adaptationSetAvailableEndTimeUs":J
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    move-wide v14, v13

    move-wide v12, v11

    move v11, v3

    .end local v14    # "availableEndTimeUs":J
    .restart local v13    # "availableEndTimeUs":J
    goto :goto_3

    .line 1091
    .end local v13    # "availableEndTimeUs":J
    .end local v19    # "firstSegmentNum":J
    .end local v25    # "lastSegmentNum":J
    .local v0, "firstSegmentNum":J
    .restart local v14    # "availableEndTimeUs":J
    :cond_6
    move-wide/from16 v19, v0

    .end local v0    # "firstSegmentNum":J
    .restart local v19    # "firstSegmentNum":J
    move-wide v12, v11

    move v11, v3

    goto :goto_3

    .line 1087
    .end local v3    # "isIndexExplicit":Z
    .end local v11    # "availableStartTimeUs":J
    .end local v17    # "adaptationSetCount":I
    .end local v18    # "haveAudioVideoAdaptationSets":Z
    .end local v19    # "firstSegmentNum":J
    .restart local v1    # "isIndexExplicit":Z
    .local v7, "adaptationSetCount":I
    .restart local v8    # "haveAudioVideoAdaptationSets":Z
    .restart local v12    # "availableStartTimeUs":J
    :cond_7
    move v3, v1

    move/from16 v17, v7

    move/from16 v18, v8

    .end local v1    # "isIndexExplicit":Z
    .end local v7    # "adaptationSetCount":I
    .end local v8    # "haveAudioVideoAdaptationSets":Z
    .restart local v3    # "isIndexExplicit":Z
    .restart local v17    # "adaptationSetCount":I
    .restart local v18    # "haveAudioVideoAdaptationSets":Z
    move v11, v3

    .line 1069
    .end local v2    # "segmentCount":I
    .end local v3    # "isIndexExplicit":Z
    .end local v4    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v16    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .local v11, "isIndexExplicit":Z
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v7, v17

    move/from16 v8, v18

    goto/16 :goto_2

    .line 1099
    .end local v10    # "i":I
    .end local v17    # "adaptationSetCount":I
    .end local v18    # "haveAudioVideoAdaptationSets":Z
    .restart local v7    # "adaptationSetCount":I
    .restart local v8    # "haveAudioVideoAdaptationSets":Z
    :cond_8
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    invoke-direct/range {v10 .. v15}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    return-object v10
.end method

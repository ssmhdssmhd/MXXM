.class final Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "XingSeeker"


# instance fields
.field private final dataEndPosition:J

.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJ)V
    .locals 9
    .param p1, "dataStartPosition"    # J
    .param p3, "xingFrameSize"    # I
    .param p4, "durationUs"    # J

    .line 96
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .end local p1    # "dataStartPosition":J
    .end local p3    # "xingFrameSize":I
    .end local p4    # "durationUs":J
    .local v1, "dataStartPosition":J
    .local v3, "xingFrameSize":I
    .local v4, "durationUs":J
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    .line 102
    return-void
.end method

.method private constructor <init>(JIJJ[J)V
    .locals 3
    .param p1, "dataStartPosition"    # J
    .param p3, "xingFrameSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "dataSize"    # J
    .param p8, "tableOfContents"    # [J

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    .line 111
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    .line 112
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    .line 113
    iput-object p8, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 114
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    .line 115
    const-wide/16 v0, -0x1

    cmp-long v2, p6, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p1, p6

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataEndPosition:J

    .line 116
    return-void
.end method

.method public static create(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;
    .locals 23
    .param p0, "inputLength"    # J
    .param p2, "position"    # J
    .param p4, "mpegAudioHeader"    # Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
    .param p5, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 49
    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    iget v3, v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 50
    .local v3, "samplesPerFrame":I
    iget v4, v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 52
    .local v4, "sampleRate":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 54
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    move v7, v6

    .local v7, "frameCount":I
    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 58
    :cond_0
    int-to-long v8, v7

    int-to-long v10, v3

    const-wide/32 v12, 0xf4240

    mul-long v10, v10, v12

    int-to-long v12, v4

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 60
    .local v18, "durationUs":J
    and-int/lit8 v6, v5, 0x6

    const/4 v8, 0x6

    if-eq v6, v8, :cond_1

    .line 62
    new-instance v14, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    move-wide/from16 v15, p2

    move/from16 v17, v6

    invoke-direct/range {v14 .. v19}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJ)V

    return-object v14

    .line 65
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    int-to-long v8, v6

    .line 66
    .local v8, "dataSize":J
    const/16 v6, 0x64

    new-array v10, v6, [J

    .line 67
    .local v10, "tableOfContents":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v6, :cond_2

    .line 68
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    int-to-long v12, v12

    aput-wide v12, v10, v11

    .line 67
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 75
    .end local v11    # "i":I
    :cond_2
    const-wide/16 v11, -0x1

    cmp-long v6, v0, v11

    if-eqz v6, :cond_3

    add-long v11, p2, v8

    cmp-long v6, v0, v11

    if-eqz v6, :cond_3

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XING data size mismatch: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-long v11, p2, v8

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "XingSeeker"

    invoke-static {v11, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_3
    new-instance v14, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    move-wide/from16 v15, p2

    move/from16 v17, v6

    move-wide/from16 v20, v8

    move-object/from16 v22, v10

    .end local v8    # "dataSize":J
    .end local v10    # "tableOfContents":[J
    .local v20, "dataSize":J
    .local v22, "tableOfContents":[J
    invoke-direct/range {v14 .. v22}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    return-object v14

    .line 56
    .end local v7    # "frameCount":I
    .end local v18    # "durationUs":J
    .end local v20    # "dataSize":J
    .end local v22    # "tableOfContents":[J
    :cond_4
    :goto_1
    const/4 v6, 0x0

    return-object v6
.end method

.method private getTimeUsForTableIndex(I)J
    .locals 4
    .param p1, "tableIndex"    # I

    .line 187
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 17
    .param p1, "timeUs"    # J

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v1

    .line 128
    :cond_0
    const-wide/16 v9, 0x0

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    move-wide/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    .line 129
    .end local p1    # "timeUs":J
    .local v1, "timeUs":J
    long-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v7

    .line 131
    .local v3, "percent":D
    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    cmpg-double v11, v3, v7

    if-gtz v11, :cond_1

    .line 132
    const-wide/16 v5, 0x0

    .local v5, "scaledPosition":D
    goto :goto_1

    .line 133
    .end local v5    # "scaledPosition":D
    :cond_1
    cmpl-double v7, v3, v5

    if-ltz v7, :cond_2

    .line 134
    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    .restart local v5    # "scaledPosition":D
    goto :goto_1

    .line 136
    .end local v5    # "scaledPosition":D
    :cond_2
    double-to-int v5, v3

    .line 137
    .local v5, "prevTableIndex":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 138
    .local v6, "tableOfContents":[J
    aget-wide v7, v6, v5

    long-to-double v7, v7

    .line 139
    .local v7, "prevScaledPosition":D
    const/16 v11, 0x63

    if-ne v5, v11, :cond_3

    move-wide v11, v9

    goto :goto_0

    :cond_3
    add-int/lit8 v11, v5, 0x1

    aget-wide v11, v6, v11

    long-to-double v11, v11

    .line 141
    .local v11, "nextScaledPosition":D
    :goto_0
    int-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v13, v3, v13

    .line 142
    .local v13, "interpolateFraction":D
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v15, v11, v7

    mul-double v15, v15, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v15, v7

    move-wide v5, v15

    .line 145
    .end local v6    # "tableOfContents":[J
    .end local v7    # "prevScaledPosition":D
    .end local v11    # "nextScaledPosition":D
    .end local v13    # "interpolateFraction":D
    .local v5, "scaledPosition":D
    :goto_1
    div-double v7, v5, v9

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 147
    .local v9, "positionOffset":J
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v11, v7

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v13, 0x1

    sub-long v13, v7, v13

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v7

    .line 148
    .end local v9    # "positionOffset":J
    .local v7, "positionOffset":J
    new-instance v9, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v10, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v11, v7

    invoke-direct {v10, v1, v2, v11, v12}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v9
.end method

.method public getTimeUs(J)J
    .locals 21
    .param p1, "position"    # J

    .line 153
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataStartPosition:J

    sub-long v1, p1, v1

    .line 154
    .local v1, "positionOffset":J
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    move-wide v15, v1

    goto :goto_2

    .line 157
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 158
    .local v3, "tableOfContents":[J
    long-to-double v4, v1

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 159
    .local v4, "scaledPosition":D
    double-to-long v6, v4

    const/4 v8, 0x1

    invoke-static {v3, v6, v7, v8, v8}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v6

    .line 160
    .local v6, "prevTableIndex":I
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v7

    .line 161
    .local v7, "prevTimeUs":J
    aget-wide v9, v3, v6

    .line 162
    .local v9, "prevScaledPosition":J
    add-int/lit8 v11, v6, 0x1

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v11

    .line 163
    .local v11, "nextTimeUs":J
    const/16 v13, 0x63

    if-ne v6, v13, :cond_1

    const-wide/16 v13, 0x100

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v6, 0x1

    aget-wide v13, v3, v13

    .line 165
    .local v13, "nextScaledPosition":J
    :goto_0
    cmp-long v15, v9, v13

    if-nez v15, :cond_2

    const-wide/16 v15, 0x0

    move-wide/from16 v19, v15

    move-wide v15, v1

    move-wide/from16 v0, v19

    goto :goto_1

    :cond_2
    move-wide v15, v1

    .end local v1    # "positionOffset":J
    .local v15, "positionOffset":J
    long-to-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v4, v0

    move-wide/from16 v17, v0

    sub-long v0, v13, v9

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v17, v0

    .line 167
    .local v0, "interpolateFraction":D
    :goto_1
    move-wide/from16 v17, v0

    .end local v0    # "interpolateFraction":D
    .local v17, "interpolateFraction":D
    sub-long v0, v11, v7

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, v7

    return-wide v0

    .line 154
    .end local v3    # "tableOfContents":[J
    .end local v4    # "scaledPosition":D
    .end local v6    # "prevTableIndex":I
    .end local v7    # "prevTimeUs":J
    .end local v9    # "prevScaledPosition":J
    .end local v11    # "nextTimeUs":J
    .end local v13    # "nextScaledPosition":J
    .end local v15    # "positionOffset":J
    .end local v17    # "interpolateFraction":D
    .restart local v1    # "positionOffset":J
    :cond_3
    move-wide v15, v1

    .line 155
    .end local v1    # "positionOffset":J
    .restart local v15    # "positionOffset":J
    :goto_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

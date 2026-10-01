.class public final Lcom/google/android/exoplayer2/video/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# instance fields
.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "pixelWidthAspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF)V"
        }
    .end annotation

    .line 82
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 84
    iput p2, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 85
    iput p3, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->width:I

    .line 86
    iput p4, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->height:I

    .line 87
    iput p5, p0, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 88
    return-void
.end method

.method private static buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B
    .locals 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 92
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 93
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 94
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public static parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;
    .locals 10
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    .line 50
    .local v4, "nalUnitLengthFieldLength":I
    if-eq v4, v1, :cond_3

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 55
    .local v0, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "j":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 59
    .local v1, "numPictureParameterSets":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 60
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lcom/google/android/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    .end local v2    # "j":I
    :cond_1
    const/4 v2, -0x1

    .line 64
    .local v2, "width":I
    const/4 v5, -0x1

    .line 65
    .local v5, "height":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 66
    .local v6, "pixelWidthAspectRatio":F
    if-lez v0, :cond_2

    .line 67
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 68
    .local v8, "sps":[B
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v9, v8

    invoke-static {v7, v4, v9}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v7

    .line 70
    .local v7, "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    iget v9, v7, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    move v2, v9

    .line 71
    iget v9, v7, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    move v5, v9

    .line 72
    iget v9, v7, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    move v6, v9

    move v7, v6

    move v6, v5

    move v5, v2

    goto :goto_2

    .line 66
    .end local v7    # "spsData":Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .end local v8    # "sps":[B
    :cond_2
    move v7, v6

    move v6, v5

    move v5, v2

    .line 74
    .end local v2    # "width":I
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "pixelWidthAspectRatio":F
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/video/AvcConfig;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/video/AvcConfig;-><init>(Ljava/util/List;IIIF)V

    return-object v2

    .line 51
    .end local v0    # "numSequenceParameterSets":I
    .end local v1    # "numPictureParameterSets":I
    .end local v3    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "pixelWidthAspectRatio":F
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v4    # "nalUnitLengthFieldLength":I
    .restart local p0    # "data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Error parsing AVC config"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

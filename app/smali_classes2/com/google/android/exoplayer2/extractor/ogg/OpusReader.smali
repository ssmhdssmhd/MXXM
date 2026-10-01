.class final Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final OPUS_CODE:I

.field private static final OPUS_SIGNATURE:[B

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private headerRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "Opus"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private getPacketDurationUs([B)J
    .locals 8
    .param p1, "packet"    # [B

    .line 105
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 107
    .local v0, "toc":I
    and-int/lit8 v1, v0, 0x3

    packed-switch v1, :pswitch_data_0

    .line 116
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3f

    .local v1, "frames":I
    goto :goto_0

    .line 113
    .end local v1    # "frames":I
    :pswitch_0
    const/4 v1, 0x2

    .line 114
    .restart local v1    # "frames":I
    goto :goto_0

    .line 109
    .end local v1    # "frames":I
    :pswitch_1
    const/4 v1, 0x1

    .line 110
    .restart local v1    # "frames":I
    nop

    .line 120
    :goto_0
    shr-int/lit8 v2, v0, 0x3

    .line 121
    .local v2, "config":I
    and-int/lit8 v3, v2, 0x3

    .line 122
    .local v3, "length":I
    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 123
    const/16 v4, 0x9c4

    shl-int v3, v4, v3

    goto :goto_1

    .line 124
    :cond_0
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v2, v4, :cond_1

    .line 125
    and-int/lit8 v4, v3, 0x1

    shl-int v3, v5, v4

    goto :goto_1

    .line 126
    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 127
    const v3, 0xea60

    goto :goto_1

    .line 129
    :cond_2
    shl-int v3, v5, v3

    .line 131
    :goto_1
    int-to-long v4, v1

    int-to-long v6, v3

    mul-long v4, v4, v6

    return-wide v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putNativeOrderLong(Ljava/util/List;I)V
    .locals 4
    .param p2, "samples"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 93
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    const-wide/32 v2, 0xbb80

    div-long/2addr v0, v2

    .line 94
    .local v0, "ns":J
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 95
    .local v2, "array":[B
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public static verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 48
    return v2

    .line 50
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 51
    .local v0, "header":[B
    sget-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 52
    sget-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 65
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 16
    .param p1, "packet"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 71
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 72
    .local v2, "metadata":[B
    const/16 v4, 0x9

    aget-byte v4, v2, v4

    and-int/lit16 v10, v4, 0xff

    .line 73
    .local v10, "channelCount":I
    const/16 v4, 0xb

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0xa

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 75
    .local v4, "preskip":I
    new-instance v12, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-direct {v0, v12, v4}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 78
    const/16 v5, 0xf00

    invoke-direct {v0, v12, v5}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    .line 80
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x0

    const-string v6, "audio/opus"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const v11, 0xbb80

    const/4 v13, 0x0

    invoke-static/range {v5 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    move-object/from16 v6, p4

    iput-object v5, v6, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    .line 83
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    .line 84
    .end local v2    # "metadata":[B
    .end local v4    # "preskip":I
    .end local v10    # "channelCount":I
    .end local v12    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    nop

    .line 89
    return v3

    .line 85
    :cond_0
    move-object/from16 v6, p4

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v4, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 86
    .local v3, "headerPacket":Z
    :goto_0
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 87
    return v3
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    .line 61
    :cond_0
    return-void
.end method

.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 102
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 132
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .line 489
    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    .line 490
    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    .line 491
    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    .line 492
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 192
    .local v0, "length":I
    const/4 v1, 0x0

    .line 193
    .local v1, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 194
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_3

    .line 195
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 196
    .local v3, "value":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 197
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 199
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 200
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 204
    return-void

    .line 206
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v3, :cond_1

    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 209
    :cond_1
    if-eqz v3, :cond_2

    .line 210
    const/4 v1, 0x0

    .line 212
    :cond_2
    nop

    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    .line 213
    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 216
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .line 427
    sub-int v0, p2, p1

    .line 429
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 430
    if-nez v0, :cond_1

    .line 431
    return p2

    .line 434
    :cond_1
    const/4 v3, 0x2

    if-eqz p3, :cond_4

    .line 435
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_2

    .line 436
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 437
    add-int/lit8 v1, p1, -0x3

    return v1

    .line 438
    :cond_2
    if-le v0, v2, :cond_3

    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    .line 439
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 440
    add-int/lit8 v1, p1, -0x2

    return v1

    .line 441
    :cond_3
    if-le v0, v3, :cond_4

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 443
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 444
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 448
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 451
    .local v4, "limit":I
    add-int/lit8 v5, p1, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_8

    .line 452
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    .line 455
    :cond_5
    add-int/lit8 v6, v5, -0x2

    aget-byte v6, p0, v6

    if-nez v6, :cond_7

    add-int/lit8 v6, v5, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_7

    aget-byte v6, p0, v5

    if-ne v6, v2, :cond_7

    .line 456
    if-eqz p3, :cond_6

    .line 457
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 459
    :cond_6
    add-int/lit8 v1, v5, -0x2

    return v1

    .line 463
    :cond_7
    add-int/lit8 v5, v5, -0x2

    .line 451
    :goto_2
    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 467
    .end local v5    # "i":I
    :cond_8
    if-eqz p3, :cond_f

    .line 469
    if-le v0, v3, :cond_a

    add-int/lit8 v5, p2, -0x3

    aget-byte v5, p0, v5

    if-nez v5, :cond_9

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_9

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    if-ne v0, v3, :cond_b

    aget-boolean v5, p3, v3

    if-eqz v5, :cond_9

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_9

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_9

    goto :goto_3

    :cond_b
    aget-boolean v5, p3, v2

    if-eqz v5, :cond_9

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v2, :cond_9

    :goto_3
    const/4 v5, 0x1

    :goto_4
    aput-boolean v5, p3, v1

    .line 474
    if-le v0, v2, :cond_c

    add-int/lit8 v5, p2, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    goto :goto_5

    :cond_c
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_d

    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_d

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    aput-boolean v5, p3, v2

    .line 477
    add-int/lit8 v5, p2, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_e

    const/4 v1, 0x1

    :cond_e
    aput-boolean v1, p3, v3

    .line 480
    :cond_f
    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 495
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    .line 496
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 497
    return v0

    .line 495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 254
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 242
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "nalUnitHeaderFirstByte"    # B

    .line 227
    const-string/jumbo v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 229
    :cond_0
    const-string/jumbo v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x7e

    shr-int/2addr v0, v1

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1
.end method

.method public static parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 5
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 395
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 396
    .local v0, "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 397
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 398
    .local v1, "picParameterSetId":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 399
    .local v2, "seqParameterSetId":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 400
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    .line 401
    .local v3, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v4, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v4
.end method

.method public static parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 29
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .line 267
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 268
    .local v0, "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 269
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 270
    .local v6, "profileIdc":I
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 271
    .local v7, "constraintsFlagsAndReservedZero2Bits":I
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    .line 272
    .local v8, "levelIdc":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 274
    .local v9, "seqParameterSetId":I
    const/4 v5, 0x1

    .line 275
    .local v5, "chromaFormatIdc":I
    const/4 v10, 0x0

    .line 276
    .local v10, "separateColorPlaneFlag":Z
    const/16 v11, 0x64

    const/4 v12, 0x3

    if-eq v6, v11, :cond_1

    const/16 v11, 0x6e

    if-eq v6, v11, :cond_1

    const/16 v11, 0x7a

    if-eq v6, v11, :cond_1

    const/16 v11, 0xf4

    if-eq v6, v11, :cond_1

    const/16 v11, 0x2c

    if-eq v6, v11, :cond_1

    const/16 v11, 0x53

    if-eq v6, v11, :cond_1

    const/16 v11, 0x56

    if-eq v6, v11, :cond_1

    const/16 v11, 0x76

    if-eq v6, v11, :cond_1

    const/16 v11, 0x80

    if-eq v6, v11, :cond_1

    const/16 v11, 0x8a

    if-ne v6, v11, :cond_0

    goto :goto_0

    :cond_0
    move v13, v10

    goto :goto_4

    .line 279
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 280
    if-ne v5, v12, :cond_2

    .line 281
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 283
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 284
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 285
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 286
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    .line 287
    .local v11, "seqScalingMatrixPresentFlag":Z
    if-eqz v11, :cond_6

    .line 288
    if-eq v5, v12, :cond_3

    const/16 v14, 0x8

    goto :goto_1

    :cond_3
    const/16 v14, 0xc

    .line 289
    .local v14, "limit":I
    :goto_1
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v14, :cond_6

    .line 290
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    .line 291
    .local v16, "seqScalingListPresentFlag":Z
    if-eqz v16, :cond_5

    .line 292
    const/4 v13, 0x6

    if-ge v15, v13, :cond_4

    const/16 v13, 0x10

    goto :goto_3

    :cond_4
    const/16 v13, 0x40

    :goto_3
    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V

    .line 289
    .end local v16    # "seqScalingListPresentFlag":Z
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 298
    .end local v11    # "seqScalingMatrixPresentFlag":Z
    .end local v14    # "limit":I
    .end local v15    # "i":I
    :cond_6
    move v13, v10

    .end local v10    # "separateColorPlaneFlag":Z
    .local v13, "separateColorPlaneFlag":Z
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/lit8 v15, v10, 0x4

    .line 299
    .local v15, "frameNumLength":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 300
    .local v10, "picOrderCntType":I
    const/4 v11, 0x0

    .line 301
    .local v11, "picOrderCntLsbLength":I
    const/4 v14, 0x0

    .line 302
    .local v14, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v4, 0x1

    if-nez v10, :cond_7

    .line 304
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    add-int/lit8 v11, v18, 0x4

    move/from16 v20, v13

    const/16 v18, 0x1

    goto :goto_6

    .line 305
    :cond_7
    if-ne v10, v4, :cond_8

    .line 306
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    .line 307
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 308
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 309
    const/16 v18, 0x1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    move/from16 v20, v13

    .end local v13    # "separateColorPlaneFlag":Z
    .local v20, "separateColorPlaneFlag":Z
    int-to-long v12, v4

    .line 310
    .local v12, "numRefFramesInPicOrderCntCycle":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    int-to-long v1, v4

    cmp-long v21, v1, v12

    if-gez v21, :cond_9

    .line 311
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 310
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto :goto_5

    .line 305
    .end local v4    # "i":I
    .end local v12    # "numRefFramesInPicOrderCntCycle":J
    .end local v20    # "separateColorPlaneFlag":Z
    .restart local v13    # "separateColorPlaneFlag":Z
    :cond_8
    move/from16 v20, v13

    const/16 v18, 0x1

    .line 314
    .end local v13    # "separateColorPlaneFlag":Z
    .restart local v20    # "separateColorPlaneFlag":Z
    :cond_9
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 315
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 317
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 318
    .local v1, "picWidthInMbs":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 319
    .local v2, "picHeightInMapUnits":I
    move/from16 v18, v14

    const/4 v4, 0x1

    .end local v14    # "deltaPicOrderAlwaysZeroFlag":Z
    .local v18, "deltaPicOrderAlwaysZeroFlag":Z
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    .line 320
    .local v14, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v12, v14, 0x2

    mul-int v21, v12, v2

    .line 321
    .local v21, "frameHeightInMbs":I
    if-nez v14, :cond_a

    .line 322
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 325
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 326
    mul-int/lit8 v12, v1, 0x10

    .line 327
    .local v12, "frameWidth":I
    mul-int/lit8 v13, v21, 0x10

    .line 328
    .local v13, "frameHeight":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v22

    .line 329
    .local v22, "frameCroppingFlag":Z
    if-eqz v22, :cond_e

    .line 330
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v23

    .line 331
    .local v23, "frameCropLeftOffset":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v24

    .line 332
    .local v24, "frameCropRightOffset":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v25

    .line 333
    .local v25, "frameCropTopOffset":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v26

    .line 336
    .local v26, "frameCropBottomOffset":I
    if-nez v5, :cond_b

    .line 337
    const/4 v4, 0x1

    .line 338
    .local v4, "cropUnitX":I
    rsub-int/lit8 v19, v14, 0x2

    move/from16 v28, v19

    move/from16 v19, v1

    .local v19, "cropUnitY":I
    goto :goto_8

    .line 340
    .end local v4    # "cropUnitX":I
    .end local v19    # "cropUnitY":I
    :cond_b
    const/16 v27, 0x2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x2

    .line 341
    .local v4, "subWidthC":I
    :goto_7
    move/from16 v19, v1

    const/4 v1, 0x1

    .end local v1    # "picWidthInMbs":I
    .local v19, "picWidthInMbs":I
    if-ne v5, v1, :cond_d

    const/4 v1, 0x2

    .line 342
    .local v1, "subHeightC":I
    :cond_d
    move/from16 v27, v4

    .line 343
    .local v27, "cropUnitX":I
    rsub-int/lit8 v28, v14, 0x2

    mul-int v28, v28, v1

    move/from16 v4, v27

    .line 345
    .end local v1    # "subHeightC":I
    .end local v27    # "cropUnitX":I
    .local v4, "cropUnitX":I
    .local v28, "cropUnitY":I
    :goto_8
    add-int v1, v23, v24

    mul-int v1, v1, v4

    sub-int/2addr v12, v1

    .line 346
    add-int v1, v25, v26

    mul-int v1, v1, v28

    sub-int/2addr v13, v1

    goto :goto_9

    .line 329
    .end local v4    # "cropUnitX":I
    .end local v19    # "picWidthInMbs":I
    .end local v23    # "frameCropLeftOffset":I
    .end local v24    # "frameCropRightOffset":I
    .end local v25    # "frameCropTopOffset":I
    .end local v26    # "frameCropBottomOffset":I
    .end local v28    # "cropUnitY":I
    .local v1, "picWidthInMbs":I
    :cond_e
    move/from16 v19, v1

    .line 349
    .end local v1    # "picWidthInMbs":I
    .restart local v19    # "picWidthInMbs":I
    :goto_9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 350
    .local v1, "pixelWidthHeightRatio":F
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    .line 351
    .local v4, "vuiParametersPresentFlag":Z
    if-eqz v4, :cond_13

    .line 352
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v23

    .line 353
    .local v23, "aspectRatioInfoPresentFlag":Z
    if-eqz v23, :cond_12

    .line 354
    move/from16 v24, v1

    const/16 v1, 0x8

    .end local v1    # "pixelWidthHeightRatio":F
    .local v24, "pixelWidthHeightRatio":F
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 355
    .local v1, "aspectRatioIdc":I
    move/from16 v25, v2

    .end local v2    # "picHeightInMapUnits":I
    .local v25, "picHeightInMapUnits":I
    const/16 v2, 0xff

    if-ne v1, v2, :cond_10

    .line 356
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 357
    .local v3, "sarWidth":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 358
    .local v2, "sarHeight":I
    if-eqz v3, :cond_f

    if-eqz v2, :cond_f

    .line 359
    move-object/from16 v26, v0

    .end local v0    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .local v26, "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v2

    div-float v0, v16, v0

    .end local v24    # "pixelWidthHeightRatio":F
    .local v0, "pixelWidthHeightRatio":F
    goto :goto_a

    .line 358
    .end local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .local v0, "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .restart local v24    # "pixelWidthHeightRatio":F
    :cond_f
    move-object/from16 v26, v0

    .line 361
    .end local v0    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .end local v2    # "sarHeight":I
    .end local v3    # "sarWidth":I
    .restart local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    move/from16 v0, v24

    .end local v24    # "pixelWidthHeightRatio":F
    .local v0, "pixelWidthHeightRatio":F
    :goto_a
    move v1, v0

    goto :goto_c

    .end local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .local v0, "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .restart local v24    # "pixelWidthHeightRatio":F
    :cond_10
    move-object/from16 v26, v0

    .end local v0    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .restart local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v0, v0

    if-ge v1, v0, :cond_11

    .line 362
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v1

    move v1, v0

    .end local v24    # "pixelWidthHeightRatio":F
    .local v0, "pixelWidthHeightRatio":F
    goto :goto_c

    .line 364
    .end local v0    # "pixelWidthHeightRatio":F
    .restart local v24    # "pixelWidthHeightRatio":F
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 353
    .end local v24    # "pixelWidthHeightRatio":F
    .end local v25    # "picHeightInMapUnits":I
    .end local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .local v0, "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .local v1, "pixelWidthHeightRatio":F
    .local v2, "picHeightInMapUnits":I
    :cond_12
    move-object/from16 v26, v0

    move/from16 v24, v1

    move/from16 v25, v2

    .end local v0    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .end local v1    # "pixelWidthHeightRatio":F
    .end local v2    # "picHeightInMapUnits":I
    .restart local v24    # "pixelWidthHeightRatio":F
    .restart local v25    # "picHeightInMapUnits":I
    .restart local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    goto :goto_b

    .line 351
    .end local v23    # "aspectRatioInfoPresentFlag":Z
    .end local v24    # "pixelWidthHeightRatio":F
    .end local v25    # "picHeightInMapUnits":I
    .end local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .restart local v0    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .restart local v1    # "pixelWidthHeightRatio":F
    .restart local v2    # "picHeightInMapUnits":I
    :cond_13
    move-object/from16 v26, v0

    move/from16 v24, v1

    move/from16 v25, v2

    .line 369
    .end local v0    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .end local v1    # "pixelWidthHeightRatio":F
    .end local v2    # "picHeightInMapUnits":I
    .restart local v24    # "pixelWidthHeightRatio":F
    .restart local v25    # "picHeightInMapUnits":I
    .restart local v26    # "data":Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    :goto_b
    move/from16 v1, v24

    .end local v24    # "pixelWidthHeightRatio":F
    .restart local v1    # "pixelWidthHeightRatio":F
    :goto_c
    move v0, v5

    .end local v5    # "chromaFormatIdc":I
    .local v0, "chromaFormatIdc":I
    new-instance v5, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move/from16 v16, v10

    move/from16 v17, v11

    move v10, v12

    move v11, v13

    move/from16 v13, v20

    move v12, v1

    .end local v1    # "pixelWidthHeightRatio":F
    .end local v20    # "separateColorPlaneFlag":Z
    .local v10, "frameWidth":I
    .local v11, "frameHeight":I
    .local v12, "pixelWidthHeightRatio":F
    .local v13, "separateColorPlaneFlag":Z
    .local v16, "picOrderCntType":I
    .local v17, "picOrderCntLsbLength":I
    invoke-direct/range {v5 .. v18}, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIIIIFZZIIIZ)V

    return-object v5
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
    .param p1, "size"    # I

    .line 504
    const/16 v0, 0x8

    .line 505
    .local v0, "lastScale":I
    const/16 v1, 0x8

    .line 506
    .local v1, "nextScale":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 507
    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v3

    .line 509
    .local v3, "deltaScale":I
    add-int v4, v0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    move v1, v4

    .line 511
    .end local v3    # "deltaScale":I
    :cond_0
    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v0, v3

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .line 146
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "position":I
    const/4 v2, 0x0

    .line 149
    .local v2, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v1, p1, :cond_2

    .line 150
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v3

    move v1, v3

    .line 151
    if-ge v1, p1, :cond_0

    .line 152
    sget-object v3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v3, v3

    if-gt v3, v2, :cond_1

    .line 154
    sget-object v3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    sput-object v3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 157
    :cond_1
    sget-object v3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v1, v3, v2

    .line 158
    add-int/lit8 v1, v1, 0x3

    move v2, v4

    goto :goto_0

    .line 178
    .end local v1    # "position":I
    .end local v4    # "scratchEscapeCount":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 162
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int v3, p1, v2

    .line 163
    .local v3, "unescapedLength":I
    const/4 v4, 0x0

    .line 164
    .local v4, "escapedPosition":I
    const/4 v5, 0x0

    .line 165
    .local v5, "unescapedPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 166
    sget-object v7, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v7, v7, v6

    .line 167
    .local v7, "nextEscapePosition":I
    sub-int v8, v7, v4

    .line 168
    .local v8, "copyLength":I
    invoke-static {p0, v4, p0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    add-int/2addr v5, v8

    .line 170
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "unescapedPosition":I
    .local v9, "unescapedPosition":I
    const/4 v10, 0x0

    aput-byte v10, p0, v5

    .line 171
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v10, p0, v9

    .line 172
    add-int/lit8 v9, v8, 0x3

    add-int/2addr v4, v9

    .line 165
    .end local v7    # "nextEscapePosition":I
    .end local v8    # "copyLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 175
    .end local v6    # "i":I
    :cond_3
    sub-int v6, v3, v5

    .line 176
    .local v6, "remainingLength":I
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    monitor-exit v0

    return v3

    .line 178
    .end local v1    # "position":I
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4    # "escapedPosition":I
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

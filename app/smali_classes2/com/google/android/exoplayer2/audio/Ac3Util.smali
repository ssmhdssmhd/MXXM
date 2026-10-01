.class public final Lcom/google/android/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 123
    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 127
    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    .line 131
    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    .line 135
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    .line 139
    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    .line 144
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_2
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 511
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 512
    .local v1, "endIndex":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 514
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const v4, -0x1000001

    and-int/2addr v3, v4

    const v4, -0x45908d08

    if-ne v3, v4, :cond_0

    .line 515
    sub-int v3, v2, v0

    return v3

    .line 512
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    .line 484
    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4
    .param p0, "fscod"    # I
    .param p1, "frmsizecod"    # I

    .line 558
    div-int/lit8 v0, p1, 0x2

    .line 559
    .local v0, "halfFrmsizecod":I
    if-ltz p0, :cond_3

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v1, v1

    if-ge p0, v1, :cond_3

    if-ltz p1, :cond_3

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v1, p0

    .line 565
    .local v1, "sampleRate":I
    const v2, 0xac44

    if-ne v1, v2, :cond_1

    .line 566
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    aget v2, v2, v0

    rem-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    return v2

    .line 568
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v2, v2, v0

    .line 569
    .local v2, "bitrate":I
    const/16 v3, 0x7d00

    if-ne v1, v3, :cond_2

    .line 570
    mul-int/lit8 v3, v2, 0x6

    return v3

    .line 572
    :cond_2
    mul-int/lit8 v3, v2, 0x4

    return v3

    .line 562
    .end local v1    # "sampleRate":I
    .end local v2    # "bitrate":I
    :cond_3
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 13
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 160
    .local v0, "fscod":I
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v8, v1, v0

    .line 161
    .local v8, "sampleRate":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 162
    .local v1, "nextByte":I
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v3, v1, 0x38

    shr-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    .line 163
    .local v2, "channelCount":I
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    .line 164
    add-int/lit8 v2, v2, 0x1

    move v7, v2

    goto :goto_0

    .line 163
    :cond_0
    move v7, v2

    .line 166
    .end local v2    # "channelCount":I
    .local v7, "channelCount":I
    :goto_0
    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v3, "audio/ac3"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v2, p1

    move-object v12, p2

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    return-object v3
.end method

.method public static parseAc3SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    .locals 28
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 243
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    .line 244
    .local v1, "initialPosition":I
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 245
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 246
    .local v3, "isEac3":Z
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 248
    const/4 v6, -0x1

    .line 255
    .local v6, "streamType":I
    const/4 v7, 0x3

    const/16 v8, 0x8

    const/4 v10, 0x2

    if-eqz v3, :cond_2b

    .line 257
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 258
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 269
    const/4 v6, -0x1

    goto :goto_1

    .line 266
    :pswitch_0
    const/4 v6, 0x2

    .line 267
    goto :goto_1

    .line 263
    :pswitch_1
    const/4 v6, 0x1

    .line 264
    goto :goto_1

    .line 260
    :pswitch_2
    const/4 v6, 0x0

    .line 261
    nop

    .line 272
    :goto_1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 273
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v4

    mul-int/lit8 v11, v11, 0x2

    .line 274
    .local v11, "frameSize":I
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 277
    .local v12, "fscod":I
    if-ne v12, v7, :cond_1

    .line 278
    const/4 v13, 0x3

    .line 279
    .local v13, "numblkscod":I
    sget-object v14, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    aget v14, v14, v15

    .line 280
    .local v14, "sampleRate":I
    const/4 v15, 0x6

    .local v15, "audioBlocks":I
    goto :goto_2

    .line 282
    .end local v13    # "numblkscod":I
    .end local v14    # "sampleRate":I
    .end local v15    # "audioBlocks":I
    :cond_1
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 283
    .restart local v13    # "numblkscod":I
    sget-object v14, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v15, v14, v13

    .line 284
    .restart local v15    # "audioBlocks":I
    sget-object v14, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v14, v14, v12

    .line 286
    .restart local v14    # "sampleRate":I
    :goto_2
    mul-int/lit16 v9, v15, 0x100

    .line 287
    .local v9, "sampleCount":I
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 288
    .local v10, "acmod":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 289
    .local v18, "lfeon":Z
    sget-object v19, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v19, v19, v10

    add-int v19, v19, v18

    .line 290
    .local v19, "channelCount":I
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 291
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 292
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 294
    :cond_2
    if-nez v10, :cond_3

    .line 295
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 296
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 297
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 300
    :cond_3
    if-ne v6, v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 301
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 303
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    const/4 v7, 0x4

    if-eqz v5, :cond_1f

    .line 304
    const/4 v5, 0x2

    if-le v10, v5, :cond_5

    .line 305
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 307
    :cond_5
    and-int/lit8 v17, v10, 0x1

    if-eqz v17, :cond_6

    if-le v10, v5, :cond_6

    .line 308
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 307
    :cond_6
    const/4 v5, 0x6

    .line 310
    :goto_3
    and-int/lit8 v16, v10, 0x4

    if-eqz v16, :cond_7

    .line 311
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 313
    :cond_7
    if-eqz v18, :cond_8

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 314
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 316
    :cond_8
    if-nez v6, :cond_1f

    .line 317
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 318
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    .line 317
    :cond_9
    const/4 v5, 0x6

    .line 320
    :goto_4
    if-nez v10, :cond_a

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 321
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 323
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 324
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 326
    :cond_b
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 327
    .local v8, "mixdef":I
    if-ne v8, v4, :cond_c

    .line 328
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_6

    .line 329
    :cond_c
    if-ne v8, v5, :cond_d

    .line 330
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_6

    .line 331
    :cond_d
    const/4 v5, 0x3

    if-ne v8, v5, :cond_1a

    .line 332
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 333
    .local v5, "mixdeflen":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 334
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 335
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 336
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 338
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 339
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 341
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 342
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 344
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 345
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 347
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 348
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 350
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 351
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 353
    :cond_13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 354
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 356
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 357
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 358
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 360
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 361
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 365
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 366
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 367
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 368
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 369
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 370
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_5

    .line 369
    :cond_17
    const/16 v4, 0x8

    goto :goto_5

    .line 367
    :cond_18
    const/16 v4, 0x8

    goto :goto_5

    .line 365
    :cond_19
    const/16 v4, 0x8

    .line 374
    :goto_5
    add-int/lit8 v21, v5, 0x2

    const/16 v23, 0x8

    mul-int/lit8 v4, v21, 0x8

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 375
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 377
    .end local v5    # "mixdeflen":I
    :cond_1a
    :goto_6
    const/4 v5, 0x2

    if-ge v10, v5, :cond_1c

    .line 378
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/16 v5, 0xe

    if-eqz v4, :cond_1b

    .line 379
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 381
    :cond_1b
    if-nez v10, :cond_1c

    .line 382
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 383
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 387
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 388
    if-nez v13, :cond_1d

    .line 389
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_8

    .line 391
    :cond_1d
    const/4 v4, 0x0

    .local v4, "blk":I
    :goto_7
    if-ge v4, v15, :cond_1f

    .line 392
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 393
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 391
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 400
    .end local v4    # "blk":I
    .end local v8    # "mixdef":I
    :cond_1f
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 401
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 402
    const/4 v5, 0x2

    if-ne v10, v5, :cond_20

    .line 403
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 405
    :cond_20
    const/4 v2, 0x6

    if-lt v10, v2, :cond_21

    .line 406
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 408
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 409
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_9

    .line 408
    :cond_22
    const/16 v4, 0x8

    .line 411
    :goto_9
    if-nez v10, :cond_23

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 412
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 414
    :cond_23
    const/4 v5, 0x3

    if-ge v12, v5, :cond_25

    .line 415
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    goto :goto_a

    .line 400
    :cond_24
    const/4 v5, 0x3

    .line 418
    :cond_25
    :goto_a
    if-nez v6, :cond_26

    if-eq v13, v5, :cond_26

    .line 419
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 421
    :cond_26
    const/4 v2, 0x2

    if-ne v6, v2, :cond_29

    if-eq v13, v5, :cond_28

    .line 422
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_b

    :cond_27
    const/4 v5, 0x6

    goto :goto_c

    .line 423
    :cond_28
    :goto_b
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    .line 421
    :cond_29
    const/4 v5, 0x6

    .line 425
    :goto_c
    const-string v2, "audio/eac3"

    .line 426
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 427
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 428
    .local v4, "addbsil":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-ne v7, v5, :cond_2a

    .line 429
    const-string v2, "audio/eac3-joc"

    .line 432
    .end local v4    # "addbsil":I
    .end local v12    # "fscod":I
    .end local v13    # "numblkscod":I
    .end local v15    # "audioBlocks":I
    :cond_2a
    move-object/from16 v21, v2

    move/from16 v22, v6

    move/from16 v26, v9

    move/from16 v25, v11

    move/from16 v24, v14

    move/from16 v23, v19

    goto :goto_e

    .line 433
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v9    # "sampleCount":I
    .end local v10    # "acmod":I
    .end local v11    # "frameSize":I
    .end local v14    # "sampleRate":I
    .end local v18    # "lfeon":Z
    .end local v19    # "channelCount":I
    :cond_2b
    const-string v2, "audio/ac3"

    .line 434
    .restart local v2    # "mimeType":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 435
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 436
    .local v4, "fscod":I
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 437
    .local v5, "frmsizecod":I
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v11

    .line 438
    .restart local v11    # "frameSize":I
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 439
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 440
    .restart local v10    # "acmod":I
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_2c

    const/4 v7, 0x1

    if-eq v10, v7, :cond_2c

    .line 441
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_d

    .line 440
    :cond_2c
    const/4 v7, 0x2

    .line 443
    :goto_d
    and-int/lit8 v8, v10, 0x4

    if-eqz v8, :cond_2d

    .line 444
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 446
    :cond_2d
    if-ne v10, v7, :cond_2e

    .line 447
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 449
    :cond_2e
    sget-object v7, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v14, v7, v4

    .line 450
    .restart local v14    # "sampleRate":I
    const/16 v9, 0x600

    .line 451
    .restart local v9    # "sampleCount":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v18

    .line 452
    .restart local v18    # "lfeon":Z
    sget-object v7, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v7, v7, v10

    add-int v19, v7, v18

    move-object/from16 v21, v2

    move/from16 v22, v6

    move/from16 v26, v9

    move/from16 v25, v11

    move/from16 v24, v14

    move/from16 v23, v19

    .line 454
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v4    # "fscod":I
    .end local v5    # "frmsizecod":I
    .end local v6    # "streamType":I
    .end local v9    # "sampleCount":I
    .end local v11    # "frameSize":I
    .end local v14    # "sampleRate":I
    .local v21, "mimeType":Ljava/lang/String;
    .local v22, "streamType":I
    .local v23, "channelCount":I
    .local v24, "sampleRate":I
    .local v25, "frameSize":I
    .local v26, "sampleCount":I
    :goto_e
    new-instance v20, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;

    const/16 v27, 0x0

    invoke-direct/range {v20 .. v27}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V

    return-object v20

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 4
    .param p0, "data"    # [B

    .line 465
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 466
    const/4 v0, -0x1

    return v0

    .line 468
    :cond_0
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 469
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 470
    const/4 v1, 0x2

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x8

    .line 471
    .local v3, "frmsiz":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 472
    .end local v3    # "frmsiz":I
    .local v2, "frmsiz":I
    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    return v3

    .line 474
    .end local v2    # "frmsiz":I
    :cond_2
    const/4 v2, 0x4

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    shr-int/lit8 v1, v3, 0x6

    .line 475
    .local v1, "fscod":I
    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    .line 476
    .local v2, "frmsizecod":I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v3

    return v3
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 14
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 192
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 196
    .local v0, "fscod":I
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v8, v1, v0

    .line 197
    .local v8, "sampleRate":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 198
    .local v1, "nextByte":I
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v3, v1, 0xe

    shr-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    .line 199
    .local v2, "channelCount":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 205
    and-int/lit8 v3, v1, 0x1e

    shr-int/lit8 v13, v3, 0x1

    .line 206
    .local v13, "numDepSub":I
    if-lez v13, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 210
    .local v3, "lowByteChanLoc":I
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    .line 211
    add-int/lit8 v2, v2, 0x2

    move v7, v2

    goto :goto_0

    .line 214
    .end local v3    # "lowByteChanLoc":I
    :cond_1
    move v7, v2

    .end local v2    # "channelCount":I
    .local v7, "channelCount":I
    :goto_0
    const-string v2, "audio/eac3"

    .line 215
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 217
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    .line 218
    const-string v2, "audio/eac3-joc"

    move-object v3, v2

    goto :goto_1

    .line 217
    :cond_2
    move-object v3, v2

    goto :goto_1

    .line 215
    :cond_3
    move-object v3, v2

    .line 221
    .end local v2    # "mimeType":Ljava/lang/String;
    .local v3, "mimeType":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v2, p1

    move-object/from16 v12, p2

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    return-object v4
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 496
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v0, v1

    .line 497
    .local v0, "fscod":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 498
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    .line 497
    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 553
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 554
    .local v0, "isMlp":Z
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-eqz v0, :cond_1

    const/16 v2, 0x9

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x7

    const/16 v2, 0x28

    shl-int v1, v2, v1

    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .locals 5
    .param p0, "syncframe"    # [B

    .line 533
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v2, -0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_3

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_3

    const/4 v1, 0x7

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xfe

    const/16 v4, 0xba

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 539
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    .line 540
    .local v3, "isMlp":Z
    :cond_1
    if-eqz v3, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    aget-byte v2, p0, v2

    shr-int/lit8 v0, v2, 0x4

    and-int/2addr v0, v1

    const/16 v1, 0x28

    shl-int v0, v1, v0

    return v0

    .line 537
    .end local v3    # "isMlp":Z
    :cond_3
    :goto_1
    return v3
.end method

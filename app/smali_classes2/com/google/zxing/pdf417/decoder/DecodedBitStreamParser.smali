.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    nop

    .line 68
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 70
    nop

    .line 71
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 73
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 82
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    .line 83
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    .local v0, "nineHundred":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 85
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 86
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "nineHundred":Ljava/math/BigInteger;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 23

    .line 444
    move/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 445
    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const/4 v8, 0x6

    const/16 v9, 0x39c

    const/16 v10, 0x384

    const/4 v14, 0x0

    const/16 v15, 0x385

    if-ne v0, v15, :cond_7

    .line 448
    nop

    .line 449
    nop

    .line 450
    new-array v0, v8, [I

    .line 451
    nop

    .line 452
    add-int/lit8 v16, p3, 0x1

    aget v17, p1, p3

    move/from16 v6, v16

    move/from16 v7, v17

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x384

    const-wide/16 v20, 0x0

    .line 453
    :goto_0
    aget v11, p1, v14

    if-ge v6, v11, :cond_4

    if-nez v16, :cond_4

    .line 454
    add-int/lit8 v11, v17, 0x1

    aput v7, v0, v17

    .line 456
    mul-long v20, v20, v18

    const/16 v22, 0x0

    int-to-long v13, v7

    add-long v20, v20, v13

    .line 457
    add-int/lit8 v7, v6, 0x1

    aget v6, p1, v6

    .line 459
    if-eq v6, v10, :cond_3

    if-eq v6, v15, :cond_3

    if-eq v6, v5, :cond_3

    if-eq v6, v9, :cond_3

    if-eq v6, v4, :cond_3

    if-eq v6, v3, :cond_3

    if-ne v6, v2, :cond_0

    goto :goto_2

    .line 469
    :cond_0
    rem-int/lit8 v13, v11, 0x5

    if-nez v13, :cond_2

    if-lez v11, :cond_2

    .line 472
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_1

    .line 473
    rsub-int/lit8 v13, v11, 0x5

    mul-int/lit8 v13, v13, 0x8

    shr-long v13, v20, v13

    long-to-int v14, v13

    int-to-byte v13, v14

    invoke-virtual {v1, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 475
    :cond_1
    nop

    .line 476
    move v14, v7

    move v7, v6

    move v6, v14

    const/4 v14, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    goto :goto_0

    .line 453
    :cond_2
    move v14, v7

    move v7, v6

    move v6, v14

    move/from16 v17, v11

    const/4 v14, 0x0

    goto :goto_0

    .line 466
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, -0x1

    .line 467
    move v14, v7

    move v7, v6

    move v6, v14

    move/from16 v17, v11

    const/4 v14, 0x0

    const/16 v16, 0x1

    goto :goto_0

    .line 453
    :cond_4
    const/16 v22, 0x0

    .line 482
    aget v2, p1, v22

    if-ne v6, v2, :cond_5

    if-ge v7, v10, :cond_5

    .line 483
    add-int/lit8 v2, v17, 0x1

    aput v7, v0, v17

    goto :goto_3

    .line 489
    :cond_5
    move/from16 v2, v17

    :goto_3
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v2, :cond_6

    .line 490
    aget v3, v0, v14

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 489
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 493
    :cond_6
    move v0, v6

    goto :goto_9

    :cond_7
    const-wide/16 v18, 0x384

    const/16 v22, 0x0

    if-ne v0, v9, :cond_d

    .line 496
    nop

    .line 497
    nop

    .line 498
    move/from16 v0, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v13, 0x0

    .line 499
    :goto_5
    aget v11, p1, v22

    if-ge v0, v11, :cond_e

    if-nez v6, :cond_e

    .line 500
    add-int/lit8 v11, v0, 0x1

    aget v0, p1, v0

    .line 501
    if-ge v0, v10, :cond_8

    .line 502
    add-int/lit8 v7, v7, 0x1

    .line 504
    mul-long v13, v13, v18

    move-wide/from16 v20, v13

    int-to-long v12, v0

    add-long v12, v20, v12

    move v0, v11

    move-wide v13, v12

    goto :goto_7

    .line 506
    :cond_8
    if-eq v0, v10, :cond_a

    if-eq v0, v15, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    if-ne v0, v2, :cond_9

    goto :goto_6

    :cond_9
    move v0, v11

    goto :goto_7

    .line 513
    :cond_a
    :goto_6
    add-int/lit8 v11, v11, -0x1

    .line 514
    move v0, v11

    const/4 v6, 0x1

    .line 517
    :goto_7
    rem-int/lit8 v11, v7, 0x5

    if-nez v11, :cond_c

    if-lez v7, :cond_c

    .line 520
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v8, :cond_b

    .line 521
    rsub-int/lit8 v11, v7, 0x5

    mul-int/lit8 v11, v11, 0x8

    shr-long v11, v13, v11

    long-to-int v12, v11

    int-to-byte v11, v12

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 520
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 523
    :cond_b
    nop

    .line 524
    const/4 v7, 0x0

    const-wide/16 v13, 0x0

    .line 526
    :cond_c
    goto :goto_5

    .line 493
    :cond_d
    move/from16 v0, p3

    .line 528
    :cond_e
    :goto_9
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    return v0
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 99
    nop

    .line 100
    aget v2, p0, v2

    .line 101
    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v4, 0x2

    .line 102
    :goto_0
    const/4 v5, 0x0

    aget v5, p0, v5

    if-ge v4, v5, :cond_1

    .line 103
    sparse-switch v2, :sswitch_data_0

    .line 141
    add-int/lit8 v4, v4, -0x1

    .line 142
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 131
    :sswitch_0
    invoke-static {p0, v4, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    .line 132
    goto :goto_1

    .line 118
    :sswitch_1
    add-int/lit8 v2, v4, 0x1

    aget v1, p0, v4

    .line 119
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 121
    goto :goto_1

    .line 124
    :sswitch_2
    add-int/lit8 v2, v4, 0x2

    .line 125
    goto :goto_1

    .line 128
    :sswitch_3
    add-int/lit8 v2, v4, 0x1

    .line 129
    goto :goto_1

    .line 136
    :sswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 112
    :sswitch_5
    add-int/lit8 v2, v4, 0x1

    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    goto :goto_1

    .line 115
    :sswitch_6
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 116
    goto :goto_1

    .line 109
    :sswitch_7
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    .line 110
    goto :goto_1

    .line 105
    :sswitch_8
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 106
    nop

    .line 145
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 146
    add-int/lit8 v4, v2, 0x1

    aget v2, p0, v2

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 151
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_2

    .line 154
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 156
    return-object p0

    .line 152
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_8
        0x385 -> :sswitch_7
        0x386 -> :sswitch_6
        0x391 -> :sswitch_5
        0x39a -> :sswitch_4
        0x39b -> :sswitch_4
        0x39c -> :sswitch_7
        0x39d -> :sswitch_3
        0x39e -> :sswitch_2
        0x39f -> :sswitch_1
        0x3a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 626
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 627
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, p1, :cond_0

    .line 628
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v1

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    aget v3, p0, v1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v1, "resultString":Ljava/lang/String;
    move-object v1, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 632
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 10
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 161
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_5

    .line 165
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 166
    .local v2, "segmentIndexArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 167
    aget v4, p0, p1

    aput v4, v2, v3

    .line 166
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    :cond_0
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 176
    aget v3, p0, p1

    const/16 v4, 0x39b

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 177
    add-int/lit8 p1, p1, 0x1

    .line 178
    aget v3, p0, v1

    sub-int/2addr v3, p1

    new-array v3, v3, [I

    .line 179
    .local v3, "additionalOptionCodeWords":[I
    const/4 v4, 0x0

    .line 181
    .local v4, "additionalOptionCodeWordsIndex":I
    const/4 v6, 0x0

    .local v6, "end":Z
    const/4 v7, 0x0

    .line 182
    :goto_1
    aget v8, p0, v1

    if-ge p1, v8, :cond_2

    if-nez v6, :cond_2

    .line 183
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v8, "codeIndex":I
    aget p1, p0, p1

    .line 184
    .local v7, "code":I
    move v7, p1

    const/16 v9, 0x384

    if-ge p1, v9, :cond_1

    .line 185
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "additionalOptionCodeWordsIndex":I
    .local p1, "additionalOptionCodeWordsIndex":I
    aput v7, v3, v4

    move v4, p1

    move p1, v8

    goto :goto_1

    .line 187
    .end local p1    # "additionalOptionCodeWordsIndex":I
    .restart local v4    # "additionalOptionCodeWordsIndex":I
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 194
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 189
    :pswitch_0
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 190
    add-int/lit8 p1, v8, 0x1

    .line 191
    .end local v8    # "codeIndex":I
    .local p1, "codeIndex":I
    const/4 v6, 0x1

    .line 192
    goto :goto_1

    .line 199
    .end local v7    # "code":I
    :cond_2
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .end local v3    # "additionalOptionCodeWords":[I
    .end local v4    # "additionalOptionCodeWordsIndex":I
    .end local v6    # "end":Z
    goto :goto_2

    .line 200
    :cond_3
    aget v1, p0, p1

    const/16 v3, 0x39a

    if-ne v1, v3, :cond_4

    .line 201
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 202
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 200
    :cond_4
    :goto_2
    nop

    .line 205
    :goto_3
    return p1

    .line 163
    .end local v0    # "fileId":Ljava/lang/StringBuilder;
    .end local v2    # "segmentIndexArray":[I
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 290
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 291
    .local v0, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 292
    .local v1, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v2, 0x0

    .line 293
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1d

    .line 294
    aget v3, p0, v2

    .line 295
    .local v3, "subModeCh":I
    const/4 v4, 0x0

    .line 296
    .local v4, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    const/16 v8, 0x391

    const/16 v9, 0x384

    const/16 v10, 0x1d

    const/16 v11, 0x1a

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 403
    :pswitch_0
    move-object v0, v1

    .line 404
    if-ge v3, v10, :cond_0

    .line 405
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 407
    :cond_0
    if-ne v3, v10, :cond_1

    .line 408
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 409
    :cond_1
    if-ne v3, v8, :cond_2

    .line 412
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 413
    :cond_2
    if-ne v3, v9, :cond_1b

    .line 414
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 389
    :pswitch_1
    move-object v0, v1

    .line 390
    if-ge v3, v11, :cond_3

    .line 391
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto/16 :goto_1

    .line 393
    :cond_3
    if-ne v3, v11, :cond_4

    .line 394
    const/16 v4, 0x20

    goto/16 :goto_1

    .line 395
    :cond_4
    if-ne v3, v9, :cond_1b

    .line 396
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 374
    :pswitch_2
    if-ge v3, v10, :cond_5

    .line 375
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 377
    :cond_5
    if-ne v3, v10, :cond_6

    .line 378
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 379
    :cond_6
    if-ne v3, v8, :cond_7

    .line 380
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 381
    :cond_7
    if-ne v3, v9, :cond_1b

    .line 382
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 349
    :pswitch_3
    const/16 v5, 0x19

    if-ge v3, v5, :cond_8

    .line 350
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_1

    .line 352
    :cond_8
    if-ne v3, v5, :cond_9

    .line 353
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 354
    :cond_9
    if-ne v3, v11, :cond_a

    .line 355
    const/16 v4, 0x20

    goto/16 :goto_1

    .line 356
    :cond_a
    if-ne v3, v7, :cond_b

    .line 357
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 358
    :cond_b
    if-ne v3, v6, :cond_c

    .line 359
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 360
    :cond_c
    if-ne v3, v10, :cond_d

    .line 362
    move-object v1, v0

    .line 363
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 364
    :cond_d
    if-ne v3, v8, :cond_e

    .line 365
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 366
    :cond_e
    if-ne v3, v9, :cond_1b

    .line 367
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 323
    :pswitch_4
    if-ge v3, v11, :cond_f

    .line 324
    add-int/lit8 v5, v3, 0x61

    int-to-char v4, v5

    goto :goto_1

    .line 326
    :cond_f
    if-ne v3, v11, :cond_10

    .line 327
    const/16 v4, 0x20

    goto :goto_1

    .line 328
    :cond_10
    if-ne v3, v7, :cond_11

    .line 330
    move-object v1, v0

    .line 331
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 332
    :cond_11
    if-ne v3, v6, :cond_12

    .line 333
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 334
    :cond_12
    if-ne v3, v10, :cond_13

    .line 336
    move-object v1, v0

    .line 337
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 338
    :cond_13
    if-ne v3, v8, :cond_14

    .line 340
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :cond_14
    if-ne v3, v9, :cond_1b

    .line 342
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 299
    :pswitch_5
    if-ge v3, v11, :cond_15

    .line 301
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto :goto_1

    .line 303
    :cond_15
    if-ne v3, v11, :cond_16

    .line 304
    const/16 v4, 0x20

    goto :goto_1

    .line 305
    :cond_16
    if-ne v3, v7, :cond_17

    .line 306
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 307
    :cond_17
    if-ne v3, v6, :cond_18

    .line 308
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 309
    :cond_18
    if-ne v3, v10, :cond_19

    .line 311
    move-object v1, v0

    .line 312
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 313
    :cond_19
    if-ne v3, v8, :cond_1a

    .line 314
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :cond_1a
    if-ne v3, v9, :cond_1b

    .line 316
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 419
    :cond_1b
    :goto_1
    if-eqz v4, :cond_1c

    .line 421
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :cond_1c
    nop

    .end local v3    # "subModeCh":I
    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 424
    goto/16 :goto_0

    .line 425
    :cond_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "count":I
    const/4 v1, 0x0

    .line 544
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 546
    .local v2, "numericCodewords":[I
    :goto_0
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_6

    if-nez v1, :cond_6

    .line 547
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 548
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_0

    .line 549
    const/4 v1, 0x1

    .line 551
    :cond_0
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1

    .line 552
    aput p1, v2, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_1
    if-eq p1, v3, :cond_2

    const/16 v3, 0x385

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3a0

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x39a

    if-ne p1, v3, :cond_3

    .line 561
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 562
    const/4 v1, 0x1

    .line 565
    :cond_3
    :goto_1
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_4

    const/16 v3, 0x386

    if-eq p1, v3, :cond_4

    if-eqz v1, :cond_5

    .line 572
    :cond_4
    if-lez v0, :cond_5

    .line 573
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const/4 v0, 0x0

    .line 578
    .end local v3    # "s":Ljava/lang/String;
    .end local p1    # "code":I
    :cond_5
    move p1, v4

    goto :goto_0

    .line 579
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 220
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 222
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 224
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 225
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "end":Z
    const/4 v5, 0x0

    .line 226
    :goto_0
    aget v6, p0, v0

    if-ge p1, v6, :cond_1

    if-nez v4, :cond_1

    .line 227
    add-int/lit8 v6, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v6, "codeIndex":I
    aget p1, p0, p1

    .line 228
    .local v5, "code":I
    move v5, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_0

    .line 229
    div-int/lit8 p1, v5, 0x1e

    aput p1, v1, v3

    .line 230
    add-int/lit8 p1, v3, 0x1

    rem-int/lit8 v7, v5, 0x1e

    aput v7, v1, p1

    .line 231
    add-int/lit8 v3, v3, 0x2

    move p1, v6

    goto :goto_0

    .line 233
    :cond_0
    sparse-switch v5, :sswitch_data_0

    move p1, v6

    goto :goto_1

    .line 254
    :sswitch_0
    const/16 p1, 0x391

    aput p1, v1, v3

    .line 255
    add-int/lit8 p1, v6, 0x1

    .end local v6    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v5, p0, v6

    .line 256
    aput v5, v2, v3

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    .end local p1    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, v6, -0x1

    .line 245
    .end local v6    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v4, 0x1

    .line 246
    goto :goto_0

    .line 236
    .end local p1    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :sswitch_2
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "index":I
    .local p1, "index":I
    aput v7, v1, v3

    .line 237
    move v3, p1

    move p1, v6

    goto :goto_0

    .line 261
    .end local v5    # "code":I
    .end local v6    # "codeIndex":I
    .restart local v3    # "index":I
    .local p1, "codeIndex":I
    :goto_1
    goto :goto_0

    .line 262
    :cond_1
    invoke-static {v1, v2, v3, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 263
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_2
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_0
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method

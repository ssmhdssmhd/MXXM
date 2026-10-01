.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 35
    nop

    .line 36
    const-string v0, "isom"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    .line 37
    const-string v0, "iso2"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    .line 38
    const-string v0, "iso3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v3

    .line 39
    const-string v0, "iso4"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v4

    .line 40
    const-string v0, "iso5"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v5

    .line 41
    const-string v0, "iso6"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v6

    .line 42
    const-string v0, "avc1"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v7

    .line 43
    const-string v0, "hvc1"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v8

    .line 44
    const-string v0, "hev1"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v9

    .line 45
    const-string v0, "mp41"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v10

    .line 46
    const-string v0, "mp42"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v11

    .line 47
    const-string v0, "3g2a"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v12

    .line 48
    const-string v0, "3g2b"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v13

    .line 49
    const-string v0, "3gr6"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v14

    .line 50
    const-string v0, "3gs6"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v15

    .line 51
    const-string v0, "3ge6"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v16

    .line 52
    const-string v0, "3gg6"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v17

    .line 53
    const-string v0, "M4V "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v18

    .line 54
    const-string v0, "M4A "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v19

    .line 55
    const-string v0, "f4v "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v20

    .line 56
    const-string v0, "kddi"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v21

    .line 57
    const-string v0, "M4VP"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v22

    .line 58
    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v23

    .line 59
    const-string v0, "MSNV"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v24

    filled-new-array/range {v1 .. v24}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6
    .param p0, "brand"    # I

    .line 179
    ushr-int/lit8 v0, p0, 0x8

    const-string v1, "3gp"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    return v2

    .line 182
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget v5, v0, v4

    .line 183
    .local v5, "compatibleBrand":I
    if-ne v5, p0, :cond_1

    .line 184
    return v2

    .line 182
    .end local v5    # "compatibleBrand":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_2
    return v3
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 23
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "fragmented"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    move-object/from16 v0, p0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    .line 93
    .local v1, "inputLength":J
    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :cond_1
    :goto_0
    long-to-int v4, v3

    .line 96
    .local v4, "bytesToSearch":I
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x40

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 97
    .local v3, "buffer":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v7, 0x0

    .line 98
    .local v7, "bytesSearched":I
    const/4 v8, 0x0

    .line 99
    .local v8, "foundGoodFileType":Z
    const/4 v9, 0x0

    .line 100
    .local v9, "isFragmented":Z
    :goto_1
    const/4 v11, 0x0

    if-ge v7, v4, :cond_10

    .line 102
    const/16 v12, 0x8

    .line 103
    .local v12, "headerSize":I
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 104
    iget-object v13, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v13, v11, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 106
    .local v13, "atomSize":J
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 107
    .local v15, "atomType":I
    const-wide/16 v16, 0x1

    move-wide/from16 v18, v5

    const/16 v5, 0x8

    cmp-long v6, v13, v16

    if-nez v6, :cond_2

    .line 109
    const/16 v12, 0x10

    .line 110
    iget-object v6, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v6, v5, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 112
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v13

    const/16 v22, 0x0

    goto :goto_2

    .line 113
    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v6, v13, v16

    if-nez v6, :cond_4

    .line 115
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    .line 116
    .local v16, "endPosition":J
    cmp-long v6, v16, v18

    if-eqz v6, :cond_3

    .line 117
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v20, v16, v20

    const/16 v22, 0x0

    int-to-long v10, v12

    add-long v13, v20, v10

    goto :goto_2

    .line 116
    :cond_3
    const/16 v22, 0x0

    goto :goto_2

    .line 113
    .end local v16    # "endPosition":J
    :cond_4
    const/16 v22, 0x0

    .line 121
    :goto_2
    int-to-long v10, v12

    cmp-long v16, v13, v10

    if-gez v16, :cond_5

    .line 123
    return v22

    .line 125
    :cond_5
    add-int/2addr v7, v12

    .line 127
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v15, v10, :cond_6

    .line 129
    move-wide/from16 v5, v18

    goto :goto_1

    .line 132
    :cond_6
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq v15, v10, :cond_f

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-ne v15, v10, :cond_7

    move/from16 v17, v7

    goto :goto_7

    .line 138
    :cond_7
    int-to-long v10, v7

    add-long/2addr v10, v13

    move/from16 v17, v7

    .end local v7    # "bytesSearched":I
    .local v17, "bytesSearched":I
    int-to-long v6, v12

    sub-long/2addr v10, v6

    int-to-long v6, v4

    cmp-long v20, v10, v6

    if-ltz v20, :cond_8

    .line 140
    move/from16 v7, v17

    goto :goto_8

    .line 143
    :cond_8
    int-to-long v6, v12

    sub-long v6, v13, v6

    long-to-int v7, v6

    .line 144
    .local v7, "atomDataSize":I
    add-int v6, v17, v7

    .line 145
    .end local v17    # "bytesSearched":I
    .local v6, "bytesSearched":I
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v15, v10, :cond_e

    .line 147
    if-ge v7, v5, :cond_9

    .line 148
    return v22

    .line 150
    :cond_9
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 151
    iget-object v5, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    invoke-interface {v0, v5, v10, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    div-int/lit8 v5, v7, 0x4

    .line 153
    .local v5, "brandsCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_c

    .line 154
    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 156
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_4

    .line 157
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 158
    const/4 v8, 0x1

    .line 159
    goto :goto_5

    .line 153
    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 162
    .end local v10    # "i":I
    :cond_c
    :goto_5
    if-nez v8, :cond_d

    .line 164
    const/16 v22, 0x0

    return v22

    .line 166
    .end local v5    # "brandsCount":I
    :cond_d
    goto :goto_6

    :cond_e
    if-eqz v7, :cond_d

    .line 168
    invoke-interface {v0, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 170
    .end local v7    # "atomDataSize":I
    .end local v12    # "headerSize":I
    .end local v13    # "atomSize":J
    .end local v15    # "atomType":I
    :goto_6
    move v7, v6

    move-wide/from16 v5, v18

    goto/16 :goto_1

    .line 132
    .end local v6    # "bytesSearched":I
    .local v7, "bytesSearched":I
    .restart local v12    # "headerSize":I
    .restart local v13    # "atomSize":J
    .restart local v15    # "atomType":I
    :cond_f
    move/from16 v17, v7

    .line 134
    .end local v7    # "bytesSearched":I
    .restart local v17    # "bytesSearched":I
    :goto_7
    const/4 v9, 0x1

    .line 135
    move/from16 v7, v17

    goto :goto_8

    .line 100
    .end local v12    # "headerSize":I
    .end local v13    # "atomSize":J
    .end local v15    # "atomType":I
    .end local v17    # "bytesSearched":I
    .restart local v7    # "bytesSearched":I
    :cond_10
    const/16 v22, 0x0

    .line 171
    :goto_8
    if-eqz v8, :cond_11

    move/from16 v5, p1

    if-ne v5, v9, :cond_12

    const/4 v10, 0x1

    goto :goto_9

    :cond_11
    move/from16 v5, p1

    :cond_12
    const/4 v10, 0x0

    :goto_9
    return v10
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

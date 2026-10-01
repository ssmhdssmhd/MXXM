.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.78f

.field private static final N:I = 0x1

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    const/16 v0, 0xc

    const/16 v1, 0xe

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/16 v4, 0xa

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 65
    const/4 v0, 0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 66
    const/4 v1, 0x3

    filled-new-array {v0, v0, v1}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 71
    new-array v4, v4, [[I

    filled-new-array {v0, v0, v1, v1, v0}, [I

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array {v1, v0, v0, v0, v1}, [I

    move-result-object v5

    aput-object v5, v4, v0

    filled-new-array {v0, v1, v0, v0, v1}, [I

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    filled-new-array {v1, v1, v0, v0, v0}, [I

    move-result-object v5

    aput-object v5, v4, v1

    filled-new-array {v0, v0, v1, v0, v1}, [I

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    filled-new-array {v1, v0, v1, v0, v0}, [I

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    filled-new-array {v0, v1, v1, v0, v0}, [I

    move-result-object v5

    aput-object v5, v4, v2

    filled-new-array {v0, v0, v0, v1, v1}, [I

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v4, v5

    filled-new-array {v1, v0, v0, v1, v0}, [I

    move-result-object v2

    aput-object v2, v4, v3

    filled-new-array {v0, v1, v0, v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v4, v1

    sput-object v4, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 334
    const v0, 0x3ec28f5c    # 0.38f

    .line 335
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 336
    .local v1, "bestMatch":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v2, v2

    .line 337
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 338
    sget-object v5, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v5, v5, v3

    .line 339
    .local v5, "pattern":[I
    const v6, 0x3f47ae14    # 0.78f

    invoke-static {p0, v5, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v6

    .line 340
    .local v4, "variance":F
    move v4, v6

    cmpg-float v6, v6, v0

    if-gez v6, :cond_0

    .line 341
    move v0, v4

    .line 342
    move v1, v3

    .line 337
    .end local v4    # "variance":F
    .end local v5    # "pattern":[I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "i":I
    :cond_1
    if-ltz v1, :cond_2

    .line 346
    return v1

    .line 348
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 7
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 262
    .local v0, "endStart":I
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 267
    .local v1, "endPattern":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 272
    aget v3, v1, v2

    .line 273
    .local v3, "temp":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v6, v1, v5

    sub-int/2addr v4, v6

    aput v4, v1, v2

    .line 274
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    sub-int/2addr v2, v3

    aput v2, v1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    nop

    .line 279
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 276
    return-object v1

    .line 279
    .end local v0    # "endStart":I
    .end local v1    # "endPattern":[I
    .end local v3    # "temp":I
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 150
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 151
    .local v1, "counterDigitPair":[I
    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 152
    .local v3, "counterBlack":[I
    new-array v4, v2, [I

    .line 154
    .local v4, "counterWhite":[I
    :goto_0
    if-ge p1, p2, :cond_2

    .line 157
    invoke-static {p0, p1, v1}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 159
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 160
    mul-int/lit8 v6, v5, 0x2

    .line 161
    .local v6, "twoK":I
    aget v7, v1, v6

    aput v7, v3, v5

    .line 162
    add-int/lit8 v7, v6, 0x1

    aget v7, v1, v7

    aput v7, v4, v5

    .line 159
    .end local v6    # "twoK":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 165
    .end local v5    # "k":I
    :cond_0
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v5

    .line 166
    .local v5, "bestMatch":I
    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v5

    .line 168
    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_1

    aget v7, v1, v6

    .line 171
    .local v7, "counterDigit":I
    add-int/2addr p1, v7

    .line 170
    .end local v7    # "counterDigit":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 173
    .end local v5    # "bestMatch":I
    :cond_1
    goto :goto_0

    .line 174
    :cond_2
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 185
    .local v0, "endStart":I
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 190
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v4, v1, v3

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 192
    aget v2, v1, v3

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 194
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 295
    array-length v0, p2

    const/4 v1, 0x0

    .line 296
    .local v1, "patternLength":I
    move v1, v0

    new-array v0, v0, [I

    .line 297
    .local v0, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 298
    .local v2, "width":I
    const/4 v3, 0x0

    .line 300
    .local v3, "isWhite":Z
    const/4 v4, 0x0

    .line 301
    .local v4, "counterPosition":I
    move v5, p1

    .line 302
    .local v5, "patternStart":I
    move v6, p1

    .local v6, "x":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 303
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v3

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 304
    aget v7, v0, v4

    add-int/2addr v7, v8

    aput v7, v0, v4

    goto :goto_3

    .line 306
    :cond_0
    add-int/lit8 v7, v1, -0x1

    const/4 v9, 0x0

    if-ne v4, v7, :cond_2

    .line 307
    const v7, 0x3f47ae14    # 0.78f

    invoke-static {v0, p2, v7}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v7

    const v10, 0x3ec28f5c    # 0.38f

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1

    .line 308
    filled-new-array {v5, v6}, [I

    move-result-object v7

    return-object v7

    .line 310
    :cond_1
    aget v7, v0, v9

    aget v10, v0, v8

    add-int/2addr v7, v10

    add-int/2addr v5, v7

    .line 311
    add-int/lit8 v7, v1, -0x2

    const/4 v10, 0x2

    invoke-static {v0, v10, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int/lit8 v7, v1, -0x2

    aput v9, v0, v7

    .line 313
    add-int/lit8 v7, v1, -0x1

    aput v9, v0, v7

    .line 314
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 316
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 318
    :goto_1
    aput v8, v0, v4

    .line 319
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    move v3, v8

    .line 302
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 322
    .end local v6    # "x":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    goto :goto_5

    :goto_4
    throw v6

    :goto_5
    goto :goto_4
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 240
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    const/4 v2, 0x0

    .line 241
    .local v2, "endStart":I
    move v2, v1

    if-eq v1, v0, :cond_0

    .line 245
    return v2

    .line 242
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    .line 217
    .local v1, "quietCount":I
    move v1, v0

    if-ge v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 219
    .end local v1    # "quietCount":I
    .local v0, "quietCount":I
    :goto_0
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_1
    if-lez v0, :cond_1

    if-ltz v1, :cond_1

    .line 220
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 219
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 225
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 229
    return-void

    .line 227
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 89
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 90
    .local v4, "startRange":[I
    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v5

    .line 92
    .local v5, "endRange":[I
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v2, v8, v10, v6}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "resultString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 97
    .local v10, "allowedLengths":[I
    if-eqz v3, :cond_0

    .line 98
    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v10, v11

    check-cast v10, [I

    .line 101
    :cond_0
    if-nez v10, :cond_1

    .line 102
    sget-object v10, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 107
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 108
    .local v11, "length":I
    const/4 v12, 0x0

    .line 109
    .local v12, "lengthOK":Z
    const/4 v13, 0x0

    .line 110
    .local v13, "maxAllowedLength":I
    array-length v14, v10

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_4

    const/16 v16, 0x1

    aget v7, v10, v15

    .line 111
    .local v7, "allowedLength":I
    if-ne v11, v7, :cond_2

    .line 112
    const/4 v12, 0x1

    .line 113
    goto :goto_1

    .line 115
    :cond_2
    if-le v7, v13, :cond_3

    .line 116
    move v13, v7

    .line 110
    .end local v7    # "allowedLength":I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/16 v16, 0x1

    .line 119
    :goto_1
    if-nez v12, :cond_5

    if-le v11, v13, :cond_5

    .line 120
    const/4 v12, 0x1

    .line 122
    :cond_5
    if-eqz v12, :cond_6

    .line 126
    new-instance v7, Lcom/google/zxing/Result;

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v17, 0x0

    aget v9, v4, v16

    int-to-float v9, v9

    int-to-float v0, v1

    invoke-direct {v15, v9, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v14, v17

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v9, v5, v17

    int-to-float v9, v9

    int-to-float v15, v1

    invoke-direct {v0, v9, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v14, v16

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v14, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v7

    .line 123
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

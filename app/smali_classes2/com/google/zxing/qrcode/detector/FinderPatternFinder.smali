.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .line 191
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(IIII)Z
    .locals 16
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 244
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v4

    .line 247
    .local v4, "stateCount":[I
    const/4 v5, 0x0

    .line 248
    .local v5, "i":I
    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v1, v5, :cond_0

    if-lt v2, v5, :cond_0

    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v9, v2, v5

    sub-int v10, v1, v5

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 249
    aget v8, v4, v6

    add-int/2addr v8, v7

    aput v8, v4, v6

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const/4 v8, 0x0

    if-lt v1, v5, :cond_10

    if-ge v2, v5, :cond_1

    goto/16 :goto_9

    .line 258
    :cond_1
    :goto_1
    if-lt v1, v5, :cond_2

    if-lt v2, v5, :cond_2

    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v2, v5

    sub-int v11, v1, v5

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_2

    aget v9, v4, v7

    if-gt v9, v3, :cond_2

    .line 260
    aget v9, v4, v7

    add-int/2addr v9, v7

    aput v9, v4, v7

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 265
    :cond_2
    if-lt v1, v5, :cond_f

    if-lt v2, v5, :cond_f

    aget v9, v4, v7

    if-le v9, v3, :cond_3

    goto/16 :goto_8

    .line 270
    :cond_3
    :goto_2
    if-lt v1, v5, :cond_4

    if-lt v2, v5, :cond_4

    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v2, v5

    sub-int v11, v1, v5

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_4

    aget v9, v4, v8

    if-gt v9, v3, :cond_4

    .line 272
    aget v9, v4, v8

    add-int/2addr v9, v7

    aput v9, v4, v8

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 275
    :cond_4
    aget v9, v4, v8

    if-le v9, v3, :cond_5

    .line 276
    return v8

    .line 279
    :cond_5
    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    .line 280
    .local v9, "maxI":I
    iget-object v10, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 283
    .local v10, "maxJ":I
    const/4 v5, 0x1

    .line 284
    :goto_3
    add-int v11, v1, v5

    if-ge v11, v9, :cond_6

    add-int v11, v2, v5

    if-ge v11, v10, :cond_6

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v12, v2, v5

    add-int v13, v1, v5

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 285
    aget v11, v4, v6

    add-int/2addr v11, v7

    aput v11, v4, v6

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 290
    :cond_6
    add-int v11, v1, v5

    if-ge v11, v9, :cond_e

    add-int v11, v2, v5

    if-lt v11, v10, :cond_7

    goto/16 :goto_7

    .line 294
    :cond_7
    :goto_4
    add-int v11, v1, v5

    const/4 v12, 0x3

    if-ge v11, v9, :cond_8

    add-int v11, v2, v5

    if-ge v11, v10, :cond_8

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v13, v2, v5

    add-int v14, v1, v5

    invoke-virtual {v11, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_8

    aget v11, v4, v12

    if-ge v11, v3, :cond_8

    .line 296
    aget v11, v4, v12

    add-int/2addr v11, v7

    aput v11, v4, v12

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 300
    :cond_8
    add-int v11, v1, v5

    if-ge v11, v9, :cond_d

    add-int v11, v2, v5

    if-ge v11, v10, :cond_d

    aget v11, v4, v12

    if-lt v11, v3, :cond_9

    goto :goto_6

    .line 304
    :cond_9
    :goto_5
    add-int v11, v1, v5

    const/4 v13, 0x4

    if-ge v11, v9, :cond_a

    add-int v11, v2, v5

    if-ge v11, v10, :cond_a

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v14, v2, v5

    add-int v15, v1, v5

    invoke-virtual {v11, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_a

    aget v11, v4, v13

    if-ge v11, v3, :cond_a

    .line 306
    aget v11, v4, v13

    add-int/2addr v11, v7

    aput v11, v4, v13

    .line 307
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 310
    :cond_a
    aget v11, v4, v13

    if-lt v11, v3, :cond_b

    .line 311
    return v8

    .line 316
    :cond_b
    aget v11, v4, v8

    aget v14, v4, v7

    add-int/2addr v11, v14

    aget v6, v4, v6

    add-int/2addr v11, v6

    aget v6, v4, v12

    add-int/2addr v11, v6

    aget v6, v4, v13

    add-int/2addr v11, v6

    .line 317
    sub-int v11, v11, p4

    .line 318
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v11, p4, 0x2

    if-ge v6, v11, :cond_c

    .line 319
    invoke-static {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v6

    if-eqz v6, :cond_c

    return v7

    :cond_c
    nop

    .line 317
    return v8

    .line 301
    :cond_d
    :goto_6
    return v8

    .line 291
    :cond_e
    :goto_7
    return v8

    .line 266
    .end local v9    # "maxI":I
    .end local v10    # "maxJ":I
    :cond_f
    :goto_8
    return v8

    .line 254
    :cond_10
    :goto_9
    return v8
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 11
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 407
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    .line 409
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 410
    .local v0, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    .line 412
    .local v2, "stateCount":[I
    move v3, p1

    .line 413
    .local v3, "j":I
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    .line 415
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 417
    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    .line 418
    return v6

    .line 420
    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 421
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    .line 422
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 424
    :cond_2
    if-ltz v3, :cond_f

    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_7

    .line 427
    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 428
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 429
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 431
    :cond_4
    aget v8, v2, v7

    if-le v8, p3, :cond_5

    .line 432
    return v6

    .line 435
    :cond_5
    add-int/lit8 v3, p1, 0x1

    .line 436
    :goto_3
    if-ge v3, v0, :cond_6

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 437
    aget v8, v2, v4

    add-int/2addr v8, v5

    aput v8, v2, v4

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 440
    :cond_6
    if-ne v3, v0, :cond_7

    .line 441
    return v6

    .line 443
    :cond_7
    :goto_4
    const/4 v8, 0x3

    if-ge v3, v0, :cond_8

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_8

    aget v9, v2, v8

    if-ge v9, p3, :cond_8

    .line 444
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 447
    :cond_8
    if-eq v3, v0, :cond_e

    aget v9, v2, v8

    if-lt v9, p3, :cond_9

    goto :goto_6

    .line 450
    :cond_9
    :goto_5
    const/4 v9, 0x4

    if-ge v3, v0, :cond_a

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_a

    aget v10, v2, v9

    if-ge v10, p3, :cond_a

    .line 451
    aget v10, v2, v9

    add-int/2addr v10, v5

    aput v10, v2, v9

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 454
    :cond_a
    aget v10, v2, v9

    if-lt v10, p3, :cond_b

    .line 455
    return v6

    .line 460
    :cond_b
    aget v7, v2, v7

    aget v5, v2, v5

    add-int/2addr v7, v5

    aget v4, v2, v4

    add-int/2addr v7, v4

    aget v4, v2, v8

    add-int/2addr v7, v4

    aget v4, v2, v9

    add-int/2addr v7, v4

    .line 462
    .local v7, "stateCountTotal":I
    sub-int v4, v7, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    if-lt v4, p4, :cond_c

    .line 463
    return v6

    .line 466
    :cond_c
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    return v4

    :cond_d
    return v6

    .line 448
    .end local v7    # "stateCountTotal":I
    :cond_e
    :goto_6
    return v6

    .line 425
    :cond_f
    :goto_7
    return v6
.end method

.method private crossCheckVertical(IIII)F
    .locals 11
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 335
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    .line 337
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 338
    .local v0, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    .line 341
    .local v2, "stateCount":[I
    move v3, p1

    .line 342
    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    .line 344
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 346
    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    .line 347
    return v6

    .line 349
    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 350
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    .line 351
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 354
    :cond_2
    if-ltz v3, :cond_f

    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_7

    .line 357
    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 358
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 359
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 361
    :cond_4
    aget v8, v2, v7

    if-le v8, p3, :cond_5

    .line 362
    return v6

    .line 366
    :cond_5
    add-int/lit8 v3, p1, 0x1

    .line 367
    :goto_3
    if-ge v3, v0, :cond_6

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 368
    aget v8, v2, v4

    add-int/2addr v8, v5

    aput v8, v2, v4

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 371
    :cond_6
    if-ne v3, v0, :cond_7

    .line 372
    return v6

    .line 374
    :cond_7
    :goto_4
    const/4 v8, 0x3

    if-ge v3, v0, :cond_8

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_8

    aget v9, v2, v8

    if-ge v9, p3, :cond_8

    .line 375
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 378
    :cond_8
    if-eq v3, v0, :cond_e

    aget v9, v2, v8

    if-lt v9, p3, :cond_9

    goto :goto_6

    .line 381
    :cond_9
    :goto_5
    const/4 v9, 0x4

    if-ge v3, v0, :cond_a

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_a

    aget v10, v2, v9

    if-ge v10, p3, :cond_a

    .line 382
    aget v10, v2, v9

    add-int/2addr v10, v5

    aput v10, v2, v9

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 385
    :cond_a
    aget v10, v2, v9

    if-lt v10, p3, :cond_b

    .line 386
    return v6

    .line 391
    :cond_b
    aget v7, v2, v7

    aget v5, v2, v5

    add-int/2addr v7, v5

    aget v4, v2, v4

    add-int/2addr v7, v4

    aget v4, v2, v8

    add-int/2addr v7, v4

    aget v4, v2, v9

    add-int/2addr v7, v4

    .line 393
    .local v7, "stateCountTotal":I
    sub-int v4, v7, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, p4, 0x2

    if-lt v4, v5, :cond_c

    .line 394
    return v6

    .line 397
    :cond_c
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    return v4

    :cond_d
    return v6

    .line 379
    .end local v7    # "stateCountTotal":I
    :cond_e
    :goto_6
    return v6

    .line 355
    :cond_f
    :goto_7
    return v6
.end method

.method private findRowSkip()I
    .locals 7

    .line 528
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 529
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 530
    return v1

    .line 532
    :cond_0
    const/4 v0, 0x0

    .line 533
    .local v0, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 534
    .local v4, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v4, v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 535
    if-nez v0, :cond_1

    .line 536
    move-object v0, v4

    goto :goto_0

    .line 543
    :cond_1
    iput-boolean v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 544
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 545
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/2addr v1, v6

    .line 544
    return v1

    .line 548
    .end local v4    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2
    goto :goto_0

    .line 549
    :cond_3
    return v1
.end method

.method protected static foundPatternCross([I)Z
    .locals 7

    .line 200
    nop

    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 202
    aget v3, p0, v1

    .line 203
    if-nez v3, :cond_0

    .line 204
    return v0

    .line 206
    :cond_0
    add-int/2addr v2, v3

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    .line 209
    return v0

    .line 211
    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    .line 212
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 214
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 215
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 216
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 217
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v4, v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 218
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 219
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    nop

    .line 214
    return v0
.end method

.method private getCrossCheckStateCount()[I
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 9

    .line 558
    nop

    .line 559
    nop

    .line 560
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 561
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 562
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 563
    add-int/lit8 v4, v4, 0x1

    .line 564
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    .line 566
    :cond_0
    goto :goto_0

    .line 567
    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    .line 568
    return v2

    .line 574
    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 575
    nop

    .line 576
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 577
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 578
    goto :goto_1

    .line 579
    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v0

    cmpg-float v0, v3, v5

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 591
    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 597
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v0, v1, :cond_2

    .line 599
    nop

    .line 600
    nop

    .line 601
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 602
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    .line 603
    add-float/2addr v7, v9

    .line 604
    mul-float v9, v9, v9

    add-float/2addr v8, v9

    .line 605
    goto :goto_0

    .line 606
    :cond_0
    int-to-float v0, v0

    div-float/2addr v7, v0

    .line 607
    div-float/2addr v8, v0

    mul-float v0, v7, v7

    sub-float/2addr v8, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 609
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    invoke-direct {v8, v7, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const v6, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 613
    const/4 v6, 0x0

    :goto_1
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v1, :cond_2

    .line 614
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 615
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_1

    .line 616
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v6, v6, -0x1

    .line 613
    :cond_1
    add-int/2addr v6, v3

    goto :goto_1

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 625
    nop

    .line 626
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 627
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    .line 628
    goto :goto_2

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 632
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    invoke-direct {v6, v5, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 637
    :cond_4
    new-array v0, v1, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 638
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 639
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 640
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v0, v2

    .line 637
    return-object v0

    .line 593
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 78
    :goto_0
    if-eqz p1, :cond_1

    sget-object v3, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 79
    :goto_1
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 80
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 88
    mul-int/lit8 v5, v3, 0x3

    div-int/lit16 v5, v5, 0xe4

    .line 89
    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    if-eqz v2, :cond_3

    .line 90
    :cond_2
    const/4 v5, 0x3

    .line 93
    :cond_3
    nop

    .line 94
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 95
    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v3, :cond_e

    if-nez v8, :cond_e

    .line 97
    aput v1, v2, v1

    .line 98
    aput v1, v2, v0

    .line 99
    const/4 v9, 0x2

    aput v1, v2, v9

    .line 100
    aput v1, v2, v6

    .line 101
    const/4 v10, 0x4

    aput v1, v2, v10

    .line 102
    nop

    .line 103
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v4, :cond_c

    .line 104
    iget-object v13, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v13, v11, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 106
    and-int/lit8 v13, v12, 0x1

    if-ne v13, v0, :cond_4

    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 109
    :cond_4
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_5

    .line 111
    :cond_5
    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_b

    .line 112
    if-ne v12, v10, :cond_a

    .line 113
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 114
    invoke-virtual {p0, v2, v7, v11, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v12

    .line 115
    if-eqz v12, :cond_8

    .line 118
    nop

    .line 119
    iget-boolean v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v5, :cond_6

    .line 120
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v8

    goto :goto_4

    .line 122
    :cond_6
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v5

    .line 123
    aget v12, v2, v9

    if-le v5, v12, :cond_7

    .line 132
    aget v11, v2, v9

    sub-int/2addr v5, v11

    sub-int/2addr v5, v9

    add-int/2addr v7, v5

    .line 133
    add-int/lit8 v11, v4, -0x1

    .line 135
    :cond_7
    nop

    .line 146
    :goto_4
    nop

    .line 147
    aput v1, v2, v1

    .line 148
    aput v1, v2, v0

    .line 149
    aput v1, v2, v9

    .line 150
    aput v1, v2, v6

    .line 151
    aput v1, v2, v10

    .line 152
    const/4 v5, 0x2

    const/4 v12, 0x0

    goto :goto_5

    .line 137
    :cond_8
    aget v12, v2, v9

    aput v12, v2, v1

    .line 138
    aget v12, v2, v6

    aput v12, v2, v0

    .line 139
    aget v12, v2, v10

    aput v12, v2, v9

    .line 140
    aput v0, v2, v6

    .line 141
    aput v1, v2, v10

    .line 142
    nop

    .line 143
    const/4 v12, 0x3

    goto :goto_5

    .line 153
    :cond_9
    aget v12, v2, v9

    aput v12, v2, v1

    .line 154
    aget v12, v2, v6

    aput v12, v2, v0

    .line 155
    aget v12, v2, v10

    aput v12, v2, v9

    .line 156
    aput v0, v2, v6

    .line 157
    aput v1, v2, v10

    .line 158
    const/4 v12, 0x3

    goto :goto_5

    .line 161
    :cond_a
    add-int/lit8 v12, v12, 0x1

    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_5

    .line 164
    :cond_b
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    .line 103
    :goto_5
    add-int/2addr v11, v0

    goto/16 :goto_3

    .line 168
    :cond_c
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 169
    invoke-virtual {p0, v2, v7, v4, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v9

    .line 170
    if-eqz v9, :cond_d

    .line 171
    aget v5, v2, v1

    .line 172
    iget-boolean v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v9, :cond_d

    .line 174
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v8

    .line 95
    :cond_d
    add-int/2addr v7, v5

    goto/16 :goto_2

    .line 180
    :cond_e
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 181
    invoke-static {p1}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v0
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 10
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z

    .line 488
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 490
    .local v1, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    .line 491
    .local v4, "centerJ":F
    float-to-int v5, v4

    aget v6, p1, v3

    invoke-direct {p0, p2, v5, v6, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v5

    const/4 v6, 0x0

    .line 492
    .local v6, "centerI":F
    move v6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_4

    .line 494
    float-to-int v5, v4

    float-to-int v7, v6

    aget v8, p1, v3

    invoke-direct {p0, v5, v7, v8, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v5

    .line 495
    move v4, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p4, :cond_0

    float-to-int v5, v6

    float-to-int v7, v4

    aget v3, p1, v3

    .line 496
    invoke-direct {p0, v5, v7, v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 497
    :cond_0
    int-to-float v0, v1

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v0, v3

    .line 498
    .local v0, "estimatedModuleSize":F
    const/4 v3, 0x0

    .line 499
    .local v3, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 500
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 502
    .local v7, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v7, v8

    invoke-virtual {v8, v0, v6, v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 503
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v7, v6, v4, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/4 v3, 0x1

    .line 505
    goto :goto_1

    .line 499
    .end local v7    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 508
    .end local v5    # "index":I
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 509
    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v5, v4, v6, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 510
    .local v5, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v7, :cond_3

    .line 512
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v7, v5}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 515
    .end local v5    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_3
    return v2

    .line 518
    .end local v0    # "estimatedModuleSize":F
    .end local v3    # "found":Z
    :cond_4
    return v0
.end method

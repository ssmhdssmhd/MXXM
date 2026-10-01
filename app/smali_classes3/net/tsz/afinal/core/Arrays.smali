.class public Lnet/tsz/afinal/core/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/core/Arrays$ArrayList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 159
    new-instance v0, Lnet/tsz/afinal/core/Arrays$ArrayList;

    invoke-direct {v0, p0}, Lnet/tsz/afinal/core/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .line 173
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnet/tsz/afinal/core/Arrays;->binarySearch([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # B

    .line 193
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 194
    move v0, p1

    .line 195
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 197
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 209
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 198
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 199
    .local v2, "mid":I
    aget-byte v3, p0, v2

    .line 201
    .local v3, "midVal":B
    if-ge v3, p3, :cond_1

    .line 202
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 203
    :cond_1
    if-le v3, p3, :cond_2

    .line 204
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 206
    :cond_2
    return v2
.end method

.method public static binarySearch([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .line 223
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnet/tsz/afinal/core/Arrays;->binarySearch([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .locals 4
    .param p0, "array"    # [C
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # C

    .line 243
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 244
    move v0, p1

    .line 245
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 247
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 259
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 248
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 249
    .local v2, "mid":I
    aget-char v3, p0, v2

    .line 251
    .local v3, "midVal":C
    if-ge v3, p3, :cond_1

    .line 252
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    if-le v3, p3, :cond_2

    .line 254
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 256
    :cond_2
    return v2
.end method

.method public static binarySearch([DD)I
    .locals 2
    .param p0, "array"    # [D
    .param p1, "value"    # D

    .line 273
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lnet/tsz/afinal/core/Arrays;->binarySearch([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .locals 10
    .param p0, "array"    # [D
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # D

    .line 293
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 294
    move v0, p1

    .line 295
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 297
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 320
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 298
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 299
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 301
    .local v3, "midVal":D
    cmpg-double v5, v3, p3

    if-gez v5, :cond_1

    .line 302
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 303
    :cond_1
    cmpl-double v5, v3, p3

    if-lez v5, :cond_2

    .line 304
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 305
    :cond_2
    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_3

    cmpl-double v5, v3, p3

    if-nez v5, :cond_3

    .line 306
    return v2

    .line 308
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 309
    .local v5, "midValBits":J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 311
    .local v7, "valueBits":J
    cmp-long v9, v5, v7

    if-gez v9, :cond_4

    .line 312
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 313
    :cond_4
    cmp-long v9, v5, v7

    if-lez v9, :cond_5

    .line 314
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 316
    :cond_5
    return v2
.end method

.method public static binarySearch([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "value"    # F

    .line 334
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnet/tsz/afinal/core/Arrays;->binarySearch([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .locals 6
    .param p0, "array"    # [F
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # F

    .line 354
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 355
    move v0, p1

    .line 356
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 358
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 381
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 359
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 360
    .local v2, "mid":I
    aget v3, p0, v2

    .line 362
    .local v3, "midVal":F
    cmpg-float v4, v3, p3

    if-gez v4, :cond_1

    .line 363
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 364
    :cond_1
    cmpl-float v4, v3, p3

    if-lez v4, :cond_2

    .line 365
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 366
    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_3

    cmpl-float v4, v3, p3

    if-nez v4, :cond_3

    .line 367
    return v2

    .line 369
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 370
    .local v4, "midValBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 372
    .local v5, "valueBits":I
    if-ge v4, v5, :cond_4

    .line 373
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 374
    :cond_4
    if-le v4, v5, :cond_5

    .line 375
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 377
    :cond_5
    return v2
.end method

.method public static binarySearch([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 395
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnet/tsz/afinal/core/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # I

    .line 415
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 416
    move v0, p1

    .line 417
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 419
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 431
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 420
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 421
    .local v2, "mid":I
    aget v3, p0, v2

    .line 423
    .local v3, "midVal":I
    if-ge v3, p3, :cond_1

    .line 424
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 425
    :cond_1
    if-le v3, p3, :cond_2

    .line 426
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 428
    :cond_2
    return v2
.end method

.method public static binarySearch([JIIJ)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # J

    .line 465
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 466
    move v0, p1

    .line 467
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 469
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 481
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 470
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 471
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 473
    .local v3, "midVal":J
    cmp-long v5, v3, p3

    if-gez v5, :cond_1

    .line 474
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 475
    :cond_1
    cmp-long v5, v3, p3

    if-lez v5, :cond_2

    .line 476
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 478
    :cond_2
    return v2
.end method

.method public static binarySearch([JJ)I
    .locals 2
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 445
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lnet/tsz/afinal/core/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 522
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 523
    move v0, p1

    .line 524
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 526
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 539
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 527
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 529
    .local v2, "mid":I
    aget-object v3, p0, v2

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 531
    .local v3, "midValCmp":I
    if-gez v3, :cond_1

    .line 532
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 533
    :cond_1
    if-lez v3, :cond_2

    .line 534
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 536
    :cond_2
    return v2
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 584
    .local p3, "value":Ljava/lang/Object;, "TT;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_0

    .line 585
    invoke-static {p0, p1, p2, p3}, Lnet/tsz/afinal/core/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0

    .line 588
    :cond_0
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 589
    move v0, p1

    .line 590
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 592
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_1

    .line 604
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 593
    :cond_1
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 594
    .local v2, "mid":I
    aget-object v3, p0, v2

    invoke-interface {p4, v3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 596
    .local v3, "midValCmp":I
    if-gez v3, :cond_2

    .line 597
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 598
    :cond_2
    if-lez v3, :cond_3

    .line 599
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 601
    :cond_3
    return v2
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 498
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnet/tsz/afinal/core/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 558
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lnet/tsz/afinal/core/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .locals 4
    .param p0, "array"    # [S
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # S

    .line 638
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lnet/tsz/afinal/core/Arrays;->checkBinarySearchBounds(III)V

    .line 639
    move v0, p1

    .line 640
    .local v0, "lo":I
    add-int/lit8 v1, p2, -0x1

    .line 642
    .local v1, "hi":I
    nop

    :goto_0
    if-le v0, v1, :cond_0

    .line 654
    xor-int/lit8 v2, v0, -0x1

    return v2

    .line 643
    :cond_0
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 644
    .local v2, "mid":I
    aget-short v3, p0, v2

    .line 646
    .local v3, "midVal":S
    if-ge v3, p3, :cond_1

    .line 647
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 648
    :cond_1
    if-le v3, p3, :cond_2

    .line 649
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 651
    :cond_2
    return v2
.end method

.method public static binarySearch([SS)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .line 618
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnet/tsz/afinal/core/Arrays;->binarySearch([SIIS)I

    move-result v0

    return v0
.end method

.method private static checkBinarySearchBounds(III)V
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I
    .param p2, "length"    # I

    .line 658
    if-gt p0, p1, :cond_1

    .line 661
    if-ltz p0, :cond_0

    if-gt p1, p2, :cond_0

    .line 664
    return-void

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOf([BI)[B
    .locals 1
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .line 1889
    if-ltz p1, :cond_0

    .line 1892
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 1890
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([CI)[C
    .locals 1
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .line 1908
    if-ltz p1, :cond_0

    .line 1911
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0

    .line 1909
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([DI)[D
    .locals 1
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    .line 1927
    if-ltz p1, :cond_0

    .line 1930
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0

    .line 1928
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([FI)[F
    .locals 1
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    .line 1946
    if-ltz p1, :cond_0

    .line 1949
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    return-object v0

    .line 1947
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([II)[I
    .locals 1
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .line 1965
    if-ltz p1, :cond_0

    .line 1968
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0

    .line 1966
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([JI)[J
    .locals 1
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .line 1984
    if-ltz p1, :cond_0

    .line 1987
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0

    .line 1985
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 2022
    if-eqz p0, :cond_1

    .line 2025
    if-ltz p1, :cond_0

    .line 2028
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2026
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2023
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class<",
            "+[TT;>;)[TT;"
        }
    .end annotation

    .line 2047
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    if-ltz p1, :cond_0

    .line 2050
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2048
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([SI)[S
    .locals 1
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .line 2003
    if-ltz p1, :cond_0

    .line 2006
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([SII)[S

    move-result-object v0

    return-object v0

    .line 2004
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOf([ZI)[Z
    .locals 1
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .line 1870
    if-ltz p1, :cond_0

    .line 1873
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lnet/tsz/afinal/core/Arrays;->copyOfRange([ZII)[Z

    move-result-object v0

    return-object v0

    .line 1871
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2099
    if-gt p1, p2, :cond_1

    .line 2102
    array-length v0, p0

    .line 2103
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2106
    sub-int v1, p2, p1

    .line 2107
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2108
    .local v2, "copyLength":I
    new-array v3, v1, [B

    .line 2109
    .local v3, "result":[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2110
    return-object v3

    .line 2104
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[B
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2100
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([CII)[C
    .locals 5
    .param p0, "original"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2129
    if-gt p1, p2, :cond_1

    .line 2132
    array-length v0, p0

    .line 2133
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2136
    sub-int v1, p2, p1

    .line 2137
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2138
    .local v2, "copyLength":I
    new-array v3, v1, [C

    .line 2139
    .local v3, "result":[C
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2140
    return-object v3

    .line 2134
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[C
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2130
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([DII)[D
    .locals 5
    .param p0, "original"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2159
    if-gt p1, p2, :cond_1

    .line 2162
    array-length v0, p0

    .line 2163
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2166
    sub-int v1, p2, p1

    .line 2167
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2168
    .local v2, "copyLength":I
    new-array v3, v1, [D

    .line 2169
    .local v3, "result":[D
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2170
    return-object v3

    .line 2164
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[D
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2160
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([FII)[F
    .locals 5
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2189
    if-gt p1, p2, :cond_1

    .line 2192
    array-length v0, p0

    .line 2193
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2196
    sub-int v1, p2, p1

    .line 2197
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2198
    .local v2, "copyLength":I
    new-array v3, v1, [F

    .line 2199
    .local v3, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2200
    return-object v3

    .line 2194
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[F
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2190
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([III)[I
    .locals 5
    .param p0, "original"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2219
    if-gt p1, p2, :cond_1

    .line 2222
    array-length v0, p0

    .line 2223
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2226
    sub-int v1, p2, p1

    .line 2227
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2228
    .local v2, "copyLength":I
    new-array v3, v1, [I

    .line 2229
    .local v3, "result":[I
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2230
    return-object v3

    .line 2224
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[I
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2220
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([JII)[J
    .locals 5
    .param p0, "original"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2249
    if-gt p1, p2, :cond_1

    .line 2252
    array-length v0, p0

    .line 2253
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2256
    sub-int v1, p2, p1

    .line 2257
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2258
    .local v2, "copyLength":I
    new-array v3, v1, [J

    .line 2259
    .local v3, "result":[J
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2260
    return-object v3

    .line 2254
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[J
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2250
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 2310
    array-length v0, p0

    .line 2311
    .local v0, "originalLength":I
    if-gt p1, p2, :cond_1

    .line 2314
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2317
    sub-int v1, p2, p1

    .line 2318
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2319
    .local v2, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 2320
    .local v3, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2321
    return-object v3

    .line 2315
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2312
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class<",
            "+[TT;>;)[TT;"
        }
    .end annotation

    .line 2342
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    if-gt p1, p2, :cond_1

    .line 2345
    array-length v0, p0

    .line 2346
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2349
    sub-int v1, p2, p1

    .line 2350
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2351
    .local v2, "copyLength":I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 2352
    .local v3, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2353
    return-object v3

    .line 2347
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2343
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([SII)[S
    .locals 5
    .param p0, "original"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2279
    if-gt p1, p2, :cond_1

    .line 2282
    array-length v0, p0

    .line 2283
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2286
    sub-int v1, p2, p1

    .line 2287
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2288
    .local v2, "copyLength":I
    new-array v3, v1, [S

    .line 2289
    .local v3, "result":[S
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2290
    return-object v3

    .line 2284
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[S
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2280
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static copyOfRange([ZII)[Z
    .locals 5
    .param p0, "original"    # [Z
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2069
    if-gt p1, p2, :cond_1

    .line 2072
    array-length v0, p0

    .line 2073
    .local v0, "originalLength":I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2076
    sub-int v1, p2, p1

    .line 2077
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2078
    .local v2, "copyLength":I
    new-array v3, v1, [Z

    .line 2079
    .local v3, "result":[Z
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2080
    return-object v3

    .line 2074
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[Z
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2070
    .end local v0    # "originalLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 1363
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1364
    return v0

    .line 1366
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1369
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1376
    .end local v2    # "i":I
    return v0

    .line 1370
    .restart local v2    # "i":I
    :cond_2
    aget-object v3, p0, v2

    .local v3, "e1":Ljava/lang/Object;
    aget-object v4, p1, v2

    .line 1372
    .local v4, "e2":Ljava/lang/Object;
    invoke-static {v3, v4}, Lnet/tsz/afinal/core/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1373
    return v1

    .line 1369
    .end local v3    # "e1":Ljava/lang/Object;
    .end local v4    # "e2":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1367
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .line 1382
    if-ne p0, p1, :cond_0

    .line 1383
    const/4 v0, 0x1

    return v0

    .line 1386
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 1390
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1391
    .local v1, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 1393
    .local v2, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v2, :cond_2

    .line 1394
    return v0

    .line 1397
    :cond_2
    if-nez v1, :cond_3

    .line 1398
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1404
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1405
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1408
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1409
    move-object v0, p0

    check-cast v0, [I

    move-object v3, p1

    check-cast v3, [I

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 1411
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1412
    move-object v0, p0

    check-cast v0, [C

    move-object v3, p1

    check-cast v3, [C

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([C[C)Z

    move-result v0

    return v0

    .line 1414
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1415
    move-object v0, p0

    check-cast v0, [Z

    move-object v3, p1

    check-cast v3, [Z

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 1417
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1418
    move-object v0, p0

    check-cast v0, [B

    move-object v3, p1

    check-cast v3, [B

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 1420
    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1421
    move-object v0, p0

    check-cast v0, [J

    move-object v3, p1

    check-cast v3, [J

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 1423
    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1424
    move-object v0, p0

    check-cast v0, [F

    move-object v3, p1

    check-cast v3, [F

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 1426
    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1427
    move-object v0, p0

    check-cast v0, [D

    move-object v3, p1

    check-cast v3, [D

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 1429
    :cond_b
    move-object v0, p0

    check-cast v0, [S

    move-object v3, p1

    check-cast v3, [S

    invoke-static {v0, v3}, Lnet/tsz/afinal/core/Arrays;->equals([S[S)Z

    move-result v0

    return v0

    .line 1387
    .end local v1    # "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    :goto_0
    return v0
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1032
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1033
    return v0

    .line 1035
    :cond_0
    const/4 v1, 0x1

    .line 1036
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 1040
    return v1

    .line 1036
    :cond_1
    aget-object v3, p0, v0

    .line 1037
    .local v3, "element":Ljava/lang/Object;
    invoke-static {v3}, Lnet/tsz/afinal/core/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    move-result v4

    .line 1038
    .local v4, "elementHashCode":I
    mul-int/lit8 v5, v1, 0x1f

    add-int v1, v5, v4

    .line 1036
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "elementHashCode":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .locals 2
    .param p0, "element"    # Ljava/lang/Object;

    .line 1045
    if-nez p0, :cond_0

    .line 1046
    const/4 v0, 0x0

    return v0

    .line 1049
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1051
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 1052
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1

    .line 1058
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1059
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 1061
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1062
    move-object v1, p0

    check-cast v1, [I

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([I)I

    move-result v1

    return v1

    .line 1064
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1065
    move-object v1, p0

    check-cast v1, [C

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([C)I

    move-result v1

    return v1

    .line 1067
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1068
    move-object v1, p0

    check-cast v1, [Z

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([Z)I

    move-result v1

    return v1

    .line 1070
    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1071
    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([B)I

    move-result v1

    return v1

    .line 1073
    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1074
    move-object v1, p0

    check-cast v1, [J

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([J)I

    move-result v1

    return v1

    .line 1076
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1077
    move-object v1, p0

    check-cast v1, [F

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([F)I

    move-result v1

    return v1

    .line 1079
    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1080
    move-object v1, p0

    check-cast v1, [D

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([D)I

    move-result v1

    return v1

    .line 1082
    :cond_9
    move-object v1, p0

    check-cast v1, [S

    invoke-static {v1}, Lnet/tsz/afinal/core/Arrays;->hashCode([S)I

    move-result v1

    return v1
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1739
    if-nez p0, :cond_0

    .line 1740
    const-string v0, "null"

    return-object v0

    .line 1743
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1744
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p0, v1, v0}, Lnet/tsz/afinal/core/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "origArrays"    # [Ljava/lang/Object;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 1764
    const-string v0, "null"

    if-nez p0, :cond_0

    .line 1765
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    return-void

    .line 1769
    :cond_0
    const/16 v1, 0x5b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1771
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 1830
    .end local v1    # "i":I
    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1831
    return-void

    .line 1772
    .restart local v1    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 1773
    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    :cond_2
    aget-object v2, p0, v1

    .line 1777
    .local v2, "elem":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 1779
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1782
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1783
    .local v3, "elemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1787
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 1788
    .local v4, "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1790
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1791
    move-object v5, v2

    check-cast v5, [Z

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1792
    :cond_4
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1793
    move-object v5, v2

    check-cast v5, [B

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1794
    :cond_5
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1795
    move-object v5, v2

    check-cast v5, [C

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1796
    :cond_6
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1797
    move-object v5, v2

    check-cast v5, [D

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1798
    :cond_7
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1799
    move-object v5, v2

    check-cast v5, [F

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1800
    :cond_8
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1801
    move-object v5, v2

    check-cast v5, [I

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1802
    :cond_9
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1803
    move-object v5, v2

    check-cast v5, [J

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1804
    :cond_a
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1805
    move-object v5, v2

    check-cast v5, [S

    invoke-static {v5}, Lnet/tsz/afinal/core/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1808
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1812
    :cond_c
    instance-of v5, v2, [Ljava/lang/Object;

    if-eqz v5, :cond_e

    .line 1813
    invoke-static {p1, v2}, Lnet/tsz/afinal/core/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1814
    const-string v5, "[...]"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1816
    :cond_d
    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    .line 1817
    .local v5, "newArray":[Ljava/lang/Object;
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1818
    .local v6, "newOrigArrays":[Ljava/lang/Object;
    nop

    .line 1819
    array-length v7, p1

    .line 1818
    const/4 v8, 0x0

    invoke-static {p1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1820
    array-length v7, p1

    aput-object v5, v6, v7

    .line 1822
    invoke-static {v5, v6, p2}, Lnet/tsz/afinal/core/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .end local v5    # "newArray":[Ljava/lang/Object;
    .end local v6    # "newOrigArrays":[Ljava/lang/Object;
    goto :goto_1

    .line 1812
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1826
    .end local v4    # "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    aget-object v4, p0, v1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1771
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v3    # "elemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "origArrays"    # [Ljava/lang/Object;
    .param p1, "array"    # Ljava/lang/Object;

    .line 1846
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 1849
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 1854
    return v0

    .line 1849
    :cond_1
    aget-object v3, p0, v2

    .line 1850
    .local v3, "element":Ljava/lang/Object;
    if-ne v3, p1, :cond_2

    .line 1851
    const/4 v0, 0x1

    return v0

    .line 1849
    .end local v3    # "element":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1847
    :cond_3
    :goto_1
    return v0
.end method

.method public static equals([B[B)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 1097
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1098
    return v0

    .line 1100
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1103
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1108
    .end local v2    # "i":I
    return v0

    .line 1104
    .restart local v2    # "i":I
    :cond_2
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_3

    .line 1105
    return v1

    .line 1103
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1101
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static equals([C[C)Z
    .locals 5
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .line 1149
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1150
    return v0

    .line 1152
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1155
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1160
    .end local v2    # "i":I
    return v0

    .line 1156
    .restart local v2    # "i":I
    :cond_2
    aget-char v3, p0, v2

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_3

    .line 1157
    return v1

    .line 1155
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1153
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static equals([D[D)Z
    .locals 8
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .line 1258
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1259
    return v0

    .line 1261
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1264
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1270
    .end local v2    # "i":I
    return v0

    .line 1265
    .restart local v2    # "i":I
    :cond_2
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 1266
    aget-wide v5, p1, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 1265
    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 1267
    return v1

    .line 1264
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1262
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static equals([F[F)Z
    .locals 5
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .line 1229
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1230
    return v0

    .line 1232
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1235
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1241
    .end local v2    # "i":I
    return v0

    .line 1236
    .restart local v2    # "i":I
    :cond_2
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 1237
    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 1236
    if-eq v3, v4, :cond_3

    .line 1238
    return v1

    .line 1235
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1233
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static equals([I[I)Z
    .locals 5
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 1175
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1176
    return v0

    .line 1178
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1181
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1186
    .end local v2    # "i":I
    return v0

    .line 1182
    .restart local v2    # "i":I
    :cond_2
    aget v3, p0, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_3

    .line 1183
    return v1

    .line 1181
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1179
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static equals([J[J)Z
    .locals 8
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .line 1201
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1202
    return v0

    .line 1204
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1207
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1212
    .end local v2    # "i":I
    return v0

    .line 1208
    .restart local v2    # "i":I
    :cond_2
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 1209
    return v1

    .line 1207
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1205
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 1311
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1312
    return v0

    .line 1314
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1317
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1323
    .end local v2    # "i":I
    return v0

    .line 1318
    .restart local v2    # "i":I
    :cond_2
    aget-object v3, p0, v2

    .local v3, "e1":Ljava/lang/Object;
    aget-object v4, p1, v2

    .line 1319
    .local v4, "e2":Ljava/lang/Object;
    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1320
    :goto_1
    return v1

    .line 1317
    .end local v3    # "e1":Ljava/lang/Object;
    .end local v4    # "e2":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    .end local v2    # "i":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static equals([S[S)Z
    .locals 5
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .line 1123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1124
    return v0

    .line 1126
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1129
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1134
    .end local v2    # "i":I
    return v0

    .line 1130
    .restart local v2    # "i":I
    :cond_2
    aget-short v3, p0, v2

    aget-short v4, p1, v2

    if-eq v3, v4, :cond_3

    .line 1131
    return v1

    .line 1129
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static equals([Z[Z)Z
    .locals 5
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .line 1285
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1286
    return v0

    .line 1288
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1291
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1296
    .end local v2    # "i":I
    return v0

    .line 1292
    .restart local v2    # "i":I
    :cond_2
    aget-boolean v3, p0, v2

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_3

    .line 1293
    return v1

    .line 1291
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1289
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .line 675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 678
    .end local v0    # "i":I
    return-void

    .line 676
    .restart local v0    # "i":I
    :cond_0
    aput-byte p1, p0, v0

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 694
    .end local v0    # "i":I
    return-void

    .line 692
    .restart local v0    # "i":I
    :cond_0
    aput p1, p0, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 726
    .end local v0    # "i":I
    return-void

    .line 724
    .restart local v0    # "i":I
    :cond_0
    aput-object p1, p0, v0

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fill([ZZ)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "value"    # Z

    .line 707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 710
    .end local v0    # "i":I
    return-void

    .line 708
    .restart local v0    # "i":I
    :cond_0
    aput-boolean p1, p0, v0

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([B)I
    .locals 5
    .param p0, "array"    # [B

    .line 859
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 860
    return v0

    .line 862
    :cond_0
    const/4 v1, 0x1

    .line 863
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 867
    return v1

    .line 863
    :cond_1
    aget-byte v3, p0, v0

    .line 865
    .local v3, "element":B
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 863
    .end local v3    # "element":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 5
    .param p0, "array"    # [C

    .line 831
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 832
    return v0

    .line 834
    :cond_0
    const/4 v1, 0x1

    .line 835
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 839
    return v1

    .line 835
    :cond_1
    aget-char v3, p0, v0

    .line 837
    .local v3, "element":C
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 835
    .end local v3    # "element":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 10
    .param p0, "array"    # [D

    .line 950
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 951
    return v0

    .line 953
    :cond_0
    const/4 v1, 0x1

    .line 955
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 963
    return v1

    .line 955
    :cond_1
    aget-wide v3, p0, v0

    .line 956
    .local v3, "element":D
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 961
    .local v5, "v":J
    mul-int/lit8 v7, v1, 0x1f

    const/16 v8, 0x20

    ushr-long v8, v5, v8

    xor-long/2addr v8, v5

    long-to-int v9, v8

    add-int v1, v7, v9

    .line 955
    .end local v3    # "element":D
    .end local v5    # "v":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 6
    .param p0, "array"    # [F

    .line 919
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 920
    return v0

    .line 922
    :cond_0
    const/4 v1, 0x1

    .line 923
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 930
    return v1

    .line 923
    :cond_1
    aget v3, p0, v0

    .line 928
    .local v3, "element":F
    mul-int/lit8 v4, v1, 0x1f

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    .line 923
    .end local v3    # "element":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 5
    .param p0, "array"    # [I

    .line 775
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 776
    return v0

    .line 778
    :cond_0
    const/4 v1, 0x1

    .line 779
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 783
    return v1

    .line 779
    :cond_1
    aget v3, p0, v0

    .line 781
    .local v3, "element":I
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 779
    .end local v3    # "element":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 8
    .param p0, "array"    # [J

    .line 887
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 888
    return v0

    .line 890
    :cond_0
    const/4 v1, 0x1

    .line 891
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 899
    return v1

    .line 891
    :cond_1
    aget-wide v3, p0, v0

    .line 896
    .local v3, "elementValue":J
    mul-int/lit8 v5, v1, 0x1f

    .line 897
    const/16 v6, 0x20

    ushr-long v6, v3, v6

    xor-long/2addr v6, v3

    long-to-int v7, v6

    .line 896
    add-int v1, v5, v7

    .line 891
    .end local v3    # "elementValue":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;

    .line 987
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 988
    return v0

    .line 990
    :cond_0
    const/4 v1, 0x1

    .line 991
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 1001
    return v1

    .line 991
    :cond_1
    aget-object v3, p0, v0

    .line 994
    .local v3, "element":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 995
    const/4 v4, 0x0

    .local v4, "elementHashCode":I
    goto :goto_1

    .line 997
    .end local v4    # "elementHashCode":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 999
    .restart local v4    # "elementHashCode":I
    :goto_1
    mul-int/lit8 v5, v1, 0x1f

    add-int v1, v5, v4

    .line 991
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "elementHashCode":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([S)I
    .locals 5
    .param p0, "array"    # [S

    .line 803
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 804
    return v0

    .line 806
    :cond_0
    const/4 v1, 0x1

    .line 807
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 811
    return v1

    .line 807
    :cond_1
    aget-short v3, p0, v0

    .line 809
    .local v3, "element":S
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 807
    .end local v3    # "element":S
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([Z)I
    .locals 6
    .param p0, "array"    # [Z

    .line 747
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 748
    return v0

    .line 750
    :cond_0
    const/4 v1, 0x1

    .line 751
    .local v1, "hashCode":I
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 755
    return v1

    .line 751
    :cond_1
    aget-boolean v3, p0, v0

    .line 753
    .local v3, "element":Z
    mul-int/lit8 v4, v1, 0x1f

    if-eqz v3, :cond_2

    const/16 v5, 0x4cf

    goto :goto_1

    :cond_2
    const/16 v5, 0x4d5

    :goto_1
    add-int v1, v4, v5

    .line 751
    .end local v3    # "element":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B

    .line 1493
    if-nez p0, :cond_0

    .line 1494
    const-string v0, "null"

    return-object v0

    .line 1496
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1497
    const-string v0, "[]"

    return-object v0

    .line 1499
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1500
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1501
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1502
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1506
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1503
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [C

    .line 1523
    if-nez p0, :cond_0

    .line 1524
    const-string v0, "null"

    return-object v0

    .line 1526
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1527
    const-string v0, "[]"

    return-object v0

    .line 1529
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1530
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1531
    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1532
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1536
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1533
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [D

    .line 1553
    if-nez p0, :cond_0

    .line 1554
    const-string v0, "null"

    return-object v0

    .line 1556
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1557
    const-string v0, "[]"

    return-object v0

    .line 1559
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1560
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1561
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1562
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1566
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1563
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [F

    .line 1583
    if-nez p0, :cond_0

    .line 1584
    const-string v0, "null"

    return-object v0

    .line 1586
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1587
    const-string v0, "[]"

    return-object v0

    .line 1589
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1590
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1591
    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1592
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1596
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1593
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [I

    .line 1613
    if-nez p0, :cond_0

    .line 1614
    const-string v0, "null"

    return-object v0

    .line 1616
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1617
    const-string v0, "[]"

    return-object v0

    .line 1619
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1620
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1621
    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1622
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1626
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1627
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1623
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [J

    .line 1643
    if-nez p0, :cond_0

    .line 1644
    const-string v0, "null"

    return-object v0

    .line 1646
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1647
    const-string v0, "[]"

    return-object v0

    .line 1649
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1650
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1651
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1652
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1656
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1653
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1703
    if-nez p0, :cond_0

    .line 1704
    const-string v0, "null"

    return-object v0

    .line 1706
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1707
    const-string v0, "[]"

    return-object v0

    .line 1709
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1710
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1711
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1712
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1716
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1713
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [S

    .line 1673
    if-nez p0, :cond_0

    .line 1674
    const-string v0, "null"

    return-object v0

    .line 1676
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1677
    const-string v0, "[]"

    return-object v0

    .line 1679
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1680
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1681
    const/4 v1, 0x0

    aget-short v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1682
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1686
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1683
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    aget-short v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Z

    .line 1463
    if-nez p0, :cond_0

    .line 1464
    const-string v0, "null"

    return-object v0

    .line 1466
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1467
    const-string v0, "[]"

    return-object v0

    .line 1469
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1470
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    const/4 v1, 0x0

    aget-boolean v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1472
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    .line 1476
    .end local v1    # "i":I
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1473
    .restart local v1    # "i":I
    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    aget-boolean v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.class final Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 40
    return-void
.end method

.method private readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 95
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 96
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 98
    :cond_0
    const/16 v1, 0x80

    .line 99
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 100
    .local v3, "length":I
    :goto_0
    and-int v4, v0, v1

    if-nez v4, :cond_1

    .line 101
    shr-int/lit8 v1, v1, 0x1

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_1
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v0, v4

    .line 105
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 106
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 107
    shl-int/lit8 v0, v0, 0x8

    .line 108
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 111
    int-to-long v4, v0

    return-wide v4
.end method


# virtual methods
.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 24
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 46
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 47
    .local v2, "inputLength":J
    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    long-to-int v5, v4

    .line 50
    .local v5, "bytesToSearch":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {v1, v4, v8, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 51
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 52
    .local v10, "tag":J
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 53
    :goto_1
    const-wide/32 v12, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v9, v10, v12

    if-eqz v9, :cond_3

    .line 54
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v9, v4

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    if-ne v9, v5, :cond_2

    .line 55
    return v8

    .line 57
    :cond_2
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v9, v8, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 58
    const/16 v4, 0x8

    shl-long v12, v10, v4

    const-wide/16 v14, -0x100

    and-long v9, v12, v14

    .line 59
    .end local v10    # "tag":J
    .local v9, "tag":J
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    move-wide v10, v9

    goto :goto_1

    .line 63
    .end local v9    # "tag":J
    .restart local v10    # "tag":J
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v12

    .line 64
    .local v12, "headerSize":J
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v14, v9

    .line 65
    .local v14, "headerStart":J
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v9, v12, v16

    if-eqz v9, :cond_b

    cmp-long v9, v2, v6

    if-eqz v9, :cond_4

    add-long v6, v14, v12

    cmp-long v9, v6, v2

    if-ltz v9, :cond_4

    move v9, v5

    const/16 v19, 0x0

    goto :goto_6

    .line 71
    :cond_4
    :goto_2
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v6, v6

    add-long v18, v14, v12

    cmp-long v9, v6, v18

    if-gez v9, :cond_9

    .line 72
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v6

    .line 73
    .local v6, "id":J
    cmp-long v9, v6, v16

    if-nez v9, :cond_5

    .line 74
    return v8

    .line 76
    :cond_5
    move v9, v5

    .end local v5    # "bytesToSearch":I
    .local v9, "bytesToSearch":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 77
    .local v4, "size":J
    const-wide/16 v19, 0x0

    cmp-long v21, v4, v19

    if-ltz v21, :cond_8

    const-wide/32 v21, 0x7fffffff

    cmp-long v23, v4, v21

    if-lez v23, :cond_6

    const/16 v19, 0x0

    goto :goto_4

    .line 80
    :cond_6
    cmp-long v21, v4, v19

    if-eqz v21, :cond_7

    .line 81
    const/16 v19, 0x0

    long-to-int v8, v4

    .line 82
    .local v8, "sizeInt":I
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 83
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_3

    .line 80
    .end local v8    # "sizeInt":I
    :cond_7
    const/16 v19, 0x0

    .line 85
    .end local v4    # "size":J
    .end local v6    # "id":J
    :goto_3
    move-object/from16 v1, p1

    move v5, v9

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto :goto_2

    .line 77
    .restart local v4    # "size":J
    .restart local v6    # "id":J
    :cond_8
    const/16 v19, 0x0

    .line 78
    :goto_4
    return v19

    .line 86
    .end local v4    # "size":J
    .end local v6    # "id":J
    .end local v9    # "bytesToSearch":I
    .restart local v5    # "bytesToSearch":I
    :cond_9
    move v9, v5

    const/16 v19, 0x0

    .end local v5    # "bytesToSearch":I
    .restart local v9    # "bytesToSearch":I
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v4, v1

    add-long v6, v14, v12

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    return v8

    .line 65
    .end local v9    # "bytesToSearch":I
    .restart local v5    # "bytesToSearch":I
    :cond_b
    move v9, v5

    const/16 v19, 0x0

    .line 67
    .end local v5    # "bytesToSearch":I
    .restart local v9    # "bytesToSearch":I
    :goto_6
    return v19
.end method

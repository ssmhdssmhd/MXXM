.class public final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;,
        Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    }
.end annotation


# static fields
.field private static final FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER:I = 0x20

.field private static final FRAME_FLAG_V3_IS_COMPRESSED:I = 0x80

.field private static final FRAME_FLAG_V3_IS_ENCRYPTED:I = 0x40

.field private static final FRAME_FLAG_V4_HAS_DATA_LENGTH:I = 0x1

.field private static final FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER:I = 0x40

.field private static final FRAME_FLAG_V4_IS_COMPRESSED:I = 0x8

.field private static final FRAME_FLAG_V4_IS_ENCRYPTED:I = 0x4

.field private static final FRAME_FLAG_V4_IS_UNSYNCHRONIZED:I = 0x2

.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field public static final NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 67
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V
    .locals 0
    .param p1, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 98
    return-void
.end method

.method private static copyOfRangeIfValid([BII)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 793
    if-gt p2, p1, :cond_0

    .line 795
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 797
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 12
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 525
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 528
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 532
    const/4 v3, 0x2

    const-string v5, "image/"

    const-string v6, "ISO-8859-1"

    if-ne p2, v3, :cond_0

    .line 533
    const/4 v3, 0x2

    .line 534
    .local v3, "mimeTypeEndIndex":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x3

    invoke-direct {v7, v2, v4, v8, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, "mimeType":Ljava/lang/String;
    const-string v5, "image/jpg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 536
    const-string v4, "image/jpeg"

    goto :goto_0

    .line 539
    .end local v3    # "mimeTypeEndIndex":I
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 540
    .restart local v3    # "mimeTypeEndIndex":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 541
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 546
    :cond_1
    :goto_0
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 548
    .local v5, "pictureType":I
    add-int/lit8 v6, v3, 0x2

    .line 549
    .local v6, "descriptionStartIndex":I
    invoke-static {v2, v6, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 550
    .local v7, "descriptionEndIndex":I
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v6

    invoke-direct {v8, v2, v6, v9, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 553
    .local v8, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v9

    add-int/2addr v9, v7

    .line 554
    .local v9, "pictureDataStartIndex":I
    array-length v10, v2

    invoke-static {v2, v9, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v10

    .line 556
    .local v10, "pictureData":[B
    new-instance v11, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v11, v4, v8, v5, v10}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v11
.end method

.method private static decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 700
    new-array v0, p1, [B

    .line 701
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 703
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .locals 17
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 594
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 595
    .local v1, "framePosition":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 596
    .local v2, "chapterIdEndIndex":I
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v8, v3

    .line 598
    .local v8, "chapterId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 600
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 601
    .local v9, "startTime":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 602
    .local v10, "endTime":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 603
    .local v3, "startOffset":J
    const-wide v5, 0xffffffffL

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 604
    const-wide/16 v3, -0x1

    move-wide v11, v3

    goto :goto_0

    .line 603
    :cond_0
    move-wide v11, v3

    .line 606
    .end local v3    # "startOffset":J
    .local v11, "startOffset":J
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 607
    .local v3, "endOffset":J
    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 608
    const-wide/16 v3, -0x1

    move-wide v13, v3

    goto :goto_1

    .line 607
    :cond_1
    move-wide v13, v3

    .line 611
    .end local v3    # "endOffset":J
    .local v13, "endOffset":J
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v3, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v4, v1, p1

    .line 613
    .local v4, "limit":I
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 614
    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v15, p5

    move/from16 v16, v1

    .end local v1    # "framePosition":I
    .local v16, "framePosition":I
    invoke-static {v5, v0, v6, v7, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1

    .line 616
    .local v1, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v1, :cond_2

    .line 617
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_2
    move/from16 v1, v16

    goto :goto_2

    .line 621
    .end local v16    # "framePosition":I
    .local v1, "framePosition":I
    :cond_3
    move/from16 v16, v1

    .end local v1    # "framePosition":I
    .restart local v16    # "framePosition":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 622
    .local v1, "subFrameArray":[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 623
    new-instance v7, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-object v15, v1

    .end local v1    # "subFrameArray":[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .local v15, "subFrameArray":[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    invoke-direct/range {v7 .. v15}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v7
.end method

.method private static decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 16
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 634
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 635
    .local v1, "framePosition":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 636
    .local v2, "elementIdEndIndex":I
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v8, v3

    .line 638
    .local v8, "elementId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 640
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 641
    .local v3, "ctocFlags":I
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 642
    .local v9, "isRoot":Z
    :goto_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 644
    .local v10, "isOrdered":Z
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 645
    .local v4, "childCount":I
    new-array v11, v4, [Ljava/lang/String;

    .line 646
    .local v11, "children":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 647
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 648
    .local v7, "startIndex":I
    iget-object v12, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v12, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v12

    .line 649
    .local v12, "endIndex":I
    new-instance v13, Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v15, v12, v7

    invoke-direct {v13, v14, v7, v15, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v13, v11, v5

    .line 650
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 646
    .end local v7    # "startIndex":I
    .end local v12    # "endIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 653
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v5, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v6, v1, p1

    .line 655
    .local v6, "limit":I
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 656
    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v7, p5

    invoke-static {v13, v0, v14, v15, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v12

    .line 658
    .local v12, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v12, :cond_3

    .line 659
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v12    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_3
    goto :goto_3

    .line 663
    :cond_4
    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v7, p5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 664
    .local v12, "subFrameArray":[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 665
    new-instance v7, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v7
.end method

.method private static decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .locals 10
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 561
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 563
    const/4 v0, 0x0

    return-object v0

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 567
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "charset":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v3, v2, [B

    .line 570
    .local v3, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 571
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 573
    .local v5, "language":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x4

    new-array v2, v2, [B

    .line 574
    .end local v3    # "data":[B
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x4

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 576
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 577
    .local v3, "descriptionEndIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 579
    .local v6, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 580
    .local v4, "textStartIndex":I
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 581
    .local v7, "textEndIndex":I
    invoke-static {v2, v4, v7, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 583
    .local v8, "text":Ljava/lang/String;
    new-instance v9, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v9, v5, v6, v8}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method private static decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 20
    .param p0, "majorVersion"    # I
    .param p1, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "unsignedIntFrameSizeHack"    # Z
    .param p3, "frameHeaderSize"    # I
    .param p4, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 277
    move/from16 v3, p0

    move-object/from16 v7, p1

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 278
    .local v1, "frameId0":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 279
    .local v4, "frameId1":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 280
    .local v5, "frameId2":I
    const/4 v8, 0x3

    if-lt v3, v8, :cond_0

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 283
    .local v6, "frameId3":I
    :goto_0
    const/4 v9, 0x4

    if-ne v3, v9, :cond_2

    .line 284
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 285
    .local v2, "frameSize":I
    if-nez p2, :cond_1

    .line 286
    and-int/lit16 v10, v2, 0xff

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0xe

    or-int/2addr v10, v11

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x15

    or-int v2, v10, v11

    move v10, v2

    goto :goto_1

    .line 285
    :cond_1
    move v10, v2

    goto :goto_1

    .line 289
    .end local v2    # "frameSize":I
    :cond_2
    if-ne v3, v8, :cond_3

    .line 290
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    move v10, v2

    .restart local v2    # "frameSize":I
    goto :goto_1

    .line 292
    .end local v2    # "frameSize":I
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    move v10, v2

    .line 295
    .local v10, "frameSize":I
    :goto_1
    if-lt v3, v8, :cond_4

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    move v11, v2

    .line 296
    .local v11, "flags":I
    const/4 v12, 0x0

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    .line 299
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 300
    return-object v12

    .line 303
    :cond_5
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int v13, v2, v10

    .line 304
    .local v13, "nextFramePosition":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    const-string v14, "Id3Decoder"

    if-le v13, v2, :cond_6

    .line 305
    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 307
    return-object v12

    .line 310
    :cond_6
    if-eqz p4, :cond_7

    .line 311
    move v2, v3

    move v3, v1

    move-object/from16 v1, p4

    .end local v1    # "frameId0":I
    .local v3, "frameId0":I
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v15

    move v1, v3

    move v3, v2

    move v2, v4

    move v4, v5

    move v5, v6

    .end local v3    # "frameId0":I
    .end local v6    # "frameId3":I
    .restart local v1    # "frameId0":I
    .local v2, "frameId1":I
    .local v4, "frameId2":I
    .local v5, "frameId3":I
    if-nez v15, :cond_8

    .line 313
    invoke-virtual {v7, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 314
    return-object v12

    .line 310
    .end local v2    # "frameId1":I
    .local v4, "frameId1":I
    .local v5, "frameId2":I
    .restart local v6    # "frameId3":I
    :cond_7
    move v2, v4

    move v4, v5

    move v5, v6

    .line 318
    .end local v6    # "frameId3":I
    .restart local v2    # "frameId1":I
    .local v4, "frameId2":I
    .local v5, "frameId3":I
    :cond_8
    const/4 v6, 0x0

    .line 319
    .local v6, "isCompressed":Z
    const/4 v15, 0x0

    .line 320
    .local v15, "isEncrypted":Z
    const/16 v16, 0x0

    .line 321
    .local v16, "isUnsynchronized":Z
    const/16 v17, 0x0

    .line 322
    .local v17, "hasDataLength":Z
    const/16 v18, 0x0

    .line 323
    .local v18, "hasGroupIdentifier":Z
    const/4 v0, 0x1

    if-ne v3, v8, :cond_c

    .line 324
    and-int/lit16 v8, v11, 0x80

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    move v6, v8

    .line 325
    and-int/lit8 v8, v11, 0x40

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    move v15, v8

    .line 326
    and-int/lit8 v8, v11, 0x20

    if-eqz v8, :cond_b

    const/16 v19, 0x1

    goto :goto_5

    :cond_b
    const/16 v19, 0x0

    :goto_5
    move/from16 v18, v19

    .line 328
    move/from16 v17, v6

    move v8, v6

    goto :goto_b

    .line 329
    :cond_c
    if-ne v3, v9, :cond_12

    .line 330
    and-int/lit8 v8, v11, 0x40

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    :goto_6
    move/from16 v18, v8

    .line 331
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    move v6, v8

    .line 332
    and-int/lit8 v8, v11, 0x4

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    move v15, v8

    .line 333
    and-int/lit8 v8, v11, 0x2

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    move/from16 v16, v8

    .line 334
    and-int/lit8 v8, v11, 0x1

    if-eqz v8, :cond_11

    const/16 v19, 0x1

    goto :goto_a

    :cond_11
    const/16 v19, 0x0

    :goto_a
    move/from16 v17, v19

    move v8, v6

    goto :goto_b

    .line 329
    :cond_12
    move v8, v6

    .line 337
    .end local v6    # "isCompressed":Z
    .local v8, "isCompressed":Z
    :goto_b
    if-nez v8, :cond_28

    if-eqz v15, :cond_13

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v5

    move-object/from16 v19, v12

    move v12, v2

    goto/16 :goto_12

    .line 343
    :cond_13
    if-eqz v18, :cond_14

    .line 344
    add-int/lit8 v10, v10, -0x1

    .line 345
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 347
    :cond_14
    if-eqz v17, :cond_15

    .line 348
    add-int/lit8 v10, v10, -0x4

    .line 349
    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 351
    :cond_15
    if-eqz v16, :cond_16

    .line 352
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v10

    .line 357
    :cond_16
    const/16 v0, 0x54

    const/4 v6, 0x2

    const/16 v9, 0x58

    if-ne v1, v0, :cond_18

    if-ne v2, v9, :cond_18

    if-ne v4, v9, :cond_18

    if-eq v3, v6, :cond_17

    if-ne v5, v9, :cond_18

    .line 359
    :cond_17
    :try_start_0
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v5

    move-object/from16 v19, v12

    move v12, v2

    move v2, v10

    move v10, v4

    .local v0, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_e

    .line 360
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_18
    if-ne v1, v0, :cond_19

    .line 361
    invoke-static {v3, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "id":Ljava/lang/String;
    invoke-static {v7, v10, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 363
    .local v0, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v5

    move-object/from16 v19, v12

    move v12, v2

    move v2, v10

    move v10, v4

    goto/16 :goto_e

    .line 402
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :catchall_0
    move-exception v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    move v2, v10

    move v10, v4

    goto/16 :goto_11

    .line 398
    :catch_0
    move-exception v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v5

    move-object/from16 v19, v12

    move v12, v2

    :goto_c
    move v2, v10

    move v10, v4

    goto/16 :goto_10

    .line 363
    :cond_19
    move-object/from16 v19, v12

    const/16 v12, 0x57

    if-ne v1, v12, :cond_1b

    if-ne v2, v9, :cond_1b

    if-ne v4, v9, :cond_1b

    if-eq v3, v6, :cond_1a

    if-ne v5, v9, :cond_1b

    .line 365
    :cond_1a
    :try_start_1
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    move v2, v10

    move v10, v4

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_e

    .line 366
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1b
    if-ne v1, v12, :cond_1c

    .line 367
    invoke-static {v3, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "id":Ljava/lang/String;
    invoke-static {v7, v10, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v6

    move-object v0, v6

    .line 369
    .local v0, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    move v2, v10

    move v10, v4

    goto/16 :goto_e

    .line 398
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :catch_1
    move-exception v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    goto :goto_c

    .line 369
    :cond_1c
    const/16 v9, 0x49

    const/16 v12, 0x50

    if-ne v1, v12, :cond_1d

    const/16 v0, 0x52

    if-ne v2, v0, :cond_1d

    if-ne v4, v9, :cond_1d

    const/16 v0, 0x56

    if-ne v5, v0, :cond_1d

    .line 370
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    move v2, v10

    move v10, v4

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_e

    .line 371
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1d
    const/16 v0, 0x47

    const/16 v9, 0x4f

    if-ne v1, v0, :cond_1f

    const/16 v0, 0x45

    if-ne v2, v0, :cond_1f

    if-ne v4, v9, :cond_1f

    const/16 v0, 0x42

    if-eq v5, v0, :cond_1e

    if-ne v3, v6, :cond_1f

    .line 373
    :cond_1e
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    move v2, v10

    move v10, v4

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_e

    .line 374
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1f
    const/16 v0, 0x41

    const/16 v9, 0x43

    if-ne v3, v6, :cond_20

    if-ne v1, v12, :cond_21

    const/16 v6, 0x49

    if-ne v2, v6, :cond_21

    if-ne v4, v9, :cond_21

    goto :goto_d

    :cond_20
    if-ne v1, v0, :cond_21

    if-ne v2, v12, :cond_21

    const/16 v6, 0x49

    if-ne v4, v6, :cond_21

    if-ne v5, v9, :cond_21

    .line 376
    :goto_d
    invoke-static {v7, v10, v3}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    move v2, v10

    move v10, v4

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_e

    .line 377
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_21
    const/16 v6, 0x4d

    if-ne v1, v9, :cond_23

    const/16 v12, 0x4f

    if-ne v2, v12, :cond_23

    if-ne v4, v6, :cond_23

    if-eq v5, v6, :cond_22

    const/4 v12, 0x2

    if-ne v3, v12, :cond_23

    .line 379
    :cond_22
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v12, v2

    move v9, v5

    move v2, v10

    move v10, v4

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_e

    .line 380
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_23
    if-ne v1, v9, :cond_24

    const/16 v12, 0x48

    if-ne v2, v12, :cond_24

    if-ne v4, v0, :cond_24

    const/16 v0, 0x50

    if-ne v5, v0, :cond_24

    .line 381
    move-object v6, v7

    move v7, v1

    move-object v1, v6

    move-object/from16 v6, p4

    move v12, v2

    move v9, v5

    move v2, v10

    move/from16 v5, p3

    move v10, v4

    move/from16 v4, p2

    .end local v1    # "frameId0":I
    .end local v4    # "frameId2":I
    .end local v5    # "frameId3":I
    .local v2, "frameSize":I
    .local v7, "frameId0":I
    .local v9, "frameId3":I
    .local v10, "frameId2":I
    .local v12, "frameId1":I
    :try_start_2
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v3, p0

    move-object/from16 v1, p1

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_e

    .line 402
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :catchall_1
    move-exception v0

    move/from16 v3, p0

    move-object/from16 v1, p1

    goto/16 :goto_11

    .line 398
    :catch_2
    move-exception v0

    move/from16 v3, p0

    move-object/from16 v1, p1

    goto/16 :goto_10

    .line 380
    .end local v7    # "frameId0":I
    .end local v9    # "frameId3":I
    .end local v12    # "frameId1":I
    .restart local v1    # "frameId0":I
    .local v2, "frameId1":I
    .restart local v4    # "frameId2":I
    .restart local v5    # "frameId3":I
    .local v10, "frameSize":I
    :cond_24
    move v7, v1

    move v12, v2

    move v1, v5

    move v2, v10

    move v10, v4

    .line 383
    .end local v4    # "frameId2":I
    .end local v5    # "frameId3":I
    .local v1, "frameId3":I
    .local v2, "frameSize":I
    .restart local v7    # "frameId0":I
    .local v10, "frameId2":I
    .restart local v12    # "frameId1":I
    if-ne v7, v9, :cond_25

    const/16 v0, 0x54

    if-ne v12, v0, :cond_25

    const/16 v0, 0x4f

    if-ne v10, v0, :cond_25

    if-ne v1, v9, :cond_25

    .line 384
    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move v9, v1

    move-object/from16 v1, p1

    .end local v1    # "frameId3":I
    .restart local v9    # "frameId3":I
    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v0

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_e

    .line 383
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .end local v9    # "frameId3":I
    .restart local v1    # "frameId3":I
    :cond_25
    move/from16 v3, p0

    move v9, v1

    move-object/from16 v1, p1

    .line 386
    .end local v1    # "frameId3":I
    .restart local v9    # "frameId3":I
    if-ne v7, v6, :cond_26

    const/16 v0, 0x4c

    if-ne v12, v0, :cond_26

    if-ne v10, v0, :cond_26

    const/16 v0, 0x54

    if-ne v9, v0, :cond_26

    .line 387
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeMlltFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    move-result-object v0

    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_e

    .line 389
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_26
    invoke-static {v3, v7, v12, v10, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "id":Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v4

    move-object v0, v4

    .line 392
    .local v0, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :goto_e
    if-nez v0, :cond_27

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode frame: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 394
    invoke-static {v3, v7, v12, v10, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", frameSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_f

    .line 398
    .end local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :catch_3
    move-exception v0

    goto :goto_10

    .line 397
    .restart local v0    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_27
    :goto_f
    nop

    .line 402
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 397
    return-object v0

    .line 399
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_10
    :try_start_4
    const-string v4, "Unsupported character encoding"

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 400
    nop

    .line 402
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 400
    return-object v19

    .line 402
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_2
    move-exception v0

    :goto_11
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 403
    throw v0

    .line 337
    .end local v7    # "frameId0":I
    .end local v9    # "frameId3":I
    .end local v12    # "frameId1":I
    .local v1, "frameId0":I
    .local v2, "frameId1":I
    .restart local v4    # "frameId2":I
    .restart local v5    # "frameId3":I
    .local v10, "frameSize":I
    :cond_28
    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move v9, v5

    move-object/from16 v19, v12

    move v12, v2

    .line 338
    .end local v1    # "frameId0":I
    .end local v2    # "frameId1":I
    .end local v5    # "frameId3":I
    .restart local v7    # "frameId0":I
    .restart local v9    # "frameId3":I
    .restart local v12    # "frameId1":I
    :goto_12
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 340
    return-object v19
.end method

.method private static decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .locals 14
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 499
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 502
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 504
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 505
    .local v3, "mimeTypeEndIndex":I
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, v2, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 507
    .local v5, "mimeType":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .line 508
    .local v4, "filenameStartIndex":I
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 509
    .local v6, "filenameEndIndex":I
    invoke-static {v2, v4, v6, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 511
    .local v7, "filename":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int/2addr v8, v6

    .line 512
    .local v8, "descriptionStartIndex":I
    invoke-static {v2, v8, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v9

    .line 513
    .local v9, "descriptionEndIndex":I
    nop

    .line 514
    invoke-static {v2, v8, v9, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 516
    .local v10, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v11

    add-int/2addr v11, v9

    .line 517
    .local v11, "objectDataStartIndex":I
    array-length v12, v2

    invoke-static {v2, v11, v12}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v12

    .line 519
    .local v12, "objectData":[B
    new-instance v13, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v13, v5, v7, v10, v12}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .locals 10
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, "Id3Decoder"

    if-ge v0, v1, :cond_0

    .line 159
    const-string v0, "Data too short to be an ID3 tag"

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v2

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 164
    .local v0, "id":I
    sget v1, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v0, v1, :cond_1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v2

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 170
    .local v1, "majorVersion":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 172
    .local v5, "flags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v6

    .line 174
    .local v6, "framesSize":I
    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-ne v1, v7, :cond_4

    .line 175
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 176
    .local v7, "isCompressed":Z
    :goto_0
    if-eqz v7, :cond_3

    .line 177
    const-string v4, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v2

    .line 180
    .end local v7    # "isCompressed":Z
    :cond_3
    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    if-ne v1, v7, :cond_7

    .line 181
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 182
    .local v2, "hasExtendedHeader":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 183
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 184
    .local v3, "extendedHeaderSize":I
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 185
    add-int/lit8 v7, v3, 0x4

    sub-int/2addr v6, v7

    .line 187
    .end local v2    # "hasExtendedHeader":Z
    .end local v3    # "extendedHeaderSize":I
    :cond_6
    goto :goto_4

    :cond_7
    if-ne v1, v8, :cond_d

    .line 188
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 189
    .restart local v2    # "hasExtendedHeader":Z
    :goto_2
    if-eqz v2, :cond_9

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    .line 191
    .restart local v3    # "extendedHeaderSize":I
    add-int/lit8 v7, v3, -0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 192
    sub-int/2addr v6, v3

    .line 194
    .end local v3    # "extendedHeaderSize":I
    :cond_9
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    .line 195
    .local v3, "hasFooter":Z
    :goto_3
    if-eqz v3, :cond_b

    .line 196
    add-int/lit8 v6, v6, -0xa

    .line 198
    .end local v2    # "hasExtendedHeader":Z
    .end local v3    # "hasFooter":Z
    :cond_b
    nop

    .line 204
    :goto_4
    if-ge v1, v8, :cond_c

    and-int/lit16 v2, v5, 0x80

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    .line 205
    .local v4, "isUnsynchronized":Z
    :goto_5
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v2, v1, v4, v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    return-object v2

    .line 199
    .end local v4    # "isUnsynchronized":Z
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v2
.end method

.method private static decodeMlltFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;
    .locals 14
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 670
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 671
    .local v1, "mpegFramesBetweenReference":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 672
    .local v2, "bytesBetweenReference":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 673
    .local v3, "millisecondsBetweenReference":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 674
    .local v6, "bitsForBytesDeviation":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 676
    .local v7, "bitsForMillisecondsDeviation":I
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    move-object v8, v0

    .line 677
    .local v8, "references":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-virtual {v8, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 678
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 v9, v0, 0x8

    .line 679
    .local v9, "referencesBits":I
    add-int v10, v6, v7

    .line 680
    .local v10, "bitsPerReference":I
    div-int v11, v9, v10

    .line 681
    .local v11, "referencesCount":I
    new-array v4, v11, [I

    .line 682
    .local v4, "bytesDeviations":[I
    new-array v5, v11, [I

    .line 683
    .local v5, "millisecondsDeviations":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_0

    .line 684
    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 685
    .local v12, "bytesDeviation":I
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 686
    .local v13, "millisecondsDeviation":I
    aput v12, v4, v0

    .line 687
    aput v13, v5, v0

    .line 683
    .end local v12    # "bytesDeviation":I
    .end local v13    # "millisecondsDeviation":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object v0
.end method

.method private static decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .locals 6
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 484
    new-array v0, p1, [B

    .line 485
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 487
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 488
    .local v2, "ownerEndIndex":I
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 490
    .local v3, "owner":Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .line 491
    .local v1, "privateDataStartIndex":I
    array-length v4, v0

    invoke-static {v0, v1, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v4

    .line 493
    .local v4, "privateData":[B
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v5, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 813
    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 814
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 7
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 433
    return-object v1

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 437
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "charset":Ljava/lang/String;
    add-int/lit8 v3, p1, -0x1

    new-array v3, v3, [B

    .line 440
    .local v3, "data":[B
    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 442
    invoke-static {v3, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 443
    .local v4, "valueEndIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v5, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 445
    .local v6, "value":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v5, p2, v1, v6}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 10
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 408
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 414
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 417
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 419
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 420
    .local v3, "descriptionEndIndex":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 422
    .local v5, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 423
    .local v4, "valueStartIndex":I
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 424
    .local v6, "valueEndIndex":I
    invoke-static {v2, v4, v6, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v9, "TXXX"

    invoke-direct {v8, v9, v5, v7}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 5
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 473
    new-array v0, p1, [B

    .line 474
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 476
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 477
    .local v2, "urlEndIndex":I
    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 479
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const/4 v4, 0x0

    invoke-direct {v1, p2, v4, v3}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 10
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 450
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 452
    const/4 v0, 0x0

    return-object v0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 456
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 459
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 461
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 462
    .local v3, "descriptionEndIndex":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 464
    .local v5, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 465
    .local v4, "urlStartIndex":I
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v6

    .line 466
    .local v6, "urlEndIndex":I
    const-string v7, "ISO-8859-1"

    invoke-static {v2, v4, v6, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v9, "WXXX"

    invoke-direct {v8, v9, v5, v7}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static delimiterLength(I)I
    .locals 1
    .param p0, "encodingByte"    # I

    .line 780
    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1
    .param p0, "encodingByte"    # I

    .line 732
    packed-switch p0, :pswitch_data_0

    .line 741
    const-string v0, "ISO-8859-1"

    return-object v0

    .line 738
    :pswitch_0
    const-string v0, "UTF-8"

    return-object v0

    .line 736
    :pswitch_1
    const-string v0, "UTF-16BE"

    return-object v0

    .line 734
    :pswitch_2
    const-string v0, "UTF-16"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .locals 10
    .param p0, "majorVersion"    # I
    .param p1, "frameId0"    # I
    .param p2, "frameId1"    # I
    .param p3, "frameId2"    # I
    .param p4, "frameId3"    # I

    .line 747
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-ne p0, v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    aput-object v7, v0, v3

    const-string v1, "%c%c%c"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v2

    aput-object v6, v9, v1

    aput-object v7, v9, v3

    aput-object v8, v9, v0

    const-string v0, "%c%c%c%c"

    invoke-static {v4, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 747
    :goto_0
    return-object v0
.end method

.method private static indexOfEos([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .line 752
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 755
    .local v0, "terminationPos":I
    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 760
    :cond_0
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 761
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    .line 762
    return v0

    .line 764
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    goto :goto_0

    .line 767
    :cond_2
    array-length v1, p0

    return v1

    .line 756
    :cond_3
    :goto_1
    return v0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .line 771
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 772
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 773
    return v0

    .line 771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method static synthetic lambda$static$0(IIIII)Z
    .locals 1
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method private static removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .locals 5
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "length"    # I

    .line 715
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 716
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p1, :cond_1

    .line 717
    aget-byte v2, v0, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    .line 718
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    add-int/lit8 p1, p1, -0x1

    .line 716
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v1    # "i":I
    :cond_1
    return p1
.end method

.method private static validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z
    .locals 19
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "majorVersion"    # I
    .param p2, "frameHeaderSize"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z

    .line 210
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 212
    .local v3, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v0, v5, :cond_e

    .line 217
    const/4 v0, 0x3

    if-lt v2, v0, :cond_0

    .line 218
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 219
    .local v6, "id":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 220
    .local v7, "frameSize":J
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .local v9, "flags":I
    goto :goto_1

    .line 222
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v6

    .line 223
    .restart local v6    # "id":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v7, v7

    .line 224
    .restart local v7    # "frameSize":J
    const/4 v9, 0x0

    .line 227
    .restart local v9    # "flags":I
    :goto_1
    const-wide/16 v10, 0x0

    if-nez v6, :cond_1

    cmp-long v12, v7, v10

    if-nez v12, :cond_1

    if-nez v9, :cond_1

    .line 229
    nop

    .line 267
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 229
    return v4

    .line 231
    :cond_1
    const/4 v12, 0x4

    const/4 v13, 0x0

    if-ne v2, v12, :cond_3

    if-nez p3, :cond_3

    .line 233
    const-wide/32 v14, 0x808080

    and-long/2addr v14, v7

    cmp-long v16, v14, v10

    if-eqz v16, :cond_2

    .line 234
    nop

    .line 267
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 234
    return v13

    .line 236
    :cond_2
    const-wide/16 v10, 0xff

    and-long v14, v7, v10

    const/16 v16, 0x8

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0x7

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x10

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0xe

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x18

    shr-long v16, v7, v16

    and-long v10, v16, v10

    const/16 v16, 0x15

    shl-long v10, v10, v16

    or-long v7, v14, v10

    .line 239
    :cond_3
    const/4 v10, 0x0

    .line 240
    .local v10, "hasGroupIdentifier":Z
    const/4 v11, 0x0

    .line 241
    .local v11, "hasDataLength":Z
    if-ne v2, v12, :cond_6

    .line 242
    and-int/lit8 v0, v9, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move v10, v0

    .line 243
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v11, v4

    goto :goto_6

    .line 244
    :cond_6
    if-ne v2, v0, :cond_9

    .line 245
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    move v10, v0

    .line 247
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    move v11, v4

    .line 249
    :cond_9
    :goto_6
    const/4 v0, 0x0

    .line 250
    .local v0, "minimumFrameSize":I
    if-eqz v10, :cond_a

    .line 251
    add-int/lit8 v0, v0, 0x1

    .line 253
    :cond_a
    if-eqz v11, :cond_b

    .line 254
    add-int/lit8 v0, v0, 0x4

    .line 256
    :cond_b
    int-to-long v14, v0

    cmp-long v4, v7, v14

    if-gez v4, :cond_c

    .line 257
    nop

    .line 267
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 257
    return v13

    .line 259
    :cond_c
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v14, v4

    cmp-long v4, v14, v7

    if-gez v4, :cond_d

    .line 260
    nop

    .line 267
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 260
    return v13

    .line 262
    :cond_d
    long-to-int v4, v7

    :try_start_3
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    .end local v0    # "minimumFrameSize":I
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    .end local v10    # "hasGroupIdentifier":Z
    .end local v11    # "hasDataLength":Z
    goto/16 :goto_0

    .line 267
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 265
    :cond_e
    nop

    .line 267
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 265
    return v4

    .line 267
    :catchall_1
    move-exception v0

    move/from16 v5, p2

    :goto_7
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 268
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 3
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    .line 103
    iget-object v0, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 104
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    return-object v1
.end method

.method public decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 119
    .local v1, "id3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v2

    .line 120
    .local v2, "id3Header":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 121
    return-object v3

    .line 124
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 125
    .local v4, "startPosition":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    .line 126
    .local v5, "frameHeaderSize":I
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v6

    .line 127
    .local v6, "framesSize":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v7

    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v6

    .line 130
    :cond_2
    add-int v7, v4, v6

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v5, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-nez v8, :cond_4

    .line 134
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    invoke-static {v1, v9, v5, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 135
    const/4 v7, 0x1

    goto :goto_1

    .line 137
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Id3Decoder"

    invoke-static {v9, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v3

    .line 142
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v5, :cond_6

    .line 143
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v3

    iget-object v8, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {v3, v1, v7, v5, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v3

    .line 145
    .local v3, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v3, :cond_5

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_5
    goto :goto_1

    .line 150
    :cond_6
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v3
.end method

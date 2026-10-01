.class public Lorg/apache/commons/fileupload/MultipartStream;
.super Ljava/lang/Object;
.source "MultipartStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;,
        Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;,
        Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
        Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
    }
.end annotation


# static fields
.field protected static final BOUNDARY_PREFIX:[B

.field public static final CR:B = 0xdt

.field public static final DASH:B = 0x2dt

.field protected static final DEFAULT_BUFSIZE:I = 0x1000

.field protected static final FIELD_SEPARATOR:[B

.field public static final HEADER_PART_SIZE_MAX:I = 0x2800

.field protected static final HEADER_SEPARATOR:[B

.field public static final LF:B = 0xat

.field protected static final STREAM_TERMINATOR:[B


# instance fields
.field private boundary:[B

.field private boundaryLength:I

.field private final bufSize:I

.field private final buffer:[B

.field private head:I

.field private headerEncoding:Ljava/lang/String;

.field private final input:Ljava/io/InputStream;

.field private keepRegion:I

.field private final notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

.field private tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 190
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    .line 196
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lorg/apache/commons/fileupload/MultipartStream;->FIELD_SEPARATOR:[B

    .line 202
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/fileupload/MultipartStream;->STREAM_TERMINATOR:[B

    .line 207
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0xdt
        0xat
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B

    .line 388
    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BI)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "bufSize"    # I

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 304
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "bufSize"    # I
    .param p4, "pNotifier"    # Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    .line 332
    iput p3, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    .line 333
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    .line 334
    iput-object p4, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 338
    array-length v0, p2

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    .line 339
    array-length v0, p2

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 340
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->keepRegion:I

    .line 341
    sget-object v0, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    .line 342
    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    .line 341
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    .line 344
    array-length v2, p2

    .line 343
    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 347
    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    .line 348
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "pNotifier"    # Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 368
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 369
    return-void
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 0

    .line 252
    iget p0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    return p0
.end method

.method static synthetic access$1(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 0

    .line 246
    iget p0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    return p0
.end method

.method static synthetic access$2(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 0

    .line 225
    iget p0, p0, Lorg/apache/commons/fileupload/MultipartStream;->keepRegion:I

    return p0
.end method

.method static synthetic access$3(Lorg/apache/commons/fileupload/MultipartStream;)[B
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    return-object p0
.end method

.method static synthetic access$4(Lorg/apache/commons/fileupload/MultipartStream;I)V
    .locals 0

    .line 246
    iput p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    return-void
.end method

.method static synthetic access$5(Lorg/apache/commons/fileupload/MultipartStream;)Ljava/io/InputStream;
    .locals 0

    .line 214
    iget-object p0, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$6(Lorg/apache/commons/fileupload/MultipartStream;I)V
    .locals 0

    .line 252
    iput p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    return-void
.end method

.method static synthetic access$7(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 0

    .line 235
    iget p0, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    return p0
.end method

.method static synthetic access$8(Lorg/apache/commons/fileupload/MultipartStream;)Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
    .locals 0

    .line 262
    iget-object p0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    return-object p0
.end method

.method public static arrayequals([B[BI)Z
    .locals 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "count"    # I

    .line 680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 685
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0

    .line 681
    .restart local v0    # "i":I
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    .line 682
    const/4 v1, 0x0

    return v1

    .line 680
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public discardBodyData()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/fileupload/MultipartStream;->readBodyData(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method protected findByte(BI)I
    .locals 2
    .param p1, "value"    # B
    .param p2, "pos"    # I

    .line 701
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    if-lt v0, v1, :cond_0

    .line 707
    .end local v0    # "i":I
    const/4 v0, -0x1

    return v0

    .line 702
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 703
    return v0

    .line 701
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected findSeparator()I
    .locals 6

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "match":I
    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    sub-int/2addr v1, v2

    .line 721
    .local v1, "maxpos":I
    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .local v2, "first":I
    :goto_0
    const/4 v3, -0x1

    if-gt v2, v1, :cond_5

    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-ne v0, v4, :cond_0

    goto :goto_4

    .line 722
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/fileupload/MultipartStream;->findByte(BI)I

    move-result v2

    .line 723
    if-eq v2, v3, :cond_4

    if-le v2, v1, :cond_1

    goto :goto_3

    .line 726
    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-lt v0, v3, :cond_2

    goto :goto_2

    .line 727
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    add-int v4, v2, v0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_3

    .line 728
    nop

    .line 721
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 724
    :cond_4
    :goto_3
    return v3

    .line 732
    :cond_5
    :goto_4
    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-ne v0, v4, :cond_6

    .line 733
    add-int/lit8 v3, v2, -0x1

    return v3

    .line 735
    :cond_6
    return v3
.end method

.method public getHeaderEncoding()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    return-object v0
.end method

.method newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
    .locals 1

    .line 611
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;-><init>(Lorg/apache/commons/fileupload/MultipartStream;)V

    return-object v0
.end method

.method public readBodyData(Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    move-result-object v0

    .line 602
    .local v0, "istream":Ljava/io/InputStream;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    move-result-wide v1

    long-to-int v2, v1

    return v2
.end method

.method public readBoundary()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .line 454
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 455
    .local v1, "marker":[B
    const/4 v2, 0x0

    .line 457
    .local v2, "nextChunk":Z
    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B

    move-result v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 460
    aget-byte v3, v1, v4

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 467
    return v5

    .line 470
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B

    move-result v3

    aput-byte v3, v1, v5

    .line 471
    sget-object v3, Lorg/apache/commons/fileupload/MultipartStream;->STREAM_TERMINATOR:[B

    invoke-static {v1, v3, v0}, Lorg/apache/commons/fileupload/MultipartStream;->arrayequals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    const/4 v0, 0x0

    .line 473
    .end local v2    # "nextChunk":Z
    .local v0, "nextChunk":Z
    goto :goto_0

    .end local v0    # "nextChunk":Z
    .restart local v2    # "nextChunk":Z
    :cond_1
    sget-object v3, Lorg/apache/commons/fileupload/MultipartStream;->FIELD_SEPARATOR:[B

    invoke-static {v1, v3, v0}, Lorg/apache/commons/fileupload/MultipartStream;->arrayequals([B[BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    const/4 v0, 0x1

    .line 475
    .end local v2    # "nextChunk":Z
    .restart local v0    # "nextChunk":Z
    nop

    .line 482
    :goto_0
    return v0

    .line 476
    .end local v0    # "nextChunk":Z
    .restart local v2    # "nextChunk":Z
    :cond_2
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    .line 477
    const-string v3, "Unexpected characters follow a boundary"

    .line 476
    invoke-direct {v0, v3}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    .end local v1    # "marker":[B
    .end local v2    # "nextChunk":Z
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .restart local v1    # "marker":[B
    .restart local v2    # "nextChunk":Z
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v4, "Stream ended unexpectedly"

    invoke-direct {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    if-ne v0, v1, :cond_1

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 430
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    .line 431
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteBytesRead(I)V

    goto :goto_0

    .line 433
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No more data is available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readHeaders()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .line 535
    const/4 v0, 0x0

    .line 538
    .local v0, "i":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 539
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 540
    .local v2, "size":I
    nop

    :goto_0
    sget-object v3, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 560
    const/4 v3, 0x0

    .line 561
    .local v3, "headers":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 563
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v3    # "headers":Ljava/lang/String;
    .local v4, "headers":Ljava/lang/String;
    goto :goto_1

    .end local v4    # "headers":Ljava/lang/String;
    .restart local v3    # "headers":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 567
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    .end local v3    # "headers":Ljava/lang/String;
    .local v4, "headers":Ljava/lang/String;
    goto :goto_1

    .line 570
    .end local v4    # "headers":Ljava/lang/String;
    .restart local v3    # "headers":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    .end local v3    # "headers":Ljava/lang/String;
    .restart local v4    # "headers":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 542
    .end local v4    # "headers":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    .local v3, "b":B
    nop

    .line 546
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x2800

    if-gt v2, v4, :cond_3

    .line 552
    sget-object v4, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    aget-byte v4, v4, v0

    if-ne v3, v4, :cond_2

    .line 553
    add-int/lit8 v0, v0, 0x1

    .line 554
    goto :goto_2

    .line 555
    :cond_2
    const/4 v0, 0x0

    .line 557
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 547
    :cond_3
    new-instance v4, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    .line 548
    nop

    .line 547
    const-string v5, "Header section has more than 10240 bytes (maybe it is not properly terminated)"

    invoke-direct {v4, v5}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 543
    .end local v3    # "b":B
    :catch_1
    move-exception v3

    .line 544
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v5, "Stream ended unexpectedly"

    invoke-direct {v4, v5}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v4

    :goto_4
    goto :goto_3
.end method

.method public setBoundary([B)V
    .locals 4
    .param p1, "boundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;
        }
    .end annotation

    .line 508
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    .line 513
    array-length v2, p1

    .line 512
    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    return-void

    .line 509
    :cond_0
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;

    .line 510
    nop

    .line 509
    const-string v1, "The length of a boundary token can not be changed"

    invoke-direct {v0, v1}, Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeaderEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .line 414
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public skipPreamble()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v2, v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 649
    const/16 v0, 0xa

    const/4 v1, 0x1

    const/16 v2, 0xd

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->discardBodyData()I

    .line 653
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readBoundary()Z

    move-result v5
    :try_end_0
    .catch Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v7, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v8, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v8, v8

    sub-int/2addr v8, v3

    invoke-static {v6, v4, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 660
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v2, v3, v4

    .line 661
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v0, v2, v1

    .line 653
    return v5

    .line 656
    :catchall_0
    move-exception v5

    .line 658
    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v7, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v8, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v8, v8

    sub-int/2addr v8, v3

    invoke-static {v6, v4, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 660
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v2, v3, v4

    .line 661
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v0, v2, v1

    .line 662
    throw v5

    .line 654
    :catch_0
    move-exception v5

    .line 658
    .local v5, "e":Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v7, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v8, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v8, v8

    sub-int/2addr v8, v3

    invoke-static {v6, v4, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 660
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v2, v3, v4

    .line 661
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v0, v2, v1

    .line 655
    return v4
.end method

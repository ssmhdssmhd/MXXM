.class public final Lcom/google/android/exoplayer2/extractor/ts/TsUtil;
.super Ljava/lang/Object;
.source "TsUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static findSyncBytePosition([BII)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "startPosition"    # I
    .param p2, "limitPosition"    # I

    .line 29
    move v0, p1

    .line 30
    .local v0, "position":I
    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x47

    if-eq v1, v2, :cond_0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return v0
.end method

.method public static readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J
    .locals 11
    .param p0, "packetBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "startOfPacket"    # I
    .param p2, "pcrPid"    # I

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_0

    .line 50
    return-wide v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 54
    .local v0, "tsPacketHeader":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 56
    return-wide v2

    .line 58
    :cond_1
    const v1, 0x1fff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    .line 59
    .local v1, "pid":I
    if-eq v1, p2, :cond_2

    .line 60
    return-wide v2

    .line 62
    :cond_2
    and-int/lit8 v4, v0, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 63
    .local v4, "adaptationFieldExists":Z
    :goto_0
    if-nez v4, :cond_4

    .line 64
    return-wide v2

    .line 67
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 68
    .local v7, "adaptationFieldLength":I
    const/4 v8, 0x7

    if-lt v7, v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    if-lt v9, v8, :cond_6

    .line 69
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 70
    .local v8, "flags":I
    and-int/lit8 v9, v8, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 71
    .local v5, "pcrFlagSet":Z
    :goto_1
    if-eqz v5, :cond_6

    .line 72
    const/4 v2, 0x6

    new-array v2, v2, [B

    .line 73
    .local v2, "pcrBytes":[B
    array-length v3, v2

    invoke-virtual {p0, v2, v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 74
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrValueFromPcrBytes([B)J

    move-result-wide v9

    return-wide v9

    .line 77
    .end local v2    # "pcrBytes":[B
    .end local v5    # "pcrFlagSet":Z
    .end local v8    # "flags":I
    :cond_6
    return-wide v2
.end method

.method private static readPcrValueFromPcrBytes([B)J
    .locals 8
    .param p0, "pcrBytes"    # [B

    .line 86
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x19

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x11

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x9

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/4 v4, 0x7

    shr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

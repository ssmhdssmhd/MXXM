.class public final Lcom/google/android/exoplayer2/text/cea/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE_ATSC:I = 0x31

.field private static final PROVIDER_CODE_DIRECTV:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field public static final USER_DATA_IDENTIFIER_GA94:I

.field public static final USER_DATA_TYPE_CODE_MPEG_CC:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "GA94"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_DATA_IDENTIFIER_GA94:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 12
    .param p0, "presentationTimeUs"    # J
    .param p2, "seiBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p3, "outputs"    # [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 47
    nop

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 48
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 49
    .local v0, "payloadType":I
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 50
    .local v2, "payloadSize":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 52
    .local v3, "nextPayloadPosition":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 56
    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const/16 v4, 0x8

    if-lt v2, v4, :cond_8

    .line 57
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 58
    .local v4, "countryCode":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 59
    .local v5, "providerCode":I
    const/4 v6, 0x0

    .line 60
    .local v6, "userIdentifier":I
    const/16 v7, 0x31

    if-ne v5, v7, :cond_1

    .line 61
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 63
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 64
    .local v8, "userDataTypeCode":I
    const/16 v9, 0x2f

    if-ne v5, v9, :cond_2

    .line 65
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 67
    :cond_2
    const/16 v10, 0xb5

    const/4 v11, 0x0

    if-ne v4, v10, :cond_4

    if-eq v5, v7, :cond_3

    if-ne v5, v9, :cond_4

    :cond_3
    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 71
    .local v9, "messageIsSupportedCeaCaption":Z
    :goto_1
    if-ne v5, v7, :cond_6

    .line 72
    sget v7, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_DATA_IDENTIFIER_GA94:I

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v9, v1

    .line 74
    :cond_6
    if-eqz v9, :cond_8

    .line 75
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_4

    .line 54
    .end local v4    # "countryCode":I
    .end local v5    # "providerCode":I
    .end local v6    # "userIdentifier":I
    .end local v8    # "userDataTypeCode":I
    .end local v9    # "messageIsSupportedCeaCaption":Z
    :cond_7
    :goto_3
    const-string v1, "CeaUtil"

    const-string v4, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    .line 78
    :cond_8
    :goto_4
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 79
    .end local v0    # "payloadType":I
    .end local v2    # "payloadSize":I
    .end local v3    # "nextPayloadPosition":I
    goto :goto_0

    .line 80
    :cond_9
    return-void
.end method

.method public static consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 15
    .param p0, "presentationTimeUs"    # J
    .param p2, "ccDataBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p3, "outputs"    # [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 92
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 93
    .local v2, "firstByte":I
    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 94
    .local v3, "processCcDataFlag":Z
    :goto_0
    if-nez v3, :cond_1

    .line 96
    return-void

    .line 98
    :cond_1
    and-int/lit8 v6, v2, 0x1f

    .line 99
    .local v6, "ccCount":I
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 102
    mul-int/lit8 v11, v6, 0x3

    .line 103
    .local v11, "sampleLength":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 104
    .local v5, "sampleStartPosition":I
    array-length v14, v1

    :goto_1
    if-ge v4, v14, :cond_2

    aget-object v7, v1, v4

    .line 105
    .local v7, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 106
    invoke-interface {v7, v0, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 107
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    move-wide v8, p0

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 104
    .end local v7    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    :cond_2
    return-void
.end method

.method private static readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "value":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_1

    .line 129
    const/4 v1, -0x1

    return v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 132
    .local v1, "b":I
    add-int/2addr v0, v1

    .line 133
    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 134
    return v0
.end method

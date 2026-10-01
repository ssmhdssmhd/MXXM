.class public final Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio/mpeg-L1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "audio/mpeg-L2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "audio/mpeg"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 36
    const v0, 0xbb80

    const/16 v1, 0x7d00

    const v2, 0xac44

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    .line 37
    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 43
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_2
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .locals 10
    .param p0, "header"    # I

    .line 53
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_0

    .line 54
    return v2

    .line 57
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    .line 58
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 59
    return v2

    .line 62
    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    .line 63
    .local v4, "layer":I
    if-nez v4, :cond_2

    .line 64
    return v2

    .line 67
    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    .line 68
    .local v5, "bitrateIndex":I
    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_4

    .line 73
    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    .line 74
    .local v6, "samplingRateIndex":I
    if-ne v6, v1, :cond_4

    .line 75
    return v2

    .line 78
    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    .line 79
    .local v2, "samplingRate":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 81
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 82
    :cond_5
    if-nez v0, :cond_6

    .line 84
    div-int/lit8 v2, v2, 0x4

    .line 88
    :cond_6
    :goto_0
    ushr-int/lit8 v8, p0, 0x9

    and-int/2addr v8, v3

    .line 89
    .local v8, "padding":I
    if-ne v4, v1, :cond_8

    .line 91
    if-ne v0, v1, :cond_7

    sget-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v1, v1, v3

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v3, v5, -0x1

    aget v1, v1, v3

    .line 92
    .local v1, "bitrate":I
    :goto_1
    mul-int/lit16 v3, v1, 0x2ee0

    div-int/2addr v3, v2

    add-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x4

    return v3

    .line 95
    .end local v1    # "bitrate":I
    :cond_8
    if-ne v0, v1, :cond_a

    .line 96
    if-ne v4, v7, :cond_9

    sget-object v7, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    goto :goto_2

    :cond_9
    sget-object v7, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    .local v7, "bitrate":I
    :goto_2
    goto :goto_3

    .line 99
    .end local v7    # "bitrate":I
    :cond_a
    sget-object v7, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v9, v5, -0x1

    aget v7, v7, v9

    .line 103
    .restart local v7    # "bitrate":I
    :goto_3
    const v9, 0x23280

    if-ne v0, v1, :cond_b

    .line 105
    mul-int v9, v9, v7

    div-int/2addr v9, v2

    add-int/2addr v9, v8

    return v9

    .line 108
    :cond_b
    if-ne v4, v3, :cond_c

    const v9, 0x11940

    :cond_c
    mul-int v9, v9, v7

    div-int/2addr v9, v2

    add-int/2addr v9, v8

    return v9

    .line 70
    .end local v2    # "samplingRate":I
    .end local v6    # "samplingRateIndex":I
    .end local v7    # "bitrate":I
    .end local v8    # "padding":I
    :cond_d
    :goto_4
    return v2
.end method

.method public static populateHeader(ILcom/google/android/exoplayer2/extractor/MpegAudioHeader;)Z
    .locals 15
    .param p0, "headerData"    # I
    .param p1, "header"    # Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    .line 121
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 122
    return v2

    .line 125
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/lit8 v4, v0, 0x3

    .line 126
    .local v4, "version":I
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    .line 127
    return v2

    .line 130
    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/lit8 v11, v3, 0x3

    .line 131
    .local v11, "layer":I
    if-nez v11, :cond_2

    .line 132
    return v2

    .line 135
    :cond_2
    ushr-int/lit8 v3, p0, 0xc

    const/16 v5, 0xf

    and-int/lit8 v12, v3, 0xf

    .line 136
    .local v12, "bitrateIndex":I
    if-eqz v12, :cond_e

    if-ne v12, v5, :cond_3

    goto/16 :goto_6

    .line 141
    :cond_3
    ushr-int/lit8 v3, p0, 0xa

    and-int/lit8 v13, v3, 0x3

    .line 142
    .local v13, "samplingRateIndex":I
    if-ne v13, v1, :cond_4

    .line 143
    return v2

    .line 146
    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v13

    .line 147
    .local v2, "sampleRate":I
    const/4 v3, 0x2

    if-ne v4, v3, :cond_5

    .line 149
    div-int/lit8 v2, v2, 0x2

    move v7, v2

    goto :goto_0

    .line 150
    :cond_5
    if-nez v4, :cond_6

    .line 152
    div-int/lit8 v2, v2, 0x4

    move v7, v2

    goto :goto_0

    .line 150
    :cond_6
    move v7, v2

    .line 155
    .end local v2    # "sampleRate":I
    .local v7, "sampleRate":I
    :goto_0
    ushr-int/lit8 v2, p0, 0x9

    and-int/2addr v2, v0

    .line 159
    .local v2, "padding":I
    if-ne v11, v1, :cond_8

    .line 161
    if-ne v4, v1, :cond_7

    sget-object v5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v6, v12, -0x1

    aget v5, v5, v6

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v6, v12, -0x1

    aget v5, v5, v6

    .line 162
    .local v5, "bitrate":I
    :goto_1
    mul-int/lit16 v6, v5, 0x2ee0

    div-int/2addr v6, v7

    add-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x4

    .line 163
    .local v6, "frameSize":I
    const/16 v8, 0x180

    move v14, v5

    move v10, v8

    .local v8, "samplesPerFrame":I
    goto :goto_4

    .line 166
    .end local v5    # "bitrate":I
    .end local v6    # "frameSize":I
    .end local v8    # "samplesPerFrame":I
    :cond_8
    const v5, 0x23280

    if-ne v4, v1, :cond_a

    .line 168
    if-ne v11, v3, :cond_9

    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v8, v12, -0x1

    aget v6, v6, v8

    goto :goto_2

    :cond_9
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v8, v12, -0x1

    aget v6, v6, v8

    .line 169
    .local v6, "bitrate":I
    :goto_2
    const/16 v8, 0x480

    .line 170
    .restart local v8    # "samplesPerFrame":I
    mul-int v5, v5, v6

    div-int/2addr v5, v7

    add-int/2addr v5, v2

    move v14, v6

    move v10, v8

    move v6, v5

    .local v5, "frameSize":I
    goto :goto_4

    .line 173
    .end local v5    # "frameSize":I
    .end local v6    # "bitrate":I
    .end local v8    # "samplesPerFrame":I
    :cond_a
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v8, v12, -0x1

    aget v6, v6, v8

    .line 174
    .restart local v6    # "bitrate":I
    if-ne v11, v0, :cond_b

    const/16 v8, 0x240

    goto :goto_3

    :cond_b
    const/16 v8, 0x480

    .line 175
    .restart local v8    # "samplesPerFrame":I
    :goto_3
    if-ne v11, v0, :cond_c

    const v5, 0x11940

    :cond_c
    mul-int v5, v5, v6

    div-int/2addr v5, v7

    add-int/2addr v5, v2

    move v14, v6

    move v10, v8

    move v6, v5

    .line 179
    .end local v8    # "samplesPerFrame":I
    .local v6, "frameSize":I
    .local v10, "samplesPerFrame":I
    .local v14, "bitrate":I
    :goto_4
    sget-object v5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v8, v11, 0x3

    aget-object v5, v5, v8

    .line 180
    .local v5, "mimeType":Ljava/lang/String;
    shr-int/lit8 v8, p0, 0x6

    and-int/2addr v8, v1

    if-ne v8, v1, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x2

    .line 181
    .local v8, "channels":I
    :goto_5
    mul-int/lit16 v9, v14, 0x3e8

    move-object/from16 v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    .line 183
    return v0

    .line 138
    .end local v2    # "padding":I
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "frameSize":I
    .end local v7    # "sampleRate":I
    .end local v8    # "channels":I
    .end local v10    # "samplesPerFrame":I
    .end local v13    # "samplingRateIndex":I
    .end local v14    # "bitrate":I
    :cond_e
    :goto_6
    return v2
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "frameSize"    # I
    .param p4, "sampleRate"    # I
    .param p5, "channels"    # I
    .param p6, "bitrate"    # I
    .param p7, "samplesPerFrame"    # I

    .line 203
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->version:I

    .line 204
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 205
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    .line 206
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 207
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->channels:I

    .line 208
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    .line 209
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 210
    return-void
.end method

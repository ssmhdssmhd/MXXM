.class public Lcom/cicada/player/utils/media/MediaCodecUtils;
.super Ljava/lang/Object;
.source "MediaCodecUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static allDecoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/cicada/player/utils/media/MediaCodecUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cicada/player/utils/media/MediaCodecUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCodecInfos(Ljava/lang/String;ZLandroid/media/MediaFormat;)Ljava/util/List;
    .locals 8
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cicada/player/utils/media/MediaCodecUtils;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 26
    invoke-static {}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getDeviceDecodecs()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    .line 29
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "mediaCodecInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    sget-object v2, Lcom/cicada/player/utils/media/MediaCodecUtils;->allDecoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodecInfo;

    .line 33
    .local v3, "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v3, p0}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "codecMimeType":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v3, v4}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 40
    .local v5, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    invoke-static {p1, v5, v4}, Lcom/cicada/player/utils/media/MediaCodecUtils;->isSecureSupport(ZLandroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result v6

    .line 41
    .local v6, "secureMatch":Z
    if-nez v6, :cond_2

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p2, v5, v4}, Lcom/cicada/player/utils/media/MediaCodecUtils;->isFormatSupport(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z

    move-result v7

    .line 47
    .local v7, "formatSupport":Z
    if-nez v7, :cond_3

    .line 49
    goto :goto_0

    .line 52
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    nop

    .end local v3    # "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "codecMimeType":Ljava/lang/String;
    .end local v5    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v6    # "secureMatch":Z
    .end local v7    # "formatSupport":Z
    goto :goto_0

    .line 55
    :cond_4
    monitor-exit v0

    return-object v1

    .line 24
    .end local v1    # "mediaCodecInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    .end local p0    # "mime":Ljava/lang/String;
    .end local p1    # "secure":Z
    .end local p2    # "format":Landroid/media/MediaFormat;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 189
    .local v3, "supportedType":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    return-object v3

    .line 188
    .end local v3    # "supportedType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDeviceDecodecs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "allCodecs":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    const/4 v1, 0x0

    .line 158
    .local v1, "codecInfos":[Landroid/media/MediaCodecInfo;
    const/4 v2, 0x0

    .line 159
    .local v2, "codecNums":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 160
    new-instance v3, Landroid/media/MediaCodecList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 161
    .local v3, "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-virtual {v3}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 162
    array-length v2, v1

    .line 163
    .end local v3    # "mediaCodecList":Landroid/media/MediaCodecList;
    goto :goto_0

    .line 164
    :cond_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    .line 167
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 168
    const/4 v5, 0x0

    .line 169
    .local v5, "info":Landroid/media/MediaCodecInfo;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_1

    .line 170
    aget-object v5, v1, v3

    goto :goto_2

    .line 172
    :cond_1
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 175
    :goto_2
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    goto :goto_3

    .line 178
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v5    # "info":Landroid/media/MediaCodecInfo;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method private static getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 116
    move v0, p2

    .line 117
    .local v0, "value":I
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 120
    :cond_0
    return v0
.end method

.method private static isFormatSupport(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z
    .locals 16
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;
    .param p2, "codecMimeType"    # Ljava/lang/String;

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, "isVideo":Z
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 61
    .local v3, "isAudio":Z
    const/16 v4, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v2, :cond_5

    .line 62
    const-string/jumbo v8, "width"

    invoke-static {v0, v8, v7}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    .line 63
    .local v8, "width":I
    const-string v9, "height"

    invoke-static {v0, v9, v7}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v7

    .line 64
    .local v7, "height":I
    if-lez v8, :cond_4

    if-gtz v7, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    const/4 v9, 0x0

    .line 69
    .local v9, "isFormatSupported":Z
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v4, :cond_3

    .line 70
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 71
    .local v4, "tmpWidth":I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 72
    .local v10, "tmpHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    .line 73
    .local v11, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v11, :cond_1

    .line 74
    const/4 v5, 0x0

    .end local v9    # "isFormatSupported":Z
    .local v5, "isFormatSupported":Z
    goto :goto_0

    .line 78
    .end local v5    # "isFormatSupported":Z
    .restart local v9    # "isFormatSupported":Z
    :cond_1
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v12

    .line 79
    .local v12, "supportedWidths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v13

    .line 80
    .local v13, "supportedHeights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v14

    .line 81
    .local v14, "widthSupport":Z
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v15

    .line 82
    .local v15, "heightSupport":Z
    if-eqz v14, :cond_2

    if-eqz v15, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 84
    .end local v4    # "tmpWidth":I
    .end local v9    # "isFormatSupported":Z
    .end local v10    # "tmpHeight":I
    .end local v11    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .end local v12    # "supportedWidths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v13    # "supportedHeights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v14    # "widthSupport":Z
    .end local v15    # "heightSupport":Z
    .restart local v5    # "isFormatSupported":Z
    :goto_0
    goto :goto_1

    .line 85
    .end local v5    # "isFormatSupported":Z
    .restart local v9    # "isFormatSupported":Z
    :cond_3
    const/4 v5, 0x1

    .line 88
    .end local v9    # "isFormatSupported":Z
    .restart local v5    # "isFormatSupported":Z
    :goto_1
    return v5

    .line 65
    .end local v5    # "isFormatSupported":Z
    :cond_4
    :goto_2
    return v5

    .line 90
    .end local v7    # "height":I
    .end local v8    # "width":I
    :cond_5
    if-eqz v3, :cond_d

    .line 91
    const/4 v8, 0x0

    .line 92
    .local v8, "isFormatSupported":Z
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v4, :cond_6

    .line 93
    const/4 v4, 0x1

    .end local v8    # "isFormatSupported":Z
    .local v4, "isFormatSupported":Z
    goto :goto_8

    .line 95
    .end local v4    # "isFormatSupported":Z
    .restart local v8    # "isFormatSupported":Z
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    .line 96
    .local v4, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v4, :cond_7

    .line 97
    const/4 v5, 0x0

    move v4, v5

    .end local v8    # "isFormatSupported":Z
    .restart local v5    # "isFormatSupported":Z
    goto :goto_8

    .line 99
    .end local v5    # "isFormatSupported":Z
    .restart local v8    # "isFormatSupported":Z
    :cond_7
    const-string v9, "sample-rate"

    invoke-static {v0, v9, v7}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 100
    .local v9, "sampleRate":I
    const-string v10, "channel-count"

    invoke-static {v0, v10, v7}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v10

    .line 102
    .local v10, "channelCount":I
    if-eq v9, v7, :cond_9

    invoke-virtual {v4, v9}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v11, 0x1

    .line 103
    .local v11, "sampleRateSupported":Z
    :goto_4
    if-eq v10, v7, :cond_b

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v7

    if-lt v7, v10, :cond_a

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v7, 0x1

    .line 105
    .local v7, "channelCountSupported":Z
    :goto_6
    if-eqz v11, :cond_c

    if-eqz v7, :cond_c

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    move v4, v5

    .line 108
    .end local v7    # "channelCountSupported":Z
    .end local v8    # "isFormatSupported":Z
    .end local v9    # "sampleRate":I
    .end local v10    # "channelCount":I
    .end local v11    # "sampleRateSupported":Z
    .local v4, "isFormatSupported":Z
    :goto_8
    return v4

    .line 111
    .end local v4    # "isFormatSupported":Z
    :cond_d
    return v6
.end method

.method private static isSecureSupport(ZLandroid/media/MediaCodecInfo$CodecCapabilities;Ljava/lang/String;)Z
    .locals 6
    .param p0, "secure"    # Z
    .param p1, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;
    .param p2, "codecMimeType"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "secureSupported":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "secure-playback"

    if-lt v1, v2, :cond_0

    .line 127
    invoke-virtual {p1, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 129
    :cond_0
    const-string/jumbo v1, "video/avc"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    :goto_0
    const/4 v1, 0x0

    .line 133
    .local v1, "secureRequired":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    .line 134
    invoke-virtual {p1, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 136
    :cond_1
    const/4 v1, 0x0

    .line 139
    :goto_1
    const/4 v2, 0x0

    if-nez p0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    if-eqz p0, :cond_4

    if-nez v0, :cond_4

    .line 140
    :cond_3
    return v2

    .line 143
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    if-lt v3, v4, :cond_5

    const/4 v2, 0x1

    .line 144
    .local v2, "secureDecodersExplicit":Z
    :cond_5
    if-eqz v2, :cond_6

    if-eq p0, v0, :cond_7

    :cond_6
    if-nez v2, :cond_8

    if-nez p0, :cond_8

    .line 146
    :cond_7
    return v5

    .line 148
    :cond_8
    return v5
.end method

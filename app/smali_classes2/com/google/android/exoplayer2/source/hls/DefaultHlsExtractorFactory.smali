.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final CMF_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".cmf"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final payloadReaderFactoryFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "payloadReaderFactoryFlags"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 71
    return-void
.end method

.method private static buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;
    .locals 2
    .param p0, "extractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Landroid/util/Pair;

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 255
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    return-object v0
.end method

.method private createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .line 178
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "lastPathSegment":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 180
    const-string v0, ""

    .line 182
    :cond_0
    const-string/jumbo v1, "text/vtt"

    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 183
    const-string v1, ".webvtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 184
    const-string v1, ".vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v6, p4

    move-object v4, p5

    goto/16 :goto_3

    .line 186
    :cond_1
    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    return-object v1

    .line 188
    :cond_2
    const-string v1, ".ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 189
    const-string v1, ".ec3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v6, p4

    move-object v4, p5

    goto :goto_2

    .line 191
    :cond_3
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object v1

    .line 193
    :cond_4
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const-string v3, ".m4"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    const-string v2, ".cmf"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 205
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    invoke-static {v1, p2, p3, p5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object v1

    return-object v1

    .line 197
    :cond_6
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p3, :cond_7

    move-object v7, p3

    goto :goto_1

    .line 202
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p4

    move-object v4, p5

    .end local p4    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local p5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .local v4, "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .local v6, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    .line 197
    return-object v2

    .line 188
    .end local v4    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .end local v6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p4    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :cond_8
    move-object v6, p4

    move-object v4, p5

    .line 190
    .end local p4    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local p5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .restart local v4    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .restart local v6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_2
    new-instance p4, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    return-object p4

    .line 183
    .end local v4    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .end local v6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p4    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :cond_9
    move-object v6, p4

    move-object v4, p5

    .end local p4    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local p5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .restart local v4    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .restart local v6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    goto :goto_3

    .line 182
    .end local v4    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .end local v6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p4    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    :cond_a
    move-object v6, p4

    move-object v4, p5

    .line 185
    .end local p4    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local p5    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .restart local v4    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .restart local v6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_3
    new-instance p4, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p5, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p4, p5, v4}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p4
.end method

.method private static createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .locals 5
    .param p0, "userProvidedPayloadReaderFactoryFlags"    # I
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;"
        }
    .end annotation

    .line 216
    .local p2, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    or-int/lit8 v0, p0, 0x10

    .line 219
    .local v0, "payloadReaderFactoryFlags":I
    if-eqz p2, :cond_0

    .line 221
    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 225
    :cond_0
    nop

    .line 227
    const/4 v1, 0x0

    const-string v2, "application/cea-608"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v1}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 226
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 233
    :goto_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 234
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    const-string v2, "audio/mp4a-latm"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    or-int/lit8 v0, v0, 0x2

    .line 241
    :cond_1
    const-string/jumbo v2, "video/avc"

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    or-int/lit8 v0, v0, 0x4

    .line 246
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v3, v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 v4, 0x2

    invoke-direct {v2, v4, p3, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    return-object v2
.end method

.method private static sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 2
    .param p0, "extractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, "result":Z
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 268
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 269
    goto :goto_1

    .line 268
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 269
    throw v1

    .line 265
    :catch_0
    move-exception v1

    goto :goto_0

    .line 270
    :goto_1
    return v0
.end method


# virtual methods
.method public createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Landroid/util/Pair;
    .locals 8
    .param p1, "previousExtractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p6, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p8, "extractorInput"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local p7, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v5, p6

    move-object/from16 v6, p8

    if-eqz p1, :cond_6

    .line 87
    instance-of v0, p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v1, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {v0, v1, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 93
    :cond_1
    instance-of v0, p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-eqz v0, :cond_2

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 95
    :cond_2
    instance-of v0, p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-eqz v0, :cond_3

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 97
    :cond_3
    instance-of v0, p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_4

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 100
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected previousExtractor type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 106
    :cond_6
    nop

    .line 107
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileExtension(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v7

    .line 109
    .local v7, "extractorByFileExtension":Lcom/google/android/exoplayer2/extractor/Extractor;
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 110
    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 117
    :cond_7
    instance-of v0, v7, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    if-nez v0, :cond_8

    .line 118
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v1, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {v0, v1, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 119
    .local v0, "webvttExtractor":Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0    # "webvttExtractor":Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;
    :cond_8
    instance-of v0, v7, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    if-nez v0, :cond_9

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    .line 126
    .local v0, "adtsExtractor":Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 127
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 131
    .end local v0    # "adtsExtractor":Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;
    :cond_9
    instance-of v0, v7, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    if-nez v0, :cond_a

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    .line 133
    .local v0, "ac3Extractor":Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 134
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 138
    .end local v0    # "ac3Extractor":Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;
    :cond_a
    instance-of v0, v7, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-nez v0, :cond_b

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 141
    .local v0, "mp3Extractor":Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 142
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 146
    .end local v0    # "mp3Extractor":Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;
    :cond_b
    instance-of v0, v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-nez v0, :cond_d

    .line 147
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p4, :cond_c

    move-object v1, p4

    goto :goto_1

    .line 153
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1
    move-object v5, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    move-object v5, v2

    .line 154
    .local v0, "fragmentedMp4Extractor":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 155
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "fragmentedMp4Extractor":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    :cond_d
    instance-of v0, v7, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    if-nez v0, :cond_e

    .line 160
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 161
    invoke-static {v1, p3, p4, p6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object v1

    .line 163
    .local v1, "tsExtractor":Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 164
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 169
    .end local v1    # "tsExtractor":Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    :cond_e
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->buildResult(Lcom/google/android/exoplayer2/extractor/Extractor;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

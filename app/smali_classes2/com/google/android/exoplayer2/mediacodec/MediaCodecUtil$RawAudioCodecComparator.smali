.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$RawAudioCodecComparator;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawAudioCodecComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;

    .line 696
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$RawAudioCodecComparator;-><init>()V

    return-void
.end method

.method private static scoreMediaCodecInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .locals 3
    .param p0, "mediaCodecInfo"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 704
    .local v0, "name":Ljava/lang/String;
    const-string v1, "OMX.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c2.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    const-string v1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    const/4 v1, 0x1

    return v1

    .line 713
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 706
    :cond_2
    :goto_0
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .locals 2
    .param p1, "a"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .param p2, "b"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 699
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$RawAudioCodecComparator;->scoreMediaCodecInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$RawAudioCodecComparator;->scoreMediaCodecInfo(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 696
    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    check-cast p2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$RawAudioCodecComparator;->compare(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method

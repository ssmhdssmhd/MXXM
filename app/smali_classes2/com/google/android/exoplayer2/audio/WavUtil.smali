.class public final Lcom/google/android/exoplayer2/audio/WavUtil;
.super Ljava/lang/Object;
.source "WavUtil.java"


# static fields
.field public static final DATA_FOURCC:I

.field public static final FMT_FOURCC:I

.field public static final RIFF_FOURCC:I

.field private static final TYPE_A_LAW:I = 0x6

.field private static final TYPE_FLOAT:I = 0x3

.field private static final TYPE_MU_LAW:I = 0x7

.field private static final TYPE_PCM:I = 0x1

.field private static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field public static final WAVE_FOURCC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "RIFF"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->RIFF_FOURCC:I

    .line 28
    const-string v0, "WAVE"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->WAVE_FOURCC:I

    .line 30
    const-string v0, "fmt "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->FMT_FOURCC:I

    .line 32
    const-string v0, "data"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->DATA_FOURCC:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static getEncodingForType(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "bitsPerSample"    # I

    .line 68
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 79
    return v0

    .line 77
    :sswitch_0
    const/high16 v0, 0x10000000

    return v0

    .line 75
    :sswitch_1
    const/high16 v0, 0x20000000

    return v0

    .line 73
    :sswitch_2
    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0

    .line 71
    :sswitch_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0xfffe -> :sswitch_3
    .end sparse-switch
.end method

.method public static getTypeForEncoding(I)I
    .locals 1
    .param p0, "encoding"    # I

    .line 47
    sparse-switch p0, :sswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :sswitch_0
    const/4 v0, 0x6

    return v0

    .line 56
    :sswitch_1
    const/4 v0, 0x7

    return v0

    .line 58
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 52
    :sswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

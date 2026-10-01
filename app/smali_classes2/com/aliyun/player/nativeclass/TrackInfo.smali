.class public Lcom/aliyun/player/nativeclass/TrackInfo;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/nativeclass/TrackInfo$Type;,
        Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;
    }
.end annotation


# static fields
.field public static final AUTO_SELECT_INDEX:I = -0x1


# instance fields
.field public audioChannels:I

.field public audioLang:Ljava/lang/String;

.field public audioSampleFormat:I

.field public audioSampleRate:I

.field public description:Ljava/lang/String;

.field public index:I

.field public mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

.field public subtitleLang:Ljava/lang/String;

.field public videoBitrate:I

.field public videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

.field public videoHeight:I

.field public videoWidth:I

.field public vodDefinition:Ljava/lang/String;

.field public vodFileSize:J

.field public vodFormat:Ljava/lang/String;

.field public vodPlayUrl:Ljava/lang/String;

.field public vodWaterMarkPlayUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 23
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 110
    return-void
.end method

.method private nGetType()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method private setType(I)V
    .locals 1
    .param p1, "mType"    # I

    .line 43
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 44
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VIDEO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 46
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_AUDIO:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 48
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_SUBTITLE:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 50
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$Type;->TYPE_VOD:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    .line 52
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getAudioChannels()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioChannels:I

    return v0
.end method

.method public getAudioLang()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioLang:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioSampleFormat()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioSampleFormat:I

    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->audioSampleRate:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->index:I

    return v0
.end method

.method public getSubtitleLang()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->subtitleLang:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/aliyun/player/nativeclass/TrackInfo$Type;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoBitrate:I

    return v0
.end method

.method public getVideoHDRType()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoWidth:I

    return v0
.end method

.method public getVodDefinition()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getVodFileSize()J
    .locals 2

    .line 321
    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodFileSize:J

    return-wide v0
.end method

.method public getVodFormat()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getVodPlayUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVodWaterMarkPlayUrl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->vodWaterMarkPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setVideoHDRType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 59
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 60
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_HDR10:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 62
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_HDR10:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/TrackInfo;->videoHDRType:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

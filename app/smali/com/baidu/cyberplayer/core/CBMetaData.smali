.class Lcom/baidu/cyberplayer/core/CBMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mABitRateKb:I

.field private mACodecName:Ljava/lang/String;

.field private mAudioCodecID:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCchannels:I

.field private mDurationUs:I

.field private mExtension:Ljava/lang/String;

.field private mFileSizeKb:I

.field private mHeight:I

.field private mLongName:Ljava/lang/String;

.field private mSampleRate:I

.field private mSupportedBitrateKb:[I

.field private mSupportedResolution:[Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTotBitRateKb:I

.field private mVBitRateKb:I

.field private mVCodecName:Ljava/lang/String;

.field private mVideoCodecID:I

.field private mWidth:I

.field private mfFrameRate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(IIIIIIIIFIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioID"    # I
    .param p4, "videoID"    # I
    .param p5, "totBitRateKb"    # I
    .param p6, "fileSizeKb"    # I
    .param p7, "durationUs"    # I
    .param p8, "vBitRateKb"    # I
    .param p9, "fFrameRate"    # F
    .param p10, "sampleRate"    # I
    .param p11, "channels"    # I
    .param p12, "aBitRateKb"    # I
    .param p13, "extension"    # Ljava/lang/String;
    .param p14, "aCodecName"    # Ljava/lang/String;
    .param p15, "vCodecName"    # Ljava/lang/String;

    .line 21
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    move/from16 v1, p1

    iput v1, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mWidth:I

    .line 24
    move/from16 v2, p2

    iput v2, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mHeight:I

    .line 25
    move/from16 v3, p3

    iput v3, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mAudioCodecID:I

    .line 26
    move/from16 v4, p4

    iput v4, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVideoCodecID:I

    .line 27
    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mExtension:Ljava/lang/String;

    .line 28
    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVCodecName:Ljava/lang/String;

    .line 29
    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mACodecName:Ljava/lang/String;

    .line 31
    move/from16 v8, p5

    iput v8, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mTotBitRateKb:I

    .line 32
    move/from16 v9, p6

    iput v9, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mFileSizeKb:I

    .line 33
    move/from16 v10, p7

    iput v10, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mDurationUs:I

    .line 35
    move/from16 v11, p8

    iput v11, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVBitRateKb:I

    .line 36
    move/from16 v12, p9

    iput v12, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mfFrameRate:F

    .line 37
    move/from16 v13, p10

    iput v13, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSampleRate:I

    .line 38
    move/from16 v14, p11

    iput v14, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mCchannels:I

    .line 39
    move/from16 v15, p12

    iput v15, v0, Lcom/baidu/cyberplayer/core/CBMetaData;->mABitRateKb:I

    .line 40
    return-void
.end method

.method public constructor <init>(IIIIIIIIFIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioID"    # I
    .param p4, "videoID"    # I
    .param p5, "totBitRateKb"    # I
    .param p6, "fileSizeKb"    # I
    .param p7, "durationUs"    # I
    .param p8, "vBitRateKb"    # I
    .param p9, "fFrameRate"    # F
    .param p10, "sampleRate"    # I
    .param p11, "channels"    # I
    .param p12, "aBitRateKb"    # I
    .param p13, "extension"    # Ljava/lang/String;
    .param p14, "aCodecName"    # Ljava/lang/String;
    .param p15, "vCodecName"    # Ljava/lang/String;
    .param p16, "bitrates"    # [I
    .param p17, "resolutions"    # [Ljava/lang/String;

    .line 48
    invoke-direct/range {p0 .. p15}, Lcom/baidu/cyberplayer/core/CBMetaData;-><init>(IIIIIIIIFIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedBitrateKb:[I

    .line 51
    move-object/from16 v1, p17

    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedResolution:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioID"    # I
    .param p4, "videoID"    # I
    .param p5, "extension"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mWidth:I

    .line 12
    iput p2, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mHeight:I

    .line 13
    iput p3, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mAudioCodecID:I

    .line 14
    iput p4, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVideoCodecID:I

    .line 15
    iput-object p5, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mExtension:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getABitRateKb()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mABitRateKb:I

    return v0
.end method

.method public getAcodecName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mACodecName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioCodecID()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mAudioCodecID:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mCchannels:I

    return v0
.end method

.method public getDurationUs()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mDurationUs:I

    return v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSizeKb()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mFileSizeKb:I

    return v0
.end method

.method public getFrameRate()F
    .locals 1

    .line 158
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mfFrameRate:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mHeight:I

    return v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSampleRate:I

    return v0
.end method

.method public getSupportedBitrateKb()[I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedBitrateKb:[I

    return-object v0
.end method

.method public getSupportedResolution()[Ljava/lang/String;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedResolution:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedResolution:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedResolution:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedResolution:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotBitRateKb()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mTotBitRateKb:I

    return v0
.end method

.method public getVBitRateKb()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVBitRateKb:I

    return v0
.end method

.method public getVcodecName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVCodecName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCodecID()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVideoCodecID:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mWidth:I

    return v0
.end method

.method public setAudioCodecID(I)V
    .locals 0
    .param p1, "audioID"    # I

    .line 102
    iput p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mAudioCodecID:I

    .line 103
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 174
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mExtension:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 94
    iput p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mHeight:I

    .line 95
    return-void
.end method

.method public setSupportedBitrateKb([I)V
    .locals 0
    .param p1, "bitrates"    # [I

    .line 182
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedBitrateKb:[I

    .line 183
    return-void
.end method

.method public setSupportedResolution([Ljava/lang/String;)V
    .locals 2
    .param p1, "resolutions"    # [Ljava/lang/String;

    .line 190
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mSupportedResolution:[Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setVideoCodecID(I)V
    .locals 0
    .param p1, "videoID"    # I

    .line 110
    iput p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mVideoCodecID:I

    .line 111
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 86
    iput p1, p0, Lcom/baidu/cyberplayer/core/CBMetaData;->mWidth:I

    .line 87
    return-void
.end method

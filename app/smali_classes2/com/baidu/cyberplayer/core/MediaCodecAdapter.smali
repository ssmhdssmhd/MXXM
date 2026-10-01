.class public Lcom/baidu/cyberplayer/core/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private static mCodec:Landroid/media/MediaCodec;

.field private static mCodecInputBuffers:[Ljava/nio/ByteBuffer;

.field private static mCodecName:Ljava/lang/String;

.field private static mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private static mCurrentMediaFormat:Landroid/media/MediaFormat;

.field private static mMimeType:Ljava/lang/String;

.field private static mPpsBuffer:Ljava/nio/ByteBuffer;

.field private static mSpsBuffer:Ljava/nio/ByteBuffer;

.field private static mSpsPpsBuffer:Ljava/nio/ByteBuffer;

.field private static mSurface:Landroid/view/Surface;

.field private static mVideoHeight:I

.field private static mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    .line 26
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    sput-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 29
    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsBuffer:Ljava/nio/ByteBuffer;

    .line 30
    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mPpsBuffer:Ljava/nio/ByteBuffer;

    .line 31
    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsPpsBuffer:Ljava/nio/ByteBuffer;

    .line 32
    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .line 47
    nop

    .line 49
    nop

    .line 50
    array-length v0, p0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 51
    array-length v1, p0

    .line 52
    :cond_0
    const-string v0, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 54
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_2
    return-object v0
.end method

.method public static configAndStart()V
    .locals 5

    .line 84
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mMimeType:Ljava/lang/String;

    sget v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mVideoWidth:I

    sget v2, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mVideoHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mPpsBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "csd-0"

    sget-object v2, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsPpsBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 92
    sget v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mVideoWidth:I

    sget v2, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mVideoHeight:I

    mul-int v1, v1, v2

    const-string v2, "max-input-size"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 97
    :cond_1
    sget-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    sget-object v2, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 98
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 99
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 100
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 101
    return-void
.end method

.method public static dequeueInputBuffer(J)I
    .locals 1
    .param p0, "timeoutUs"    # J

    .line 120
    nop

    .line 122
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, -0x1

    return v0

    .line 127
    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const/16 v0, -0x7d0

    .line 132
    :goto_0
    return v0
.end method

.method public static dequeueOutputBuffer(J)I
    .locals 4
    .param p0, "timeoutUs"    # J

    .line 162
    nop

    .line 164
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, -0x1

    return v0

    .line 169
    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    sget-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, p0, p1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    if-ltz v0, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, -0x3

    const-string v2, "MediaCodecAdapter"

    if-ne v0, v1, :cond_2

    .line 173
    :try_start_1
    sget-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 174
    const-string v1, "output buffers have changed."

    invoke-static {v2, v1}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 176
    sget-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    sput-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "output format has changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_3
    :goto_0
    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const/16 v0, -0x7d0

    .line 184
    :goto_1
    return v0
.end method

.method public static getCurrentOutputBufferFlag()I
    .locals 1

    .line 210
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    return v0
.end method

.method public static getCurrentOutputBufferSize()I
    .locals 1

    .line 206
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    return v0
.end method

.method public static getInputByteBuffer(I)Ljava/lang/Object;
    .locals 1
    .param p0, "inputBufferIndex"    # I

    .line 141
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getOutputByteBuffer(I)Ljava/lang/Object;
    .locals 1
    .param p0, "outputBufferIndex"    # I

    .line 220
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getOutputFormatColorFormat()I
    .locals 2

    .line 200
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOutputFormatHeight()I
    .locals 2

    .line 194
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOutputFormatWidth()I
    .locals 2

    .line 188
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCurrentMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getSupportedCodecName(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 18
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "profile"    # I
    .param p2, "level"    # I
    .param p3, "isEncoder"    # Z

    .line 256
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedCOdecNameFor : mime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", profile="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", level="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "MediaCodecAdapter"

    invoke-static {v6, v0}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v7

    .line 258
    nop

    .line 259
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_6

    .line 260
    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v10

    .line 261
    if-eqz p3, :cond_0

    .line 262
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_1

    move/from16 v16, v7

    goto/16 :goto_5

    .line 264
    :cond_0
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v16, v7

    goto/16 :goto_5

    .line 267
    :cond_1
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    .line 268
    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_5

    aget-object v0, v11, v13

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 270
    move/from16 v16, v7

    goto :goto_4

    .line 273
    :cond_2
    :try_start_0
    invoke-virtual {v10, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v14

    .line 274
    iget-object v14, v14, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 276
    array-length v15, v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v15, :cond_4

    move/from16 v16, v7

    :try_start_1
    aget-object v7, v14, v8

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    iget v1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-lt v1, v2, :cond_3

    iget v1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v1, v3, :cond_3

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find Supported Codec, codec name="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", mimetype="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 276
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v16

    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    goto :goto_3

    .line 285
    :cond_4
    move/from16 v16, v7

    goto :goto_4

    .line 283
    :catch_1
    move-exception v0

    move/from16 v16, v7

    .line 284
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 268
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v16

    goto :goto_1

    :cond_5
    move/from16 v16, v7

    .line 259
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move/from16 v7, v16

    goto/16 :goto_0

    .line 291
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initMediaCodec(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "codecname"    # Ljava/lang/String;
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create MediaCodecAdapter, mimetype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codecname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecAdapter"

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sput-object p0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mMimeType:Ljava/lang/String;

    .line 77
    sput-object p1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodecName:Ljava/lang/String;

    .line 78
    sput p2, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mVideoWidth:I

    .line 79
    sput p3, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mVideoHeight:I

    .line 80
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    .line 81
    return-void
.end method

.method public static isStreamEOF()Z
    .locals 2

    .line 233
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 237
    return v1

    .line 239
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static queueInputBuffer(IIIJI)V
    .locals 8
    .param p0, "index"    # I
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "presentationTimeUs"    # J
    .param p5, "flags"    # I

    .line 149
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 154
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    .end local p0    # "index":I
    .end local p1    # "offset":I
    .end local p2    # "size":I
    .end local p3    # "presentationTimeUs":J
    .end local p5    # "flags":I
    .local v2, "index":I
    .local v3, "offset":I
    .local v4, "size":I
    .local v5, "presentationTimeUs":J
    .local v7, "flags":I
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .end local v2    # "index":I
    .end local v3    # "offset":I
    .end local v4    # "size":I
    .end local v5    # "presentationTimeUs":J
    .end local v7    # "flags":I
    .restart local p0    # "index":I
    .restart local p1    # "offset":I
    .restart local p2    # "size":I
    .restart local p3    # "presentationTimeUs":J
    .restart local p5    # "flags":I
    :catch_1
    move-exception v0

    move v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move-object p0, v0

    .line 156
    .end local p0    # "index":I
    .end local p1    # "offset":I
    .end local p2    # "size":I
    .end local p3    # "presentationTimeUs":J
    .end local p5    # "flags":I
    .restart local v2    # "index":I
    .restart local v3    # "offset":I
    .restart local v4    # "size":I
    .restart local v5    # "presentationTimeUs":J
    .restart local v7    # "flags":I
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to queue iput buffer "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    return-void
.end method

.method public static releaseOutputBuffer(IZ)V
    .locals 1
    .param p0, "outputBufferIndex"    # I
    .param p1, "bRenderer"    # Z

    .line 226
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 230
    return-void
.end method

.method public static setConfigSurface(Landroid/view/Surface;)V
    .locals 0
    .param p0, "surface"    # Landroid/view/Surface;

    .line 42
    sput-object p0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSurface:Landroid/view/Surface;

    .line 43
    return-void
.end method

.method public static setSpsAndPPs([B[B)V
    .locals 2
    .param p0, "sps"    # [B
    .param p1, "pps"    # [B

    .line 103
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 104
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsBuffer:Ljava/nio/ByteBuffer;

    .line 105
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mPpsBuffer:Ljava/nio/ByteBuffer;

    .line 106
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsPpsBuffer:Ljava/nio/ByteBuffer;

    .line 107
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsPpsBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsPpsBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsPpsBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mSpsBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mPpsBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mPpsBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    :cond_0
    return-void
.end method

.method public static stopAndReleaseCodec()V
    .locals 2

    .line 244
    const-string v0, "MediaCodecAdapter"

    const-string/jumbo v1, "stopAndReleaseCodec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 247
    sget-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 248
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/core/MediaCodecAdapter;->mCodec:Landroid/media/MediaCodec;

    .line 250
    :cond_0
    return-void
.end method

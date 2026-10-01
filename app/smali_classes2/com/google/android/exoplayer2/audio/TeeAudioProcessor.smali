.class public final Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;
.super Ljava/lang/Object;
.source "TeeAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;,
        Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;
    }
.end annotation


# instance fields
.field private final audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private encoding:I

.field private inputEnded:Z

.field private isActive:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private sampleRateHz:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;)V
    .locals 1
    .param p1, "audioBufferSink"    # Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    .line 75
    sget-object v0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 76
    sget-object v0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->channelCount:I

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->sampleRateHz:I

    .line 79
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 2
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->sampleRateHz:I

    .line 85
    iput p2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->channelCount:I

    .line 86
    iput p3, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->encoding:I

    .line 87
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->isActive:Z

    .line 88
    .local v0, "wasActive":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->isActive:Z

    .line 89
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public flush()V
    .locals 4

    .line 153
    sget-object v0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputEnded:Z

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->sampleRateHz:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->channelCount:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->encoding:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;->flush(III)V

    .line 157
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 141
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 142
    return-object v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->encoding:I

    return v0
.end method

.method public getOutputSampleRateHz()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->isActive:Z

    return v0
.end method

.method public isEnded()Z
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueEndOfStream()V
    .locals 1

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputEnded:Z

    .line 136
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 115
    .local v0, "remaining":I
    if-nez v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;->handleBuffer(Ljava/nio/ByteBuffer;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 122
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 129
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 131
    return-void
.end method

.method public reset()V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->flush()V

    .line 162
    sget-object v0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->sampleRateHz:I

    .line 164
    iput v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->channelCount:I

    .line 165
    iput v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->encoding:I

    .line 166
    return-void
.end method

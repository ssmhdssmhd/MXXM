.class public Lcom/cicada/player/utils/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/FrameInfo$PixelFormat;,
        Lcom/cicada/player/utils/FrameInfo$SampleFormat;,
        Lcom/cicada/player/utils/FrameInfo$Rational;
    }
.end annotation


# static fields
.field public static final FrameType_audio:I = 0x2

.field public static final FrameType_unknow:I = 0x0

.field public static final FrameType_video:I = 0x1


# instance fields
.field public audio_channel_layout:J

.field public audio_channels:I

.field public audio_data:[[B

.field public audio_data_addr:[J

.field public audio_data_addr_lineSize:I

.field public audio_format:I

.field public audio_nb_samples:I

.field public audio_sample_rate:I

.field public duration:J

.field public frameType:I

.field public key:Z

.field public pts:J

.field public timePosition:J

.field public video_colorRange:I

.field public video_colorSpace:I

.field public video_crop_bottom:I

.field public video_crop_left:I

.field public video_crop_right:I

.field public video_crop_top:I

.field public video_dar:D

.field public video_data:[[B

.field public video_data_addr:[J

.field public video_data_addr_lineSize:[I

.field public video_format:I

.field public video_glContext:J

.field public video_height:I

.field public video_rotate:I

.field public video_texture2D_id:[I

.field public video_textureOES_id:I

.field public video_textureOES_matrix:[F

.field public video_width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[B

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    .line 130
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr:[J

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr_lineSize:I

    .line 144
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_glContext:J

    .line 145
    const/4 v1, -0x1

    iput v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_id:I

    .line 146
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    .line 147
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    .line 148
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    .line 149
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr_lineSize:[I

    .line 150
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    return-void
.end method

.method private setAudioData([[B)V
    .locals 0
    .param p1, "data"    # [[B
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    .line 155
    return-void
.end method

.method private setAudioDataAddr([J)V
    .locals 0
    .param p1, "data"    # [J
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr:[J

    .line 175
    return-void
.end method

.method private setVideoData([[B)V
    .locals 0
    .param p1, "data"    # [[B
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    .line 160
    return-void
.end method

.method private setVideoDataAddr([J)V
    .locals 0
    .param p1, "data"    # [J
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    .line 165
    return-void
.end method

.method private setVideoDataAddrLineSize([I)V
    .locals 0
    .param p1, "lineSize"    # [I
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr_lineSize:[I

    .line 170
    return-void
.end method

.method private setVideoTextureOESMatrix([F)V
    .locals 0
    .param p1, "matrix"    # [F
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    .line 180
    return-void
.end method

.method private setVideo_texture2D_id([I)V
    .locals 0
    .param p1, "ids"    # [I
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    .line 185
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameInfo{frameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->frameType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cicada/player/utils/FrameInfo;->key:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->timePosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audio_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audio_nb_samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_nb_samples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audio_channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audio_sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_sample_rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audio_channel_layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_channel_layout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audio_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    array-length v1, v1

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_rotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_rotate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_crop_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_crop_bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_crop_left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_crop_right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_colorRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_colorRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_colorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_colorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_glContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/cicada/player/utils/FrameInfo;->video_glContext:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_textureOES_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_textureOES_matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    .line 209
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    array-length v1, v1

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_data_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    .line 211
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_texture2D_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    .line 212
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_dar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_dar:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

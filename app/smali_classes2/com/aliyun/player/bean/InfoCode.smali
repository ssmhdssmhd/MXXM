.class public final enum Lcom/aliyun/player/bean/InfoCode;
.super Ljava/lang/Enum;
.source "InfoCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/bean/InfoCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CacheError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum LoopingStart:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum LowMemory:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum Unknown:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum UtcTime:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 13
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v1, -0x1

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    .line 21
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v1, "LoopingStart"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->LoopingStart:Lcom/aliyun/player/bean/InfoCode;

    .line 29
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v1, "BufferedPosition"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    .line 36
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v1, "CurrentPosition"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    .line 43
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v1, "AutoPlayStart"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

    .line 51
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v1, "CurrentDownloadSpeed"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    .line 59
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const-string v1, "UtcTime"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->UtcTime:Lcom/aliyun/player/bean/InfoCode;

    .line 67
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x64

    const-string v9, "SwitchToSoftwareVideoDecoder"

    const/4 v10, 0x7

    invoke-direct {v0, v9, v10, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    .line 74
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x65

    const-string v9, "AudioCodecNotSupport"

    const/16 v11, 0x8

    invoke-direct {v0, v9, v11, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    .line 81
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x66

    const-string v9, "AudioDecoderDeviceError"

    const/16 v12, 0x9

    invoke-direct {v0, v9, v12, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    .line 88
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x67

    const-string v9, "VideoCodecNotSupport"

    const/16 v13, 0xa

    invoke-direct {v0, v9, v13, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    .line 95
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x68

    const-string v9, "VideoDecoderDeviceError"

    const/16 v14, 0xb

    invoke-direct {v0, v9, v14, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    .line 102
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x69

    const-string v9, "VideoRenderInitError"

    const/16 v15, 0xc

    invoke-direct {v0, v9, v15, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;

    .line 110
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x6a

    const-string v9, "DemuxerTraceID"

    const/16 v16, 0x1

    const/16 v2, 0xd

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    .line 118
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x6c

    const-string v9, "NetworkRetry"

    const/16 v17, 0xd

    const/16 v2, 0xe

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

    .line 126
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x6d

    const-string v9, "CacheSuccess"

    const/16 v18, 0xe

    const/16 v2, 0xf

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

    .line 134
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x6e

    const-string v9, "CacheError"

    const/16 v19, 0xf

    const/16 v2, 0x10

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->CacheError:Lcom/aliyun/player/bean/InfoCode;

    .line 142
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x6f

    const-string v9, "LowMemory"

    const/16 v20, 0x10

    const/16 v2, 0x11

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->LowMemory:Lcom/aliyun/player/bean/InfoCode;

    .line 150
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x71

    const-string v9, "NetworkRetrySuccess"

    const/16 v21, 0x11

    const/16 v2, 0x12

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

    .line 158
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x72

    const-string v9, "SubtitleSelectError"

    const/16 v22, 0x12

    const/16 v2, 0x13

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

    .line 167
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x74

    const-string v9, "DirectComponentMSG"

    const/16 v23, 0x13

    const/16 v2, 0x14

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

    .line 175
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const v1, 0x30010001

    const-string v9, "RTSServerMaybeDisconnect"

    const/16 v24, 0x14

    const/16 v2, 0x15

    invoke-direct {v0, v9, v2, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

    .line 182
    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/16 v1, 0x16

    const v9, 0x30010002

    const/16 v25, 0x15

    const-string v2, "RTSServerRecover"

    invoke-direct {v0, v2, v1, v9}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

    .line 6
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/aliyun/player/bean/InfoCode;

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->LoopingStart:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v16

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->UtcTime:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v13

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v14

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v15

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v17

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v18

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v19

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CacheError:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v20

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->LowMemory:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v21

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v22

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v23

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v24

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

    aput-object v1, v0, v25

    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->$VALUES:[Lcom/aliyun/player/bean/InfoCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 190
    iput p3, p0, Lcom/aliyun/player/bean/InfoCode;->value:I

    .line 191
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/bean/InfoCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/aliyun/player/bean/InfoCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/bean/InfoCode;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/bean/InfoCode;
    .locals 1

    .line 6
    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->$VALUES:[Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {v0}, [Lcom/aliyun/player/bean/InfoCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/bean/InfoCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/aliyun/player/bean/InfoCode;->value:I

    return v0
.end method

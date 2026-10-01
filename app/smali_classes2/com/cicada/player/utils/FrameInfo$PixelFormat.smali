.class public final enum Lcom/cicada/player/utils/FrameInfo$PixelFormat;
.super Ljava/lang/Enum;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/FrameInfo$PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_APPLE_PIXEL_BUFFER:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_CICADA_AF:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_CICADA_MEDIA_CODEC:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_D3D11:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_DXVA2_VLD:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_GRAY8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_MONOBLACK:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_MONOWHITE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_NV12:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_NV21:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_PAL8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_UYVY422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_UYYVYY411:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV410P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV411P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV420P10BE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV420P10LE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUVJ420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUVJ422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUVJ444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUYV422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 47
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/4 v1, -0x1

    const-string v2, "AF_PIX_FMT_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 48
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUV420P"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 50
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUYV422"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUYV422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 51
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_RGB24"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 52
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_BGR24"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 53
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUV422P"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 55
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUV444P"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 57
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUV410P"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV410P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 59
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUV411P"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v9}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV411P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 61
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_GRAY8"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v10}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_GRAY8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 62
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_MONOWHITE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v11}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_MONOWHITE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 65
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_MONOBLACK"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v12}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_MONOBLACK:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 68
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_PAL8"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v13}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_PAL8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 69
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUVJ420P"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v14}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 72
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUVJ422P"

    const/16 v16, 0x1

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v15}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 75
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_YUVJ444P"

    const/16 v17, 0x0

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 78
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_UYVY422"

    const/16 v18, 0xe

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_UYVY422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 79
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_UYYVYY411"

    const/16 v19, 0xf

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_UYYVYY411:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 80
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_BGR8"

    const/16 v20, 0x10

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 81
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_BGR4"

    const/16 v21, 0x11

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 85
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_BGR4_BYTE"

    const/16 v22, 0x12

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 86
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_RGB8"

    const/16 v23, 0x13

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 87
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v1, "AF_PIX_FMT_RGB4"

    const/16 v24, 0x14

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 91
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x17

    const/16 v25, 0x15

    const-string v3, "AF_PIX_FMT_RGB4_BYTE"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 92
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x18

    const/16 v2, 0x17

    const-string v3, "AF_PIX_FMT_NV12"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NV12:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 96
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x19

    const/16 v2, 0x18

    const-string v3, "AF_PIX_FMT_NV21"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NV21:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 98
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x1a

    const/16 v2, 0x3f

    const-string v3, "AF_PIX_FMT_YUV420P10BE"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P10BE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 100
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x1b

    const/16 v2, 0x40

    const-string v3, "AF_PIX_FMT_YUV420P10LE"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P10LE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 103
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x1c

    const/16 v2, 0x384

    const-string v3, "AF_PIX_FMT_D3D11"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_D3D11:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 104
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x1d

    const/16 v2, 0x385

    const-string v3, "AF_PIX_FMT_DXVA2_VLD"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_DXVA2_VLD:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 106
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x1e

    const/16 v2, 0x3e8

    const-string v3, "AF_PIX_FMT_APPLE_PIXEL_BUFFER"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_APPLE_PIXEL_BUFFER:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 107
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x1f

    const/16 v2, 0x3e9

    const-string v3, "AF_PIX_FMT_CICADA_AF"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_CICADA_AF:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 108
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v1, 0x20

    const/16 v2, 0x3ea

    const-string v3, "AF_PIX_FMT_CICADA_MEDIA_CODEC"

    invoke-direct {v0, v3, v1, v2}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_CICADA_MEDIA_CODEC:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    .line 46
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v17

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v16

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUYV422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV410P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v9

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV411P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v10

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_GRAY8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v11

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_MONOWHITE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v12

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_MONOBLACK:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v13

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_PAL8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v14

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v15

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v18

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v19

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_UYVY422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v20

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_UYYVYY411:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v21

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v22

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v23

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v24

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    aput-object v1, v0, v25

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NV12:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NV21:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P10BE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P10LE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_D3D11:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_DXVA2_VLD:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_APPLE_PIXEL_BUFFER:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_CICADA_AF:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_CICADA_MEDIA_CODEC:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$PixelFormat;

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

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/FrameInfo$PixelFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    return-object v0
.end method

.method public static values()[Lcom/cicada/player/utils/FrameInfo$PixelFormat;
    .locals 1

    .line 46
    sget-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    invoke-virtual {v0}, [Lcom/cicada/player/utils/FrameInfo$PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->mValue:I

    return v0
.end method

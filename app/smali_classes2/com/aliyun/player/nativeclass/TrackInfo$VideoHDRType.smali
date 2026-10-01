.class public final enum Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;
.super Ljava/lang/Enum;
.source "TrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/nativeclass/TrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoHDRType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

.field public static final enum VideoHDRType_HDR10:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

.field public static final enum VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    const-string v1, "VideoHDRType_SDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    new-instance v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    const-string v1, "VideoHDRType_HDR10"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_HDR10:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    sget-object v1, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_SDR:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->VideoHDRType_HDR10:Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->$VALUES:[Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;
    .locals 1

    .line 56
    sget-object v0, Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->$VALUES:[Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    invoke-virtual {v0}, [Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/nativeclass/TrackInfo$VideoHDRType;

    return-object v0
.end method

.class public final enum Lcom/aliyun/player/source/MediaFormat;
.super Ljava/lang/Enum;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/MediaFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/MediaFormat;

.field public static final enum flv:Lcom/aliyun/player/source/MediaFormat;

.field public static final enum m3u8:Lcom/aliyun/player/source/MediaFormat;

.field public static final enum mp3:Lcom/aliyun/player/source/MediaFormat;

.field public static final enum mp4:Lcom/aliyun/player/source/MediaFormat;


# instance fields
.field private mFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/aliyun/player/source/MediaFormat;

    const-string v1, "mp4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/MediaFormat;->mp4:Lcom/aliyun/player/source/MediaFormat;

    .line 17
    new-instance v0, Lcom/aliyun/player/source/MediaFormat;

    const-string v1, "m3u8"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/MediaFormat;->m3u8:Lcom/aliyun/player/source/MediaFormat;

    .line 24
    new-instance v0, Lcom/aliyun/player/source/MediaFormat;

    const-string v1, "flv"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/MediaFormat;->flv:Lcom/aliyun/player/source/MediaFormat;

    .line 31
    new-instance v0, Lcom/aliyun/player/source/MediaFormat;

    const-string v1, "mp3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/aliyun/player/source/MediaFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/MediaFormat;->mp3:Lcom/aliyun/player/source/MediaFormat;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aliyun/player/source/MediaFormat;

    sget-object v1, Lcom/aliyun/player/source/MediaFormat;->mp4:Lcom/aliyun/player/source/MediaFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/source/MediaFormat;->m3u8:Lcom/aliyun/player/source/MediaFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/source/MediaFormat;->flv:Lcom/aliyun/player/source/MediaFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/source/MediaFormat;->mp3:Lcom/aliyun/player/source/MediaFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/aliyun/player/source/MediaFormat;->$VALUES:[Lcom/aliyun/player/source/MediaFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/aliyun/player/source/MediaFormat;->mFormat:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/MediaFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/aliyun/player/source/MediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/source/MediaFormat;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/source/MediaFormat;
    .locals 1

    .line 3
    sget-object v0, Lcom/aliyun/player/source/MediaFormat;->$VALUES:[Lcom/aliyun/player/source/MediaFormat;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/player/source/MediaFormat;->mFormat:Ljava/lang/String;

    return-object v0
.end method

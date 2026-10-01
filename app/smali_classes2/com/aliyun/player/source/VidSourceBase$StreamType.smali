.class public final enum Lcom/aliyun/player/source/VidSourceBase$StreamType;
.super Ljava/lang/Enum;
.source "VidSourceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/source/VidSourceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/VidSourceBase$StreamType;

.field public static final enum audio:Lcom/aliyun/player/source/VidSourceBase$StreamType;

.field public static final enum video:Lcom/aliyun/player/source/VidSourceBase$StreamType;


# instance fields
.field private mStreamType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    new-instance v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;

    const-string/jumbo v1, "video"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/aliyun/player/source/VidSourceBase$StreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;->video:Lcom/aliyun/player/source/VidSourceBase$StreamType;

    .line 80
    new-instance v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;

    const-string v1, "audio"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/aliyun/player/source/VidSourceBase$StreamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;->audio:Lcom/aliyun/player/source/VidSourceBase$StreamType;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aliyun/player/source/VidSourceBase$StreamType;

    sget-object v1, Lcom/aliyun/player/source/VidSourceBase$StreamType;->video:Lcom/aliyun/player/source/VidSourceBase$StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/source/VidSourceBase$StreamType;->audio:Lcom/aliyun/player/source/VidSourceBase$StreamType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;->$VALUES:[Lcom/aliyun/player/source/VidSourceBase$StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "streamType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/aliyun/player/source/VidSourceBase$StreamType;->mStreamType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/VidSourceBase$StreamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 72
    const-class v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/source/VidSourceBase$StreamType;
    .locals 1

    .line 72
    sget-object v0, Lcom/aliyun/player/source/VidSourceBase$StreamType;->$VALUES:[Lcom/aliyun/player/source/VidSourceBase$StreamType;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/VidSourceBase$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/VidSourceBase$StreamType;

    return-object v0
.end method


# virtual methods
.method public getStreamType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase$StreamType;->mStreamType:Ljava/lang/String;

    return-object v0
.end method

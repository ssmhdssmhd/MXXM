.class public final enum Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
.super Ljava/lang/Enum;
.source "ApasaraExternalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApasaraExternalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

.field public static final enum ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    const/4 v1, -0x1

    const-string v2, "ST_TYPE_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 17
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    const-string v1, "ST_TYPE_VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 18
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    const-string v1, "ST_TYPE_AUDIO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 19
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    const-string v1, "ST_TYPE_SUB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_UNKNOWN:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_VIDEO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_AUDIO:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->ST_TYPE_SUB:Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->mValue:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;
    .locals 1

    .line 15
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    invoke-virtual {v0}, [Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/aliyun/player/ApasaraExternalPlayer$StreamType;->mValue:I

    return v0
.end method

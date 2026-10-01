.class public final enum Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;
.super Ljava/lang/Enum;
.source "AliPlayerGlobalSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/AliPlayerGlobalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

.field public static final enum STREAM_ALARM:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

.field public static final enum STREAM_MUSIC:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

.field public static final enum STREAM_NOTIFICATION:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

.field public static final enum STREAM_RING:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

.field public static final enum STREAM_SYSTEM:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

.field public static final enum STREAM_VOICE_CALL:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 44
    new-instance v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    const-string v1, "STREAM_VOICE_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_VOICE_CALL:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    new-instance v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    const-string v1, "STREAM_SYSTEM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_SYSTEM:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    new-instance v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    const-string v1, "STREAM_RING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_RING:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    new-instance v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    const-string v1, "STREAM_MUSIC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_MUSIC:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    new-instance v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    const-string v1, "STREAM_ALARM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_ALARM:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    new-instance v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    const-string v1, "STREAM_NOTIFICATION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_NOTIFICATION:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_VOICE_CALL:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_SYSTEM:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_RING:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_MUSIC:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_ALARM:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->STREAM_NOTIFICATION:Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->$VALUES:[Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;
    .locals 1

    .line 44
    sget-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->$VALUES:[Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    invoke-virtual {v0}, [Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;

    return-object v0
.end method

.class public final enum Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;
.super Ljava/lang/Enum;
.source "ApasaraExternalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApasaraExternalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_CONNECT_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_DELAY_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_NETWORK_IS_CONNECTED:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_OPEN_TIME_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_PROBE_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_REMAIN_LIVE_SEG:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_RESPONSE_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

.field public static final enum PROPERTY_KEY_VIDEO_BUFFER_LEN:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_RESPONSE_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_RESPONSE_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 46
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_CONNECT_INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_CONNECT_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 47
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_OPEN_TIME_STR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_OPEN_TIME_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 48
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_PROBE_STR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_PROBE_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 49
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_VIDEO_BUFFER_LEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_VIDEO_BUFFER_LEN:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 50
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_DELAY_INFO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_DELAY_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 51
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_REMAIN_LIVE_SEG"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_REMAIN_LIVE_SEG:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 52
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    const-string v1, "PROPERTY_KEY_NETWORK_IS_CONNECTED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_NETWORK_IS_CONNECTED:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_RESPONSE_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_CONNECT_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_OPEN_TIME_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_PROBE_STR:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_VIDEO_BUFFER_LEN:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_DELAY_INFO:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_REMAIN_LIVE_SEG:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->PROPERTY_KEY_NETWORK_IS_CONNECTED:Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    aput-object v1, v0, v9

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

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

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;
    .locals 1

    .line 44
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    invoke-virtual {v0}, [Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/ApasaraExternalPlayer$PropertyKey;

    return-object v0
.end method

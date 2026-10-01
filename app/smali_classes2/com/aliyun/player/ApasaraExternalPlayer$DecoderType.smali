.class public final enum Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
.super Ljava/lang/Enum;
.source "ApasaraExternalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApasaraExternalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecoderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

.field public static final enum DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

.field public static final enum DT_SOFTWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    const-string v1, "DT_HARDWARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    .line 36
    new-instance v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    const-string v1, "DT_SOFTWARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_SOFTWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_HARDWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->DT_SOFTWARE:Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;
    .locals 1

    .line 34
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->$VALUES:[Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    invoke-virtual {v0}, [Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/aliyun/player/ApasaraExternalPlayer$DecoderType;->ordinal()I

    move-result v0

    return v0
.end method

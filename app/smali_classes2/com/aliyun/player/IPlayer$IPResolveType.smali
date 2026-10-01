.class public final enum Lcom/aliyun/player/IPlayer$IPResolveType;
.super Ljava/lang/Enum;
.source "IPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPResolveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/IPlayer$IPResolveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/IPlayer$IPResolveType;

.field public static final enum IpResolveV4:Lcom/aliyun/player/IPlayer$IPResolveType;

.field public static final enum IpResolveV6:Lcom/aliyun/player/IPlayer$IPResolveType;

.field public static final enum IpResolveWhatEver:Lcom/aliyun/player/IPlayer$IPResolveType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1844
    new-instance v0, Lcom/aliyun/player/IPlayer$IPResolveType;

    const-string v1, "IpResolveWhatEver"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/player/IPlayer$IPResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveWhatEver:Lcom/aliyun/player/IPlayer$IPResolveType;

    .line 1851
    new-instance v0, Lcom/aliyun/player/IPlayer$IPResolveType;

    const-string v1, "IpResolveV4"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aliyun/player/IPlayer$IPResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveV4:Lcom/aliyun/player/IPlayer$IPResolveType;

    .line 1858
    new-instance v0, Lcom/aliyun/player/IPlayer$IPResolveType;

    const-string v1, "IpResolveV6"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/aliyun/player/IPlayer$IPResolveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveV6:Lcom/aliyun/player/IPlayer$IPResolveType;

    .line 1837
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aliyun/player/IPlayer$IPResolveType;

    sget-object v1, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveWhatEver:Lcom/aliyun/player/IPlayer$IPResolveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveV4:Lcom/aliyun/player/IPlayer$IPResolveType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/IPlayer$IPResolveType;->IpResolveV6:Lcom/aliyun/player/IPlayer$IPResolveType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aliyun/player/IPlayer$IPResolveType;->$VALUES:[Lcom/aliyun/player/IPlayer$IPResolveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1837
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/IPlayer$IPResolveType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1837
    const-class v0, Lcom/aliyun/player/IPlayer$IPResolveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/IPlayer$IPResolveType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/IPlayer$IPResolveType;
    .locals 1

    .line 1837
    sget-object v0, Lcom/aliyun/player/IPlayer$IPResolveType;->$VALUES:[Lcom/aliyun/player/IPlayer$IPResolveType;

    invoke-virtual {v0}, [Lcom/aliyun/player/IPlayer$IPResolveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/IPlayer$IPResolveType;

    return-object v0
.end method

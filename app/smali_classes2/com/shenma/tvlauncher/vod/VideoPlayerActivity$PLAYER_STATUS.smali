.class final enum Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
.super Ljava/lang/Enum;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PLAYER_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

.field public static final enum PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;


# direct methods
.method private static synthetic $values()[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 3

    .line 4568
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4569
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const-string v1, "PLAYER_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_IDLE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 4570
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const-string v1, "PLAYER_PREPARING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARING:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 4571
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const-string v1, "PLAYER_PREPARED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_PREPARED:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 4572
    new-instance v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    const-string v1, "PLAYER_BACKSTAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->PLAYER_BACKSTAGE:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    .line 4568
    invoke-static {}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->$values()[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->$VALUES:[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4568
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4568
    const-class v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;
    .locals 1

    .line 4568
    sget-object v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->$VALUES:[Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    invoke-virtual {v0}, [Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$PLAYER_STATUS;

    return-object v0
.end method

.class public final enum Lcom/baidu/cyberplayer/dlna/DLNADeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/dlna/DLNADeviceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MEDIA_RENDERER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

.field public static final enum MEDIA_RENDER_BAIDU_TV:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

.field public static final enum MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

.field public static final enum MEDIA_SERVER_BAIDU_MINI_ROUTER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/dlna/DLNADeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    const-string v1, "MEDIA_SERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    const-string v1, "MEDIA_RENDERER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_RENDERER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    const-string v1, "MEDIA_SERVER_BAIDU_MINI_ROUTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER_BAIDU_MINI_ROUTER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    new-instance v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    const-string v1, "MEDIA_RENDER_BAIDU_TV"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_RENDER_BAIDU_TV:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_RENDERER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER_BAIDU_MINI_ROUTER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_RENDER_BAIDU_TV:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->a:[Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/dlna/DLNADeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/dlna/DLNADeviceType;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->a:[Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    return-object v0
.end method

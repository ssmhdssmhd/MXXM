.class final enum Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

.field public static final enum b:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

.field public static final enum c:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

.field public static final enum d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 233
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const-string v1, "PLAYER_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 234
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const-string v1, "PLAYER_PREPARING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 235
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const-string v1, "PLAYER_NATIVEPREPARED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->c:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 236
    new-instance v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const-string v1, "PLAYER_PREPARED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    .line 232
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->c:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->d:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:[Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 232
    const-class v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;
    .locals 1

    .line 232
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:[Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    return-object v0
.end method

.class public final enum Lcom/baidu/cyberplayer/core/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/core/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/cyberplayer/core/b$c;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/core/b$c;

.field public static final enum b:Lcom/baidu/cyberplayer/core/b$c;

.field public static final enum c:Lcom/baidu/cyberplayer/core/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/baidu/cyberplayer/core/b$c;

    const-string v1, "PLAYER_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/core/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    new-instance v0, Lcom/baidu/cyberplayer/core/b$c;

    const-string v1, "PLAYER_INIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/cyberplayer/core/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/b$c;->b:Lcom/baidu/cyberplayer/core/b$c;

    new-instance v0, Lcom/baidu/cyberplayer/core/b$c;

    const-string v1, "PLAYER_PREPARED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/cyberplayer/core/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/cyberplayer/core/b$c;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->b:Lcom/baidu/cyberplayer/core/b$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:[Lcom/baidu/cyberplayer/core/b$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/core/b$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/baidu/cyberplayer/core/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/b$c;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/core/b$c;
    .locals 1

    .line 55
    sget-object v0, Lcom/baidu/cyberplayer/core/b$c;->a:[Lcom/baidu/cyberplayer/core/b$c;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/core/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/core/b$c;

    return-object v0
.end method

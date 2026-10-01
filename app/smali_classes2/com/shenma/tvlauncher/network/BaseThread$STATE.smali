.class public final enum Lcom/shenma/tvlauncher/network/BaseThread$STATE;
.super Ljava/lang/Enum;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/network/BaseThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shenma/tvlauncher/network/BaseThread$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shenma/tvlauncher/network/BaseThread$STATE;

.field public static final enum ERROR:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

.field public static final enum FINISH:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

.field public static final enum INIT:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

.field public static final enum RUN:Lcom/shenma/tvlauncher/network/BaseThread$STATE;


# direct methods
.method private static synthetic $values()[Lcom/shenma/tvlauncher/network/BaseThread$STATE;
    .locals 3

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    sget-object v1, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->INIT:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->RUN:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->FINISH:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->ERROR:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 207
    new-instance v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/network/BaseThread$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->INIT:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 212
    new-instance v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const-string v1, "RUN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/network/BaseThread$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->RUN:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 217
    new-instance v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const-string v1, "FINISH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/network/BaseThread$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->FINISH:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 222
    new-instance v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/network/BaseThread$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->ERROR:Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    .line 203
    invoke-static {}, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->$values()[Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->$VALUES:[Lcom/shenma/tvlauncher/network/BaseThread$STATE;

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

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shenma/tvlauncher/network/BaseThread$STATE;
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

    .line 203
    const-class v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    return-object v0
.end method

.method public static values()[Lcom/shenma/tvlauncher/network/BaseThread$STATE;
    .locals 1

    .line 203
    sget-object v0, Lcom/shenma/tvlauncher/network/BaseThread$STATE;->$VALUES:[Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    invoke-virtual {v0}, [Lcom/shenma/tvlauncher/network/BaseThread$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shenma/tvlauncher/network/BaseThread$STATE;

    return-object v0
.end method

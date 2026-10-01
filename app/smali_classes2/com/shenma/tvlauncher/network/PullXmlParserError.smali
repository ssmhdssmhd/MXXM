.class public final enum Lcom/shenma/tvlauncher/network/PullXmlParserError;
.super Ljava/lang/Enum;
.source "PullXmlParserError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shenma/tvlauncher/network/PullXmlParserError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shenma/tvlauncher/network/PullXmlParserError;

.field public static final enum ERROR_URL:Lcom/shenma/tvlauncher/network/PullXmlParserError;


# direct methods
.method private static synthetic $values()[Lcom/shenma/tvlauncher/network/PullXmlParserError;
    .locals 3

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shenma/tvlauncher/network/PullXmlParserError;

    sget-object v1, Lcom/shenma/tvlauncher/network/PullXmlParserError;->ERROR_URL:Lcom/shenma/tvlauncher/network/PullXmlParserError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/shenma/tvlauncher/network/PullXmlParserError;

    const-string v1, "ERROR_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shenma/tvlauncher/network/PullXmlParserError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/tvlauncher/network/PullXmlParserError;->ERROR_URL:Lcom/shenma/tvlauncher/network/PullXmlParserError;

    .line 8
    invoke-static {}, Lcom/shenma/tvlauncher/network/PullXmlParserError;->$values()[Lcom/shenma/tvlauncher/network/PullXmlParserError;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/network/PullXmlParserError;->$VALUES:[Lcom/shenma/tvlauncher/network/PullXmlParserError;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shenma/tvlauncher/network/PullXmlParserError;
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

    .line 8
    const-class v0, Lcom/shenma/tvlauncher/network/PullXmlParserError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/network/PullXmlParserError;

    return-object v0
.end method

.method public static values()[Lcom/shenma/tvlauncher/network/PullXmlParserError;
    .locals 1

    .line 8
    sget-object v0, Lcom/shenma/tvlauncher/network/PullXmlParserError;->$VALUES:[Lcom/shenma/tvlauncher/network/PullXmlParserError;

    invoke-virtual {v0}, [Lcom/shenma/tvlauncher/network/PullXmlParserError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shenma/tvlauncher/network/PullXmlParserError;

    return-object v0
.end method

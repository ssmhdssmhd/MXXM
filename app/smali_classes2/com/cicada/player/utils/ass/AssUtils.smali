.class public Lcom/cicada/player/utils/ass/AssUtils;
.super Ljava/lang/Object;
.source "AssUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nParseAssDialogue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native nParseAssHeader(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static parseAssDialogue(Lcom/cicada/player/utils/ass/AssHeader;Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssDialogue;
    .locals 1
    .param p0, "header"    # Lcom/cicada/player/utils/ass/AssHeader;
    .param p1, "data"    # Ljava/lang/String;

    .line 17
    invoke-static {p0, p1}, Lcom/cicada/player/utils/ass/AssUtils;->nParseAssDialogue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cicada/player/utils/ass/AssDialogue;

    return-object v0
.end method

.method public static parseAssHeader(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssHeader;
    .locals 1
    .param p0, "header"    # Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/cicada/player/utils/ass/AssUtils;->nParseAssHeader(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cicada/player/utils/ass/AssHeader;

    return-object v0
.end method

.class public Lcom/shenma/tvlauncher/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:I

.field public static ERROR:I

.field public static INFO:I

.field public static LOG_LEVEL:I

.field public static VERBOSE:I

.field public static WARN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/utils/Logger;->LOG_LEVEL:I

    .line 12
    const/4 v0, 0x5

    sput v0, Lcom/shenma/tvlauncher/utils/Logger;->VERBOSE:I

    .line 13
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/utils/Logger;->DEBUG:I

    .line 14
    const/4 v0, 0x3

    sput v0, Lcom/shenma/tvlauncher/utils/Logger;->INFO:I

    .line 15
    const/4 v0, 0x2

    sput v0, Lcom/shenma/tvlauncher/utils/Logger;->WARN:I

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/shenma/tvlauncher/utils/Logger;->ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 25
    sget v0, Lcom/shenma/tvlauncher/utils/Logger;->LOG_LEVEL:I

    sget v1, Lcom/shenma/tvlauncher/utils/Logger;->DEBUG:I

    if-le v0, v1, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    sget v0, Lcom/shenma/tvlauncher/utils/Logger;->LOG_LEVEL:I

    sget v1, Lcom/shenma/tvlauncher/utils/Logger;->ERROR:I

    if-le v0, v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 31
    nop

    .line 34
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 19
    sget v0, Lcom/shenma/tvlauncher/utils/Logger;->LOG_LEVEL:I

    sget v1, Lcom/shenma/tvlauncher/utils/Logger;->VERBOSE:I

    if-le v0, v1, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    sget v0, Lcom/shenma/tvlauncher/utils/Logger;->LOG_LEVEL:I

    sget v1, Lcom/shenma/tvlauncher/utils/Logger;->WARN:I

    if-le v0, v1, :cond_0

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

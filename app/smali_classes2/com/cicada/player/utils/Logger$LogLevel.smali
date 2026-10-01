.class public final enum Lcom/cicada/player/utils/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_FATAL:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 30
    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const-string v1, "AF_LOG_LEVEL_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 37
    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const/16 v1, 0x8

    const-string v3, "AF_LOG_LEVEL_FATAL"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_FATAL:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 44
    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const/16 v1, 0x10

    const-string v3, "AF_LOG_LEVEL_ERROR"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 51
    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const/16 v1, 0x18

    const-string v3, "AF_LOG_LEVEL_WARNING"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v1}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 58
    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const/16 v1, 0x20

    const-string v3, "AF_LOG_LEVEL_INFO"

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7, v1}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 65
    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const/16 v1, 0x30

    const-string v3, "AF_LOG_LEVEL_DEBUG"

    const/4 v8, 0x5

    invoke-direct {v0, v3, v8, v1}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 72
    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const/16 v1, 0x38

    const-string v3, "AF_LOG_LEVEL_TRACE"

    const/4 v9, 0x6

    invoke-direct {v0, v3, v9, v1}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cicada/player/utils/Logger$LogLevel;

    sget-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_FATAL:Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v1, v0, v9

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->$VALUES:[Lcom/cicada/player/utils/Logger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/cicada/player/utils/Logger$LogLevel;->mValue:I

    .line 78
    return-void
.end method

.method public static convert(I)Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 6
    .param p0, "logLevel"    # I

    .line 81
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    .line 82
    .local v0, "level":Lcom/cicada/player/utils/Logger$LogLevel;
    invoke-static {}, Lcom/cicada/player/utils/Logger$LogLevel;->values()[Lcom/cicada/player/utils/Logger$LogLevel;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 83
    .local v4, "item":Lcom/cicada/player/utils/Logger$LogLevel;
    invoke-virtual {v4}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 84
    move-object v0, v4

    .line 85
    goto :goto_1

    .line 82
    .end local v4    # "item":Lcom/cicada/player/utils/Logger$LogLevel;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 1

    .line 22
    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->$VALUES:[Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/cicada/player/utils/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/cicada/player/utils/Logger$LogLevel;->mValue:I

    return v0
.end method

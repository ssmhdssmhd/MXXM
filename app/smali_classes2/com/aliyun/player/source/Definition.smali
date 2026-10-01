.class public final enum Lcom/aliyun/player/source/Definition;
.super Ljava/lang/Enum;
.source "Definition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/Definition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_2K:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_4K:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_FD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_HD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_LD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_OD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_SD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_SQ:Lcom/aliyun/player/source/Definition;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "FD"

    const-string v2, "DEFINITION_FD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_FD:Lcom/aliyun/player/source/Definition;

    .line 15
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "LD"

    const-string v2, "DEFINITION_LD"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_LD:Lcom/aliyun/player/source/Definition;

    .line 19
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "SD"

    const-string v2, "DEFINITION_SD"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_SD:Lcom/aliyun/player/source/Definition;

    .line 23
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "HD"

    const-string v2, "DEFINITION_HD"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_HD:Lcom/aliyun/player/source/Definition;

    .line 27
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "OD"

    const-string v2, "DEFINITION_OD"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_OD:Lcom/aliyun/player/source/Definition;

    .line 31
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "2K"

    const-string v2, "DEFINITION_2K"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_2K:Lcom/aliyun/player/source/Definition;

    .line 35
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "4K"

    const-string v2, "DEFINITION_4K"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_4K:Lcom/aliyun/player/source/Definition;

    .line 39
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "SQ"

    const-string v2, "DEFINITION_SQ"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_SQ:Lcom/aliyun/player/source/Definition;

    .line 43
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "HQ"

    const-string v2, "DEFINITION_HQ"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

    .line 47
    new-instance v0, Lcom/aliyun/player/source/Definition;

    const-string v1, "AUTO"

    const-string v2, "DEFINITION_AUTO"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v12, v1}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    .line 6
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/aliyun/player/source/Definition;

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_FD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_LD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_SD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_HD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_OD:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_2K:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_4K:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v9

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_SQ:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v10

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v11

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    aput-object v1, v0, v12

    sput-object v0, Lcom/aliyun/player/source/Definition;->$VALUES:[Lcom/aliyun/player/source/Definition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/aliyun/player/source/Definition;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/Definition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/aliyun/player/source/Definition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/source/Definition;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/source/Definition;
    .locals 1

    .line 6
    sget-object v0, Lcom/aliyun/player/source/Definition;->$VALUES:[Lcom/aliyun/player/source/Definition;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/Definition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/Definition;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aliyun/player/source/Definition;->mName:Ljava/lang/String;

    return-object v0
.end method

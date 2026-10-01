.class public final enum Lcom/aliyun/player/source/VidSourceBase$ResultType;
.super Ljava/lang/Enum;
.source "VidSourceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/source/VidSourceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/VidSourceBase$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/VidSourceBase$ResultType;

.field public static final enum Multiple:Lcom/aliyun/player/source/VidSourceBase$ResultType;

.field public static final enum Single:Lcom/aliyun/player/source/VidSourceBase$ResultType;


# instance fields
.field private mResultType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;

    const-string v1, "Single"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/aliyun/player/source/VidSourceBase$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;->Single:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 54
    new-instance v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;

    const-string v1, "Multiple"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/aliyun/player/source/VidSourceBase$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;->Multiple:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aliyun/player/source/VidSourceBase$ResultType;

    sget-object v1, Lcom/aliyun/player/source/VidSourceBase$ResultType;->Single:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/player/source/VidSourceBase$ResultType;->Multiple:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;->$VALUES:[Lcom/aliyun/player/source/VidSourceBase$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "resultType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/aliyun/player/source/VidSourceBase$ResultType;->mResultType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/VidSourceBase$ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/aliyun/player/source/VidSourceBase$ResultType;
    .locals 1

    .line 45
    sget-object v0, Lcom/aliyun/player/source/VidSourceBase$ResultType;->$VALUES:[Lcom/aliyun/player/source/VidSourceBase$ResultType;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/VidSourceBase$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/VidSourceBase$ResultType;

    return-object v0
.end method


# virtual methods
.method public getResultType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase$ResultType;->mResultType:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;
.super Ljava/lang/Enum;
.source "AssHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/ass/AssHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubtitleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

.field public static final enum SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

.field public static final enum SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

.field public static final enum SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    const-string v1, "SubtitleTypeUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    new-instance v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    const-string v1, "SubtitleTypeAss"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    new-instance v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    const-string v1, "SubtitleTypeSsa"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->$VALUES:[Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    return-object v0
.end method

.method public static values()[Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;
    .locals 1

    .line 7
    sget-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->$VALUES:[Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    invoke-virtual {v0}, [Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    return-object v0
.end method

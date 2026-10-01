.class public Lcom/cicada/player/utils/ass/AssHeader;
.super Ljava/lang/Object;
.source "AssHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;
    }
.end annotation


# instance fields
.field public mEventFormat:Ljava/lang/String;

.field public mPlayResX:I

.field public mPlayResY:I

.field public mScaledBorderAndShadow:I

.field public mStyleFormat:Ljava/lang/String;

.field public mStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cicada/player/utils/ass/AssStyle;",
            ">;"
        }
    .end annotation
.end field

.field public mTimer:D

.field public mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

.field public mWrapStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    .line 10
    sget-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResX:I

    .line 13
    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResY:I

    .line 14
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mTimer:D

    .line 15
    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mWrapStyle:I

    .line 16
    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mScaledBorderAndShadow:I

    return-void
.end method

.method private getStyles()Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    return-object v0
.end method

.method private getType()I
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 43
    return v2

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    if-ne v0, v1, :cond_1

    .line 45
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    if-ne v0, v1, :cond_2

    .line 47
    const/4 v0, 0x2

    return v0

    .line 49
    :cond_2
    return v2
.end method

.method private setStyles(Ljava/lang/Object;)V
    .locals 1
    .param p1, "styles"    # Ljava/lang/Object;

    .line 22
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    .line 23
    return-void
.end method

.method private setType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 30
    if-nez p1, :cond_0

    .line 31
    sget-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 33
    sget-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 35
    sget-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.class Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
.super Ljava/lang/Object;
.source "AssResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/ass/AssResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationAttribute"
.end annotation


# instance fields
.field public mAlignment:I

.field public mAngle:D

.field public mScaleX:D

.field public mScaleY:D

.field public marginL:I

.field public marginR:I

.field public marginV:I

.field public posX:D

.field public posY:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cicada/player/utils/ass/AssResolver$1;

    .line 105
    invoke-direct {p0}, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;-><init>()V

    return-void
.end method

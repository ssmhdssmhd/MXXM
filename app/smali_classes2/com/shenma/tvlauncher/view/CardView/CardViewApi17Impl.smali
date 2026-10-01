.class Lcom/shenma/tvlauncher/view/CardView/CardViewApi17Impl;
.super Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/CardView/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .line 30
    new-instance v0, Lcom/shenma/tvlauncher/view/CardView/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/CardView/CardViewApi17Impl$1;-><init>(Lcom/shenma/tvlauncher/view/CardView/CardViewApi17Impl;)V

    sput-object v0, Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/shenma/tvlauncher/view/CardView/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 38
    return-void
.end method

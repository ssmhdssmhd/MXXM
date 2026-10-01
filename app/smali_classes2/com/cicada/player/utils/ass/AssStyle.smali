.class public Lcom/cicada/player/utils/ass/AssStyle;
.super Ljava/lang/Object;
.source "AssStyle.java"


# instance fields
.field public mAlignment:I

.field public mAngle:D

.field public mBackColour:I

.field public mBold:I

.field public mBorderStyle:I

.field public mEncoding:I

.field public mFontName:Ljava/lang/String;

.field public mFontSize:D

.field public mItalic:I

.field public mMarginL:I

.field public mMarginR:I

.field public mMarginV:I

.field public mName:Ljava/lang/String;

.field public mOutline:D

.field public mOutlineColour:I

.field public mPrimaryColour:I

.field public mScaleX:D

.field public mScaleY:D

.field public mSecondaryColour:I

.field public mShadow:D

.field public mSpacing:D

.field public mStrikeOut:I

.field public mUnderline:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mFontSize:D

    .line 8
    const/4 v2, 0x0

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mPrimaryColour:I

    .line 9
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mSecondaryColour:I

    .line 10
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mOutlineColour:I

    .line 11
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBackColour:I

    .line 12
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBold:I

    .line 13
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mItalic:I

    .line 14
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mUnderline:I

    .line 15
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mStrikeOut:I

    .line 16
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    iput-wide v3, p0, Lcom/cicada/player/utils/ass/AssStyle;->mScaleX:D

    .line 17
    iput-wide v3, p0, Lcom/cicada/player/utils/ass/AssStyle;->mScaleY:D

    .line 18
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mSpacing:D

    .line 19
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mAngle:D

    .line 20
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBorderStyle:I

    .line 21
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mOutline:D

    .line 22
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mShadow:D

    .line 23
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mAlignment:I

    .line 24
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginL:I

    .line 25
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginR:I

    .line 26
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginV:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mEncoding:I

    return-void
.end method

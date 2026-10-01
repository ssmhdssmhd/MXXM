.class public Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_CHAIN_NEW:I = 0x3

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 55
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 63
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 65
    const/4 v2, 0x2

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 66
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 67
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 71
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 79
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    return v0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    return v0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    return v0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    return v0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    return v0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    return v0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    return v0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;
    .param p1, "x1"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;
    .param p1, "x1"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    return v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    return v0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/core/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    return v0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/core/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/core/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    return v0
.end method

.method private createAlignedConstraints(Z)V
    .locals 16
    .param p1, "isInRtl"    # Z

    .line 1293
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v1, :cond_16

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_16

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 1299
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v1, v2, :cond_1

    .line 1300
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 1301
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 1299
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1304
    .end local v1    # "i":I
    :cond_1
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 1305
    .local v1, "cols":I
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 1307
    .local v3, "rows":I
    const/4 v5, 0x0

    .line 1308
    .local v5, "previous":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 1309
    .local v6, "horizontalBias":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v8, 0x8

    if-ge v7, v1, :cond_8

    .line 1310
    move v9, v7

    .line 1311
    .local v9, "index":I
    if-eqz p1, :cond_2

    .line 1312
    sub-int v10, v1, v7

    add-int/lit8 v9, v10, -0x1

    .line 1313
    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    sub-float/2addr v10, v11

    move v6, v10

    .line 1315
    :cond_2
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v10, v10, v9

    .line 1316
    .local v10, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    if-ne v11, v8, :cond_3

    .line 1317
    goto :goto_2

    .line 1319
    :cond_3
    if-nez v7, :cond_4

    .line 1320
    iget-object v8, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    move-result v12

    invoke-virtual {v10, v8, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1321
    iget v8, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v10, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1322
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1324
    :cond_4
    add-int/lit8 v8, v1, -0x1

    if-ne v7, v8, :cond_5

    .line 1325
    iget-object v8, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    move-result v12

    invoke-virtual {v10, v8, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1327
    :cond_5
    if-lez v7, :cond_6

    if-eqz v5, :cond_6

    .line 1328
    iget-object v8, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v10, v8, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1329
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5, v8, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1331
    :cond_6
    move-object v5, v10

    .line 1309
    .end local v9    # "index":I
    .end local v10    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1333
    .end local v7    # "i":I
    :cond_8
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v3, :cond_e

    .line 1334
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v9, v9, v7

    .line 1335
    .local v9, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v8, :cond_9

    .line 1336
    goto :goto_4

    .line 1338
    :cond_9
    if-nez v7, :cond_a

    .line 1339
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1340
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1341
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1343
    :cond_a
    add-int/lit8 v10, v3, -0x1

    if-ne v7, v10, :cond_b

    .line 1344
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1346
    :cond_b
    if-lez v7, :cond_c

    if-eqz v5, :cond_c

    .line 1347
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v9, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1348
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5, v10, v11, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1350
    :cond_c
    move-object v5, v9

    .line 1333
    .end local v9    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_d
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1353
    .end local v7    # "j":I
    :cond_e
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v1, :cond_15

    .line 1354
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    if-ge v9, v3, :cond_14

    .line 1355
    mul-int v10, v9, v1

    add-int/2addr v10, v7

    .line 1356
    .local v10, "index":I
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    if-ne v11, v4, :cond_f

    .line 1357
    mul-int v11, v7, v3

    add-int v10, v11, v9

    .line 1359
    :cond_f
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    array-length v11, v11

    if-lt v10, v11, :cond_10

    .line 1360
    goto :goto_7

    .line 1362
    :cond_10
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v11, v11, v10

    .line 1363
    .local v11, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    if-ne v12, v8, :cond_11

    .line 1364
    goto :goto_7

    .line 1366
    :cond_11
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v12, v12, v7

    .line 1367
    .local v12, "biggestInCol":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v13, v13, v9

    .line 1368
    .local v13, "biggestInRow":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eq v11, v12, :cond_12

    .line 1369
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v14, v15, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1370
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v14, v15, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1372
    :cond_12
    if-eq v11, v13, :cond_13

    .line 1373
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v14, v15, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1374
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11, v14, v15, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1354
    .end local v10    # "index":I
    .end local v11    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v12    # "biggestInCol":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v13    # "biggestInRow":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_13
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1353
    .end local v9    # "j":I
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1378
    .end local v7    # "i":I
    :cond_15
    return-void

    .line 1296
    .end local v1    # "cols":I
    .end local v3    # "rows":I
    .end local v5    # "previous":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v6    # "horizontalBias":F
    :cond_16
    :goto_8
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 204
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 205
    return v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5

    .line 208
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_1

    .line 209
    return v0

    .line 210
    :cond_1
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 211
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    float-to-int v8, v0

    .line 212
    .local v8, "value":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-eq v8, v0, :cond_2

    .line 213
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 214
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, p1

    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v4, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/Flow;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_0

    .line 212
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2
    move-object v4, p1

    .line 216
    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_0
    return v8

    .line 217
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "value":I
    .restart local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_3
    move-object v4, p1

    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget p1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne p1, v2, :cond_4

    .line 218
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1

    .line 219
    :cond_4
    iget p1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 220
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    .line 207
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_5
    move-object v4, p1

    .line 223
    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 181
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 182
    return v0

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5

    .line 185
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_1

    .line 186
    return v0

    .line 187
    :cond_1
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 188
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    float-to-int v6, v0

    .line 189
    .local v6, "value":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    if-eq v6, v0, :cond_2

    .line 190
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 191
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v4, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/Flow;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_0

    .line 189
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2
    move-object v4, p1

    .line 193
    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_0
    return v6

    .line 194
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v6    # "value":I
    .restart local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_3
    move-object v4, p1

    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget p1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne p1, v2, :cond_4

    .line 195
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1

    .line 196
    :cond_4
    iget p1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 197
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    .line 184
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_5
    move-object v4, p1

    .line 200
    .end local p1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1
.end method

.method private measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 17
    .param p1, "widgets"    # [Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 1139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    .line 1140
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 1141
    .local v6, "rows":I
    const/4 v7, 0x0

    .line 1143
    .local v7, "cols":I
    if-nez v3, :cond_4

    .line 1144
    iget v7, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1145
    if-gtz v7, :cond_8

    .line 1147
    const/4 v8, 0x0

    .line 1148
    .local v8, "w":I
    const/4 v7, 0x0

    .line 1149
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_3

    .line 1150
    if-lez v9, :cond_0

    .line 1151
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v10

    .line 1153
    :cond_0
    aget-object v10, v1, v9

    .line 1154
    .local v10, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-nez v10, :cond_1

    .line 1155
    goto :goto_1

    .line 1157
    :cond_1
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 1158
    if-le v8, v4, :cond_2

    .line 1159
    goto :goto_2

    .line 1161
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1149
    .end local v10    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1163
    .end local v8    # "w":I
    .end local v9    # "i":I
    :cond_3
    :goto_2
    goto :goto_5

    .line 1165
    :cond_4
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 1166
    if-gtz v6, :cond_8

    .line 1168
    const/4 v8, 0x0

    .line 1169
    .local v8, "h":I
    const/4 v6, 0x0

    .line 1170
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v2, :cond_8

    .line 1171
    if-lez v9, :cond_5

    .line 1172
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v8, v10

    .line 1174
    :cond_5
    aget-object v10, v1, v9

    .line 1175
    .restart local v10    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-nez v10, :cond_6

    .line 1176
    goto :goto_4

    .line 1178
    :cond_6
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 1179
    if-le v8, v4, :cond_7

    .line 1180
    goto :goto_5

    .line 1182
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 1170
    .end local v10    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1187
    .end local v8    # "h":I
    .end local v9    # "i":I
    :cond_8
    :goto_5
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    if-nez v8, :cond_9

    .line 1188
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    .line 1191
    :cond_9
    const/4 v8, 0x1

    if-nez v6, :cond_a

    if-eq v3, v8, :cond_b

    :cond_a
    if-nez v7, :cond_c

    if-nez v3, :cond_c

    .line 1193
    :cond_b
    const/4 v5, 0x1

    .line 1196
    :cond_c
    :goto_6
    if-nez v5, :cond_26

    .line 1200
    if-nez v3, :cond_d

    .line 1201
    int-to-float v10, v2

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_7

    .line 1203
    :cond_d
    int-to-float v10, v2

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 1206
    :goto_7
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_f

    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    array-length v10, v10

    if-ge v10, v7, :cond_e

    goto :goto_8

    .line 1209
    :cond_e
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 1207
    :cond_f
    :goto_8
    new-array v10, v7, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1211
    :goto_9
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v10, :cond_11

    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    array-length v10, v10

    if-ge v10, v6, :cond_10

    goto :goto_a

    .line 1214
    :cond_10
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 1212
    :cond_11
    :goto_a
    new-array v10, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1217
    :goto_b
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c
    if-ge v10, v7, :cond_1a

    .line 1218
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_d
    if-ge v11, v6, :cond_19

    .line 1219
    mul-int v12, v11, v7

    add-int/2addr v12, v10

    .line 1220
    .local v12, "index":I
    if-ne v3, v8, :cond_12

    .line 1221
    mul-int v13, v10, v6

    add-int v12, v13, v11

    .line 1223
    :cond_12
    array-length v13, v1

    if-lt v12, v13, :cond_13

    .line 1224
    const/16 v16, 0x0

    goto :goto_e

    .line 1226
    :cond_13
    aget-object v13, v1, v12

    .line 1227
    .local v13, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-nez v13, :cond_14

    .line 1228
    const/16 v16, 0x0

    goto :goto_e

    .line 1230
    :cond_14
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v14

    .line 1231
    .local v14, "w":I
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v15, v15, v10

    if-eqz v15, :cond_15

    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v15, v15, v10

    .line 1232
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_16

    .line 1233
    :cond_15
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v13, v15, v10

    .line 1235
    :cond_16
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v15

    .line 1236
    .local v15, "h":I
    const/16 v16, 0x0

    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v9, v9, v11

    if-eqz v9, :cond_17

    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v9, v9, v11

    .line 1237
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    if-ge v9, v15, :cond_18

    .line 1238
    :cond_17
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v13, v9, v11

    .line 1218
    .end local v12    # "index":I
    .end local v13    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v14    # "w":I
    .end local v15    # "h":I
    :cond_18
    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_19
    const/16 v16, 0x0

    .line 1217
    .end local v11    # "j":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_1a
    const/16 v16, 0x0

    .line 1243
    .end local v10    # "i":I
    const/4 v9, 0x0

    .line 1244
    .local v9, "w":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_f
    if-ge v10, v7, :cond_1d

    .line 1245
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v11, v11, v10

    .line 1246
    .local v11, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v11, :cond_1c

    .line 1247
    if-lez v10, :cond_1b

    .line 1248
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v9, v12

    .line 1250
    :cond_1b
    invoke-direct {v0, v11, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v9, v12

    .line 1244
    .end local v11    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 1253
    .end local v10    # "i":I
    :cond_1d
    const/4 v10, 0x0

    .line 1254
    .local v10, "h":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_10
    if-ge v11, v6, :cond_20

    .line 1255
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v12, v12, v11

    .line 1256
    .local v12, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v12, :cond_1f

    .line 1257
    if-lez v11, :cond_1e

    .line 1258
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v10, v13

    .line 1260
    :cond_1e
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v10, v13

    .line 1254
    .end local v12    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1263
    .end local v11    # "j":I
    :cond_20
    aput v9, p5, v16

    .line 1264
    aput v10, p5, v8

    .line 1266
    if-nez v3, :cond_23

    .line 1267
    if-le v9, v4, :cond_22

    .line 1268
    if-le v7, v8, :cond_21

    .line 1269
    add-int/lit8 v7, v7, -0x1

    goto :goto_11

    .line 1271
    :cond_21
    const/4 v5, 0x1

    goto :goto_11

    .line 1274
    :cond_22
    const/4 v5, 0x1

    goto :goto_11

    .line 1277
    :cond_23
    if-le v10, v4, :cond_25

    .line 1278
    if-le v6, v8, :cond_24

    .line 1279
    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    .line 1281
    :cond_24
    const/4 v5, 0x1

    goto :goto_11

    .line 1284
    :cond_25
    const/4 v5, 0x1

    .line 1287
    .end local v9    # "w":I
    .end local v10    # "h":I
    :goto_11
    goto/16 :goto_6

    .line 1288
    :cond_26
    const/16 v16, 0x0

    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    aput v7, v9, v16

    .line 1289
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    aput v6, v9, v8

    .line 1290
    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 25
    .param p1, "widgets"    # [Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 793
    move-object/from16 v1, p0

    move/from16 v8, p2

    if-nez v8, :cond_0

    .line 794
    return-void

    .line 797
    :cond_0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 798
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 799
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    const/4 v2, 0x0

    .line 803
    .local v2, "nbMatchConstraintsWidgets":I
    const/16 v20, 0x0

    const/16 v21, 0x1

    if-nez p3, :cond_8

    .line 804
    const/4 v3, 0x0

    .line 805
    .local v3, "width":I
    const/4 v4, 0x0

    move-object v9, v0

    move v10, v4

    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v9, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_7

    .line 806
    aget-object v11, p1, v10

    .line 807
    .local v11, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-direct {v1, v11, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v12

    .line 808
    .local v12, "w":I
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_1

    .line 809
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    goto :goto_1

    .line 808
    :cond_1
    move v13, v2

    .line 811
    .end local v2    # "nbMatchConstraintsWidgets":I
    .local v13, "nbMatchConstraintsWidgets":I
    :goto_1
    if-eq v3, v7, :cond_2

    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v3

    add-int/2addr v0, v12

    if-le v0, v7, :cond_3

    :cond_2
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 812
    .local v0, "doWrap":Z
    :goto_2
    if-nez v0, :cond_4

    if-lez v10, :cond_4

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_4

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    rem-int v2, v10, v2

    if-nez v2, :cond_4

    .line 813
    const/4 v0, 0x1

    move v14, v0

    goto :goto_3

    .line 815
    :cond_4
    move v14, v0

    .end local v0    # "doWrap":Z
    .local v14, "doWrap":Z
    :goto_3
    if-eqz v14, :cond_5

    .line 816
    move v15, v12

    .line 817
    .end local v3    # "width":I
    .local v15, "width":I
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 818
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 819
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    move v3, v15

    goto :goto_4

    .line 821
    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .end local v15    # "width":I
    .restart local v3    # "width":I
    .restart local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :cond_5
    if-lez v10, :cond_6

    .line 822
    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v12

    add-int/2addr v3, v0

    goto :goto_4

    .line 824
    :cond_6
    move v0, v12

    move v3, v0

    .line 827
    :goto_4
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 805
    .end local v11    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v12    # "w":I
    .end local v14    # "doWrap":Z
    add-int/lit8 v10, v10, 0x1

    move v2, v13

    goto :goto_0

    .line 829
    .end local v3    # "width":I
    .end local v10    # "i":I
    .end local v13    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_7
    move-object v0, v9

    goto/16 :goto_a

    .line 830
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :cond_8
    const/4 v3, 0x0

    .line 831
    .local v3, "height":I
    const/4 v4, 0x0

    move-object v9, v0

    move v10, v4

    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .restart local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .restart local v10    # "i":I
    :goto_5
    if-ge v10, v8, :cond_f

    .line 832
    aget-object v11, p1, v10

    .line 833
    .restart local v11    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-direct {v1, v11, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v12

    .line 834
    .local v12, "h":I
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_9

    .line 835
    add-int/lit8 v2, v2, 0x1

    move v13, v2

    goto :goto_6

    .line 834
    :cond_9
    move v13, v2

    .line 837
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v13    # "nbMatchConstraintsWidgets":I
    :goto_6
    if-eq v3, v7, :cond_a

    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v3

    add-int/2addr v0, v12

    if-le v0, v7, :cond_b

    :cond_a
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    .line 838
    .local v0, "doWrap":Z
    :goto_7
    if-nez v0, :cond_c

    if-lez v10, :cond_c

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_c

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    rem-int v2, v10, v2

    if-nez v2, :cond_c

    .line 839
    const/4 v0, 0x1

    move v14, v0

    goto :goto_8

    .line 841
    :cond_c
    move v14, v0

    .end local v0    # "doWrap":Z
    .restart local v14    # "doWrap":Z
    :goto_8
    if-eqz v14, :cond_d

    .line 842
    move v15, v12

    .line 843
    .end local v3    # "height":I
    .local v15, "height":I
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 844
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 845
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    move v3, v15

    goto :goto_9

    .line 847
    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .end local v15    # "height":I
    .restart local v3    # "height":I
    .restart local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :cond_d
    if-lez v10, :cond_e

    .line 848
    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v12

    add-int/2addr v3, v0

    goto :goto_9

    .line 850
    :cond_e
    move v0, v12

    move v3, v0

    .line 853
    :goto_9
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 831
    .end local v11    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v12    # "h":I
    .end local v14    # "doWrap":Z
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p4

    move v2, v13

    goto :goto_5

    .end local v13    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_f
    move-object v0, v9

    .line 856
    .end local v3    # "height":I
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .end local v10    # "i":I
    .restart local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :goto_a
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 858
    .local v3, "listCount":I
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 859
    .local v4, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 860
    .local v5, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 861
    .local v6, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 863
    .local v7, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    move-result v9

    .line 864
    .local v9, "paddingLeft":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    move-result v10

    .line 865
    .local v10, "paddingTop":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    move-result v11

    .line 866
    .local v11, "paddingRight":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    move-result v12

    .line 868
    .local v12, "paddingBottom":I
    const/4 v13, 0x0

    .line 869
    .local v13, "maxWidth":I
    const/4 v14, 0x0

    .line 871
    .local v14, "maxHeight":I
    nop

    .line 872
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    move-object/from16 v22, v0

    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v22, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v15, v0, :cond_11

    .line 873
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v15, :cond_10

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v0, 0x1

    .line 875
    .local v0, "needInternalMeasure":Z
    :goto_c
    if-lez v2, :cond_14

    if-eqz v0, :cond_14

    .line 877
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    if-ge v15, v3, :cond_13

    .line 878
    move/from16 v23, v0

    .end local v0    # "needInternalMeasure":Z
    .local v23, "needInternalMeasure":Z
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 879
    .local v0, "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    if-nez p3, :cond_12

    .line 880
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v16

    move/from16 v24, v2

    .end local v2    # "nbMatchConstraintsWidgets":I
    .local v24, "nbMatchConstraintsWidgets":I
    sub-int v2, p4, v16

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_e

    .line 882
    .end local v24    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_12
    move/from16 v24, v2

    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v24    # "nbMatchConstraintsWidgets":I
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 877
    .end local v0    # "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :goto_e
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v23

    move/from16 v2, v24

    goto :goto_d

    .end local v23    # "needInternalMeasure":Z
    .end local v24    # "nbMatchConstraintsWidgets":I
    .local v0, "needInternalMeasure":Z
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_13
    move/from16 v23, v0

    move/from16 v24, v2

    .end local v0    # "needInternalMeasure":Z
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v23    # "needInternalMeasure":Z
    .restart local v24    # "nbMatchConstraintsWidgets":I
    goto :goto_f

    .line 875
    .end local v15    # "i":I
    .end local v23    # "needInternalMeasure":Z
    .end local v24    # "nbMatchConstraintsWidgets":I
    .restart local v0    # "needInternalMeasure":Z
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_14
    move/from16 v23, v0

    move/from16 v24, v2

    .line 887
    .end local v0    # "needInternalMeasure":Z
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v23    # "needInternalMeasure":Z
    .restart local v24    # "nbMatchConstraintsWidgets":I
    :goto_f
    const/4 v0, 0x0

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v2, v13

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move v4, v14

    move-object v14, v7

    .end local v5    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v7    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingTop":I
    .local v0, "i":I
    .local v2, "maxWidth":I
    .local v4, "maxHeight":I
    .local v11, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v12, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v13, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v14, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v15, "paddingLeft":I
    .local v16, "paddingTop":I
    .local v17, "paddingRight":I
    .local v18, "paddingBottom":I
    :goto_10
    if-ge v0, v3, :cond_1a

    .line 888
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 889
    .local v9, "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    if-nez p3, :cond_17

    .line 890
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_15

    .line 891
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 892
    .local v5, "next":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 893
    .end local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 894
    .end local v18    # "paddingBottom":I
    .local v5, "paddingBottom":I
    move/from16 v18, v5

    move-object v14, v6

    goto :goto_11

    .line 895
    .end local v5    # "paddingBottom":I
    .end local v6    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v18    # "paddingBottom":I
    :cond_15
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 896
    .end local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v6    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    move-result v5

    move/from16 v18, v5

    move-object v14, v6

    .line 898
    .end local v6    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_11
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 899
    .local v5, "currentBottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v10, p3

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 901
    move-object v6, v5

    .line 902
    .end local v12    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    .line 903
    .end local v16    # "paddingTop":I
    .local v7, "paddingTop":I
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 904
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v10

    add-int/2addr v4, v10

    .line 905
    if-lez v0, :cond_16

    .line 906
    iget v10, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v4, v10

    .line 908
    .end local v5    # "currentBottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_16
    move-object v12, v6

    move/from16 v16, v7

    goto :goto_13

    .line 909
    .end local v6    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v7    # "paddingTop":I
    .restart local v12    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v16    # "paddingTop":I
    :cond_17
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_18

    .line 910
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 911
    .local v5, "next":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 912
    .end local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 913
    .end local v17    # "paddingRight":I
    .local v5, "paddingRight":I
    move/from16 v17, v5

    move-object v13, v6

    goto :goto_12

    .line 914
    .end local v5    # "paddingRight":I
    .end local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v17    # "paddingRight":I
    :cond_18
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 915
    .end local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    move-result v5

    move/from16 v17, v5

    move-object v13, v6

    .line 917
    .end local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_12
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 918
    .local v5, "currentRight":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v10, p3

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 920
    move-object v6, v5

    .line 921
    .end local v11    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    .line 922
    .end local v15    # "paddingLeft":I
    .local v7, "paddingLeft":I
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    add-int/2addr v2, v10

    .line 923
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 924
    if-lez v0, :cond_19

    .line 925
    iget v10, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v2, v10

    move-object v11, v6

    move v15, v7

    goto :goto_13

    .line 924
    :cond_19
    move-object v11, v6

    move v15, v7

    .line 887
    .end local v5    # "currentRight":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v6    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v7    # "paddingLeft":I
    .end local v9    # "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .restart local v11    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v15    # "paddingLeft":I
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 929
    .end local v0    # "i":I
    :cond_1a
    aput v2, p5, v20

    .line 930
    aput v4, p5, v21

    .line 931
    return-void
.end method

.method private measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 25
    .param p1, "widgets"    # [Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 945
    move-object/from16 v1, p0

    move/from16 v8, p2

    if-nez v8, :cond_0

    .line 946
    return-void

    .line 949
    :cond_0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 950
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 951
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    const/4 v2, 0x0

    .line 955
    .local v2, "nbMatchConstraintsWidgets":I
    const/16 v20, 0x0

    const/16 v21, 0x1

    if-nez p3, :cond_8

    .line 956
    const/4 v3, 0x0

    .line 957
    .local v3, "width":I
    const/4 v4, 0x0

    .line 958
    .local v4, "col":I
    const/4 v5, 0x0

    move-object v9, v0

    move v10, v5

    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v9, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_7

    .line 959
    add-int/lit8 v11, v4, 0x1

    .line 960
    .end local v4    # "col":I
    .local v11, "col":I
    aget-object v12, p1, v10

    .line 961
    .local v12, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-direct {v1, v12, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    .line 962
    .local v13, "w":I
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_1

    .line 963
    add-int/lit8 v2, v2, 0x1

    move v14, v2

    goto :goto_1

    .line 962
    :cond_1
    move v14, v2

    .line 965
    .end local v2    # "nbMatchConstraintsWidgets":I
    .local v14, "nbMatchConstraintsWidgets":I
    :goto_1
    if-eq v3, v7, :cond_2

    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v3

    add-int/2addr v0, v13

    if-le v0, v7, :cond_3

    :cond_2
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 966
    .local v0, "doWrap":Z
    :goto_2
    if-nez v0, :cond_4

    if-lez v10, :cond_4

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_4

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-le v11, v2, :cond_4

    .line 967
    const/4 v0, 0x1

    move v15, v0

    goto :goto_3

    .line 969
    :cond_4
    move v15, v0

    .end local v0    # "doWrap":Z
    .local v15, "doWrap":Z
    :goto_3
    if-eqz v15, :cond_5

    .line 970
    move/from16 v16, v13

    .line 971
    .end local v3    # "width":I
    .local v16, "width":I
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 972
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 973
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    move v4, v11

    move/from16 v3, v16

    goto :goto_4

    .line 975
    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .end local v16    # "width":I
    .restart local v3    # "width":I
    .restart local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :cond_5
    const/4 v0, 0x0

    .line 976
    .end local v11    # "col":I
    .local v0, "col":I
    if-lez v10, :cond_6

    .line 977
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v2, v13

    add-int/2addr v3, v2

    move v4, v0

    goto :goto_4

    .line 979
    :cond_6
    move v2, v13

    move v4, v0

    move v3, v2

    .line 982
    .end local v0    # "col":I
    .restart local v4    # "col":I
    :goto_4
    invoke-virtual {v9, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 958
    .end local v12    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v13    # "w":I
    .end local v15    # "doWrap":Z
    add-int/lit8 v10, v10, 0x1

    move v2, v14

    goto :goto_0

    .line 984
    .end local v3    # "width":I
    .end local v4    # "col":I
    .end local v10    # "i":I
    .end local v14    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_7
    move-object v0, v9

    goto/16 :goto_a

    .line 985
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :cond_8
    const/4 v3, 0x0

    .line 986
    .local v3, "height":I
    const/4 v4, 0x0

    .line 987
    .local v4, "row":I
    const/4 v5, 0x0

    move-object v9, v0

    move v10, v4

    move v11, v5

    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .end local v4    # "row":I
    .restart local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v10, "row":I
    .local v11, "i":I
    :goto_5
    if-ge v11, v8, :cond_f

    .line 988
    aget-object v12, p1, v11

    .line 989
    .restart local v12    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-direct {v1, v12, v7}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    move-result v13

    .line 990
    .local v13, "h":I
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v4, :cond_9

    .line 991
    add-int/lit8 v2, v2, 0x1

    move v14, v2

    goto :goto_6

    .line 990
    :cond_9
    move v14, v2

    .line 993
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v14    # "nbMatchConstraintsWidgets":I
    :goto_6
    if-eq v3, v7, :cond_a

    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v3

    add-int/2addr v0, v13

    if-le v0, v7, :cond_b

    :cond_a
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    .line 994
    .local v0, "doWrap":Z
    :goto_7
    if-nez v0, :cond_c

    if-lez v11, :cond_c

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_c

    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-le v10, v2, :cond_c

    .line 995
    const/4 v0, 0x1

    move v15, v0

    goto :goto_8

    .line 997
    :cond_c
    move v15, v0

    .end local v0    # "doWrap":Z
    .restart local v15    # "doWrap":Z
    :goto_8
    if-eqz v15, :cond_d

    .line 998
    move/from16 v16, v13

    .line 999
    .end local v3    # "height":I
    .local v16, "height":I
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1000
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 1001
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v0

    move/from16 v3, v16

    goto :goto_9

    .line 1003
    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .end local v16    # "height":I
    .restart local v3    # "height":I
    .restart local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :cond_d
    const/4 v0, 0x0

    .line 1004
    .end local v10    # "row":I
    .local v0, "row":I
    if-lez v11, :cond_e

    .line 1005
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v2, v13

    add-int/2addr v3, v2

    move v10, v0

    goto :goto_9

    .line 1007
    :cond_e
    move v2, v13

    move v10, v0

    move v3, v2

    .line 1010
    .end local v0    # "row":I
    .restart local v10    # "row":I
    :goto_9
    invoke-virtual {v9, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 987
    .end local v12    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v13    # "h":I
    .end local v15    # "doWrap":Z
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p4

    move v2, v14

    goto :goto_5

    .end local v14    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_f
    move-object v0, v9

    .line 1013
    .end local v3    # "height":I
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .end local v10    # "row":I
    .end local v11    # "i":I
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :goto_a
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1015
    .local v3, "listCount":I
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1016
    .local v4, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1017
    .local v5, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1018
    .local v6, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1020
    .local v7, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    move-result v9

    .line 1021
    .local v9, "paddingLeft":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    move-result v10

    .line 1022
    .local v10, "paddingTop":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    move-result v11

    .line 1023
    .local v11, "paddingRight":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    move-result v12

    .line 1025
    .local v12, "paddingBottom":I
    const/4 v13, 0x0

    .line 1026
    .local v13, "maxWidth":I
    const/4 v14, 0x0

    .line 1028
    .local v14, "maxHeight":I
    nop

    .line 1029
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    move-object/from16 v22, v0

    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v22, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v15, v0, :cond_11

    .line 1030
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v15, :cond_10

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v0, 0x1

    .line 1032
    .local v0, "needInternalMeasure":Z
    :goto_c
    if-lez v2, :cond_14

    if-eqz v0, :cond_14

    .line 1034
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    if-ge v15, v3, :cond_13

    .line 1035
    move/from16 v23, v0

    .end local v0    # "needInternalMeasure":Z
    .local v23, "needInternalMeasure":Z
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1036
    .local v0, "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    if-nez p3, :cond_12

    .line 1037
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v16

    move/from16 v24, v2

    .end local v2    # "nbMatchConstraintsWidgets":I
    .local v24, "nbMatchConstraintsWidgets":I
    sub-int v2, p4, v16

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_e

    .line 1039
    .end local v24    # "nbMatchConstraintsWidgets":I
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_12
    move/from16 v24, v2

    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v24    # "nbMatchConstraintsWidgets":I
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 1034
    .end local v0    # "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :goto_e
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v23

    move/from16 v2, v24

    goto :goto_d

    .end local v23    # "needInternalMeasure":Z
    .end local v24    # "nbMatchConstraintsWidgets":I
    .local v0, "needInternalMeasure":Z
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_13
    move/from16 v23, v0

    move/from16 v24, v2

    .end local v0    # "needInternalMeasure":Z
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v23    # "needInternalMeasure":Z
    .restart local v24    # "nbMatchConstraintsWidgets":I
    goto :goto_f

    .line 1032
    .end local v15    # "i":I
    .end local v23    # "needInternalMeasure":Z
    .end local v24    # "nbMatchConstraintsWidgets":I
    .restart local v0    # "needInternalMeasure":Z
    .restart local v2    # "nbMatchConstraintsWidgets":I
    :cond_14
    move/from16 v23, v0

    move/from16 v24, v2

    .line 1044
    .end local v0    # "needInternalMeasure":Z
    .end local v2    # "nbMatchConstraintsWidgets":I
    .restart local v23    # "needInternalMeasure":Z
    .restart local v24    # "nbMatchConstraintsWidgets":I
    :goto_f
    const/4 v0, 0x0

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v2, v13

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move v4, v14

    move-object v14, v7

    .end local v5    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v7    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingTop":I
    .local v0, "i":I
    .local v2, "maxWidth":I
    .local v4, "maxHeight":I
    .local v11, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v12, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v13, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v14, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v15, "paddingLeft":I
    .local v16, "paddingTop":I
    .local v17, "paddingRight":I
    .local v18, "paddingBottom":I
    :goto_10
    if-ge v0, v3, :cond_1a

    .line 1045
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1046
    .local v9, "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    if-nez p3, :cond_17

    .line 1047
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_15

    .line 1048
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1049
    .local v5, "next":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1050
    .end local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 1051
    .end local v18    # "paddingBottom":I
    .local v5, "paddingBottom":I
    move/from16 v18, v5

    move-object v14, v6

    goto :goto_11

    .line 1052
    .end local v5    # "paddingBottom":I
    .end local v6    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v18    # "paddingBottom":I
    :cond_15
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1053
    .end local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v6    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    move-result v5

    move/from16 v18, v5

    move-object v14, v6

    .line 1055
    .end local v6    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v14    # "bottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_11
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1056
    .local v5, "currentBottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v10, p3

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1058
    move-object v6, v5

    .line 1059
    .end local v12    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    .line 1060
    .end local v16    # "paddingTop":I
    .local v7, "paddingTop":I
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1061
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v10

    add-int/2addr v4, v10

    .line 1062
    if-lez v0, :cond_16

    .line 1063
    iget v10, v1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v4, v10

    .line 1065
    .end local v5    # "currentBottom":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :cond_16
    move-object v12, v6

    move/from16 v16, v7

    goto :goto_13

    .line 1066
    .end local v6    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v7    # "paddingTop":I
    .restart local v12    # "top":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v16    # "paddingTop":I
    :cond_17
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_18

    .line 1067
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1068
    .local v5, "next":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1069
    .end local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 1070
    .end local v17    # "paddingRight":I
    .local v5, "paddingRight":I
    move/from16 v17, v5

    move-object v13, v6

    goto :goto_12

    .line 1071
    .end local v5    # "paddingRight":I
    .end local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v17    # "paddingRight":I
    :cond_18
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1072
    .end local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    move-result v5

    move/from16 v17, v5

    move-object v13, v6

    .line 1074
    .end local v6    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v13    # "right":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :goto_12
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1075
    .local v5, "currentRight":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    move/from16 v10, p3

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1077
    move-object v6, v5

    .line 1078
    .end local v11    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .local v6, "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    .line 1079
    .end local v15    # "paddingLeft":I
    .local v7, "paddingLeft":I
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    add-int/2addr v2, v10

    .line 1080
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1081
    if-lez v0, :cond_19

    .line 1082
    iget v10, v1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v2, v10

    move-object v11, v6

    move v15, v7

    goto :goto_13

    .line 1081
    :cond_19
    move-object v11, v6

    move v15, v7

    .line 1044
    .end local v5    # "currentRight":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v6    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .end local v7    # "paddingLeft":I
    .end local v9    # "current":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .restart local v11    # "left":Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .restart local v15    # "paddingLeft":I
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 1086
    .end local v0    # "i":I
    :cond_1a
    aput v2, p5, v20

    .line 1087
    aput v4, p5, v21

    .line 1088
    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .locals 22
    .param p1, "widgets"    # [Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 1103
    move-object/from16 v1, p0

    move/from16 v8, p2

    if-nez v8, :cond_0

    .line 1104
    return-void

    .line 1106
    :cond_0
    const/4 v9, 0x0

    .line 1107
    .local v9, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 1108
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1109
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1111
    .end local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .restart local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :cond_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1112
    .end local v9    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .local v11, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->clear()V

    .line 1113
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1114
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    move-result v17

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    move-result v18

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    move-result v19

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    move-result v20

    .line 1113
    move/from16 v12, p3

    move/from16 v21, p4

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v21}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    move-object v0, v11

    .line 1117
    .end local v11    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 1118
    aget-object v3, p1, v2

    .line 1119
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1117
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1122
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v2

    aput v2, p5, v10

    .line 1123
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p5, v3

    .line 1124
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 7
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "optimize"    # Z

    .line 1392
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 1394
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1395
    .local v0, "isInRtl":Z
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_5

    .line 1415
    :pswitch_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1416
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 1417
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1418
    .local v5, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    add-int/lit8 v6, v3, -0x1

    if-ne v4, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v0, v4, v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1416
    .end local v5    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1411
    .end local v3    # "count":I
    .end local v4    # "i":I
    :pswitch_1
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/Flow;->createAlignedConstraints(Z)V

    .line 1413
    goto :goto_5

    .line 1397
    :pswitch_2
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1398
    .restart local v3    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 1399
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1400
    .restart local v5    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    add-int/lit8 v6, v3, -0x1

    if-ne v4, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v0, v4, v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1398
    .end local v5    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1402
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_3
    goto :goto_5

    .line 1404
    :pswitch_3
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1405
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1406
    .local v3, "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    invoke-virtual {v3, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1407
    .end local v3    # "list":Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    nop

    .line 1422
    :cond_4
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 1423
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "src"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 87
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow;

    .line 89
    .local v0, "srcFLow":Landroidx/constraintlayout/core/widgets/Flow;
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 90
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 91
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    .line 92
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    .line 93
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    .line 94
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    .line 96
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 97
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 98
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    .line 99
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    .line 100
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    .line 101
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    .line 103
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    .line 104
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    .line 106
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 107
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 108
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 110
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    .line 112
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 113
    return-void
.end method

.method public getMaxElementsWrap()F
    .locals 1

    .line 174
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    int-to-float v0, v0

    return v0
.end method

.method public measure(IIII)V
    .locals 24
    .param p1, "widthMode"    # I
    .param p2, "widthSize"    # I
    .param p3, "heightMode"    # I
    .param p4, "heightSize"    # I

    .line 231
    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    const/4 v10, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->measureChildren()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v0, v10, v10}, Landroidx/constraintlayout/core/widgets/Flow;->setMeasure(II)V

    .line 233
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 234
    return-void

    .line 237
    :cond_0
    const/4 v11, 0x0

    .line 238
    .local v11, "width":I
    const/4 v12, 0x0

    .line 239
    .local v12, "height":I
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    move-result v13

    .line 240
    .local v13, "paddingLeft":I
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    move-result v14

    .line 241
    .local v14, "paddingRight":I
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    move-result v15

    .line 242
    .local v15, "paddingTop":I
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    move-result v16

    .line 244
    .local v16, "paddingBottom":I
    const/4 v1, 0x2

    new-array v5, v1, [I

    .line 245
    .local v5, "measured":[I
    sub-int v1, v7, v13

    sub-int/2addr v1, v14

    .line 246
    .local v1, "max":I
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 247
    sub-int v2, v9, v15

    sub-int v1, v2, v16

    move v4, v1

    goto :goto_0

    .line 246
    :cond_1
    move v4, v1

    .line 250
    .end local v1    # "max":I
    .local v4, "max":I
    :goto_0
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    const/4 v2, -0x1

    if-nez v1, :cond_3

    .line 251
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v2, :cond_2

    .line 252
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 254
    :cond_2
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v2, :cond_5

    .line 255
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    goto :goto_1

    .line 258
    :cond_3
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v2, :cond_4

    .line 259
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 261
    :cond_4
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v2, :cond_5

    .line 262
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 266
    :cond_5
    :goto_1
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 268
    .local v1, "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 269
    .local v2, "gone":I
    const/16 v17, 0x0

    move/from16 v23, v17

    move/from16 v17, v2

    move/from16 v2, v23

    .local v2, "i":I
    .local v17, "gone":I
    :goto_2
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    const/16 v19, 0x0

    const/16 v10, 0x8

    if-ge v2, v3, :cond_7

    .line 270
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    .line 271
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .end local v1    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v20, "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_6

    .line 272
    add-int/lit8 v17, v17, 0x1

    .line 269
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v20

    const/4 v3, 0x1

    const/4 v10, 0x0

    goto :goto_2

    .end local v20    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v1    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_7
    move-object/from16 v20, v1

    .line 275
    .end local v1    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v2    # "i":I
    .restart local v20    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    .line 276
    .local v1, "count":I
    if-lez v17, :cond_a

    .line 277
    iget v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    sub-int v2, v2, v17

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 278
    .end local v20    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v2, "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 279
    .local v3, "j":I
    const/16 v20, 0x0

    move/from16 v10, v20

    .local v10, "i":I
    :goto_3
    move/from16 v21, v1

    .end local v1    # "count":I
    .local v21, "count":I
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    if-ge v10, v1, :cond_9

    .line 280
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v10

    .line 281
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move-object/from16 v20, v1

    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v20, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    move-object/from16 v22, v2

    const/16 v2, 0x8

    .end local v2    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v22, "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eq v1, v2, :cond_8

    .line 282
    aput-object v20, v22, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    .line 279
    .end local v20    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v21

    move-object/from16 v2, v22

    goto :goto_3

    .end local v22    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v2    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_9
    move-object/from16 v22, v2

    .line 286
    .end local v2    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v10    # "i":I
    .restart local v22    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move v1, v3

    move v2, v1

    move-object/from16 v1, v22

    .end local v21    # "count":I
    .local v1, "count":I
    goto :goto_4

    .line 276
    .end local v3    # "j":I
    .end local v22    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v20, "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_a
    move/from16 v21, v1

    .end local v1    # "count":I
    .restart local v21    # "count":I
    move-object/from16 v1, v20

    move/from16 v2, v21

    .line 288
    .end local v20    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v21    # "count":I
    .local v1, "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .local v2, "count":I
    :goto_4
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 289
    iput v2, v0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 290
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    packed-switch v3, :pswitch_data_0

    const/16 v18, 0x1

    goto :goto_5

    .line 304
    :pswitch_0
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    const/16 v18, 0x1

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    goto :goto_5

    .line 292
    :pswitch_1
    const/16 v18, 0x1

    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 294
    goto :goto_5

    .line 296
    :pswitch_2
    const/16 v18, 0x1

    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 298
    goto :goto_5

    .line 300
    :pswitch_3
    const/16 v18, 0x1

    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    .line 302
    nop

    .line 310
    :goto_5
    aget v3, v5, v19

    add-int/2addr v3, v13

    add-int/2addr v3, v14

    .line 311
    .end local v11    # "width":I
    .local v3, "width":I
    aget v10, v5, v18

    add-int/2addr v10, v15

    add-int v10, v10, v16

    .line 313
    .end local v12    # "height":I
    .local v10, "height":I
    const/4 v11, 0x0

    .line 314
    .local v11, "measuredWidth":I
    const/4 v12, 0x0

    .line 316
    .local v12, "measuredHeight":I
    move-object/from16 v20, v1

    .end local v1    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v20    # "widgets":[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v6, v1, :cond_b

    .line 317
    move/from16 v11, p2

    goto :goto_6

    .line 318
    :cond_b
    const/high16 v1, -0x80000000

    if-ne v6, v1, :cond_c

    .line 319
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_6

    .line 320
    :cond_c
    if-nez v6, :cond_d

    .line 321
    move v11, v3

    .line 324
    :cond_d
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v8, v1, :cond_e

    .line 325
    move/from16 v12, p4

    goto :goto_7

    .line 326
    :cond_e
    const/high16 v1, -0x80000000

    if-ne v8, v1, :cond_f

    .line 327
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_7

    .line 328
    :cond_f
    if-nez v8, :cond_10

    .line 329
    move v12, v10

    .line 332
    :cond_10
    :goto_7
    invoke-virtual {v0, v11, v12}, Landroidx/constraintlayout/core/widgets/Flow;->setMeasure(II)V

    .line 333
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/Flow;->setWidth(I)V

    .line 334
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/widgets/Flow;->setHeight(I)V

    .line 335
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 336
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFirstHorizontalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 147
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 123
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 149
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 125
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 0
    .param p1, "value"    # I

    .line 156
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    .line 157
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 140
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    .line 141
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0
    .param p1, "value"    # I

    .line 167
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 132
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    .line 133
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 151
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 127
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 153
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 129
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 0
    .param p1, "value"    # I

    .line 171
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "value"    # I

    .line 120
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    .line 121
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 0
    .param p1, "value"    # I

    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    .line 161
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 144
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    .line 145
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 0
    .param p1, "value"    # I

    .line 169
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 136
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    .line 137
    return-void
.end method

.method public setWrapMode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 164
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    .line 165
    return-void
.end method

.class public Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 1
    .param p1, "constraintWidgetContainer"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 71
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 72
    return-void
.end method

.method private measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .locals 8
    .param p1, "measurer"    # Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p3, "measureStrategy"    # I

    .line 443
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 445
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 446
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 448
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 450
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 451
    .local v0, "horizontalMatchConstraints":Z
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 452
    .local v2, "verticalMatchConstraints":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 453
    .local v5, "horizontalUseRatio":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 455
    .local v4, "verticalUseRatio":Z
    :goto_3
    const/4 v6, 0x4

    if-eqz v5, :cond_4

    .line 456
    iget-object v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v7, v1

    if-ne v1, v6, :cond_4

    .line 457
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 460
    :cond_4
    if-eqz v4, :cond_5

    .line 461
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v1, v3

    if-ne v1, v6, :cond_5

    .line 462
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 466
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 467
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 468
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 469
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 470
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 471
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    iput v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 472
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 13
    .param p1, "layout"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 75
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, "childCount":I
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

    .line 77
    .local v1, "optimize":Z
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    .line 78
    .local v2, "measurer":Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_b

    .line 79
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 80
    .local v4, "child":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v5, :cond_0

    .line 81
    goto/16 :goto_1

    .line 83
    :cond_0
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v5, :cond_1

    .line 84
    goto/16 :goto_1

    .line 86
    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    goto/16 :goto_1

    .line 90
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_3

    .line 93
    goto/16 :goto_1

    .line 96
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 97
    .local v6, "widthBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    .line 99
    .local v8, "heightBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v9, :cond_4

    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v9, v7, :cond_4

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_4

    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v9, v7, :cond_4

    const/4 v5, 0x1

    .line 104
    .local v5, "skip":Z
    :cond_4
    if-nez v5, :cond_8

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    if-eqz v7, :cond_8

    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v7, :cond_8

    .line 106
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v7, :cond_5

    .line 109
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_5

    .line 110
    const/4 v5, 0x1

    .line 113
    :cond_5
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_6

    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_6

    .line 116
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-nez v7, :cond_6

    .line 117
    const/4 v5, 0x1

    .line 121
    :cond_6
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_8

    :cond_7
    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_8

    .line 124
    const/4 v5, 0x1

    .line 128
    :cond_8
    if-eqz v5, :cond_9

    .line 131
    goto :goto_1

    .line 134
    :cond_9
    sget v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-direct {p0, v2, v4, v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    .line 135
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v7, :cond_a

    .line 136
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v9, v7, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v7, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    .line 78
    .end local v4    # "child":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v5    # "skip":Z
    .end local v6    # "widthBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v8    # "heightBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 139
    .end local v3    # "i":I
    :cond_b
    invoke-interface {v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 140
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V
    .locals 3
    .param p1, "layout"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "pass"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .line 148
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    .line 149
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    .line 150
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 151
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 152
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 153
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 154
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 155
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 159
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setPass(I)V

    .line 160
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    .line 165
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 34
    .param p1, "layout"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v9

    .line 187
    .local v9, "measurer":Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    const-wide/16 v10, 0x0

    .line 189
    .local v10, "layoutTime":J
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 190
    .local v12, "childCount":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    .line 191
    .local v4, "startingWidth":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    .line 193
    .local v5, "startingHeight":I
    const/16 v2, 0x80

    invoke-static {v6, v2}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v13

    .line 194
    .local v13, "optimizeWrap":Z
    if-nez v13, :cond_1

    const/16 v2, 0x40

    invoke-static {v6, v2}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 196
    .local v2, "optimize":Z
    :goto_1
    if-eqz v2, :cond_b

    .line 197
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v12, :cond_a

    .line 198
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 199
    .local v15, "child":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    move/from16 v18, v2

    .end local v2    # "optimize":Z
    .local v18, "optimize":Z
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 200
    .local v2, "matchWidth":Z
    :goto_3
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    move/from16 v19, v2

    .end local v2    # "matchWidth":Z
    .local v19, "matchWidth":Z
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    .line 201
    .local v2, "matchHeight":Z
    :goto_4
    if-eqz v19, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/16 v20, 0x0

    cmpl-float v14, v14, v20

    if-lez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    .line 202
    .local v14, "ratio":Z
    :goto_5
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v20

    if-eqz v20, :cond_5

    if-eqz v14, :cond_5

    .line 203
    const/16 v18, 0x0

    .line 204
    move/from16 v2, v18

    goto :goto_8

    .line 206
    :cond_5
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v20

    if-eqz v20, :cond_6

    if-eqz v14, :cond_6

    .line 207
    const/16 v18, 0x0

    .line 208
    move/from16 v2, v18

    goto :goto_8

    .line 210
    :cond_6
    move/from16 v20, v2

    .end local v2    # "matchHeight":Z
    .local v20, "matchHeight":Z
    instance-of v2, v15, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v2, :cond_7

    .line 211
    const/4 v2, 0x0

    .line 212
    .end local v18    # "optimize":Z
    .local v2, "optimize":Z
    goto :goto_8

    .line 214
    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    :cond_7
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9

    .line 215
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 197
    .end local v14    # "ratio":Z
    .end local v15    # "child":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v19    # "matchWidth":Z
    .end local v20    # "matchHeight":Z
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v18

    goto :goto_2

    .line 216
    .restart local v14    # "ratio":Z
    .restart local v15    # "child":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v19    # "matchWidth":Z
    .restart local v20    # "matchHeight":Z
    :cond_9
    :goto_6
    const/4 v2, 0x0

    .line 217
    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    goto :goto_8

    .line 197
    .end local v14    # "ratio":Z
    .end local v15    # "child":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v19    # "matchWidth":Z
    .end local v20    # "matchHeight":Z
    :cond_a
    move/from16 v18, v2

    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    goto :goto_7

    .line 196
    .end local v3    # "i":I
    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    :cond_b
    move/from16 v18, v2

    .line 222
    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    :goto_7
    move/from16 v2, v18

    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    :goto_8
    if-eqz v2, :cond_c

    sget-object v3, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v3, :cond_c

    .line 223
    sget-object v3, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    const-wide/16 v18, 0x1

    iget-wide v14, v3, Landroidx/constraintlayout/core/Metrics;->measures:J

    add-long v14, v14, v18

    iput-wide v14, v3, Landroidx/constraintlayout/core/Metrics;->measures:J

    goto :goto_9

    .line 222
    :cond_c
    const-wide/16 v18, 0x1

    .line 226
    :goto_9
    const/4 v3, 0x0

    .line 228
    .local v3, "allSolved":Z
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v7, v14, :cond_d

    if-eq v8, v14, :cond_e

    :cond_d
    if-eqz v13, :cond_f

    :cond_e
    const/4 v15, 0x1

    goto :goto_a

    :cond_f
    const/4 v15, 0x0

    :goto_a
    and-int/2addr v15, v2

    .line 230
    .end local v2    # "optimize":Z
    .local v15, "optimize":Z
    const/4 v2, 0x0

    .line 232
    .local v2, "computations":I
    if-eqz v15, :cond_18

    .line 236
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v14

    move/from16 v21, v2

    move/from16 v2, p6

    .end local v2    # "computations":I
    .local v21, "computations":I
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 237
    .end local p6    # "widthSize":I
    .local v2, "widthSize":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v14

    move/from16 v22, v3

    move/from16 v3, p8

    .end local v3    # "allSolved":Z
    .local v22, "allSolved":Z
    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 239
    .end local p8    # "heightSize":I
    .local v3, "heightSize":I
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v7, v14, :cond_10

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v14

    if-eq v14, v2, :cond_10

    .line 240
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 241
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 243
    :cond_10
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v8, v14, :cond_11

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    if-eq v14, v3, :cond_11

    .line 244
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 245
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 247
    :cond_11
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v7, v14, :cond_12

    if-ne v8, v14, :cond_12

    .line 248
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v14

    .line 249
    .end local v22    # "allSolved":Z
    .local v14, "allSolved":Z
    const/16 v21, 0x2

    move/from16 p6, v2

    move/from16 p8, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_c

    .line 251
    .end local v14    # "allSolved":Z
    .restart local v22    # "allSolved":Z
    :cond_12
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v14

    .line 252
    .end local v22    # "allSolved":Z
    .restart local v14    # "allSolved":Z
    move/from16 p6, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "widthSize":I
    .restart local p6    # "widthSize":I
    if-ne v7, v2, :cond_13

    .line 253
    move/from16 p8, v3

    const/4 v3, 0x0

    .end local v3    # "heightSize":I
    .restart local p8    # "heightSize":I
    invoke-virtual {v1, v13, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v14, v14, v17

    .line 254
    add-int/lit8 v17, v21, 0x1

    move/from16 v21, v17

    .end local v21    # "computations":I
    .local v17, "computations":I
    goto :goto_b

    .line 252
    .end local v17    # "computations":I
    .end local p8    # "heightSize":I
    .restart local v3    # "heightSize":I
    .restart local v21    # "computations":I
    :cond_13
    move/from16 p8, v3

    const/4 v3, 0x0

    .line 256
    .end local v3    # "heightSize":I
    .restart local p8    # "heightSize":I
    :goto_b
    if-ne v8, v2, :cond_14

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v1, v13, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v16

    and-int v14, v14, v16

    .line 258
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 256
    :cond_14
    const/4 v2, 0x1

    .line 261
    :goto_c
    if-eqz v14, :cond_17

    .line 262
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v7, v2, :cond_15

    const/4 v3, 0x1

    :cond_15
    if-ne v8, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v3, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 275
    :cond_17
    move/from16 v22, v14

    const/16 v16, 0x1

    move/from16 v14, p6

    move/from16 v20, p8

    move/from16 v2, v21

    goto :goto_e

    .line 232
    .end local v14    # "allSolved":Z
    .end local v21    # "computations":I
    .local v2, "computations":I
    .local v3, "allSolved":Z
    :cond_18
    move/from16 v21, v2

    move/from16 v22, v3

    const/16 v16, 0x1

    move/from16 v2, p6

    .end local v2    # "computations":I
    .end local v3    # "allSolved":Z
    .restart local v21    # "computations":I
    .restart local v22    # "allSolved":Z
    move v14, v2

    move/from16 v20, p8

    move/from16 v2, v21

    .line 275
    .end local v21    # "computations":I
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .restart local v2    # "computations":I
    .local v14, "widthSize":I
    .local v20, "heightSize":I
    :goto_e
    if-eqz v22, :cond_1a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    goto :goto_f

    :cond_19
    move/from16 v21, v2

    move v0, v4

    move-wide/from16 v25, v10

    move/from16 v27, v12

    move/from16 v28, v13

    goto/16 :goto_21

    .line 276
    :cond_1a
    :goto_f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v3

    .line 277
    .local v3, "optimizations":I
    if-lez v12, :cond_1b

    .line 278
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 284
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 287
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 290
    .local v1, "sizeDependentWidgetsCount":I
    if-lez v12, :cond_1c

    .line 291
    move/from16 v21, v2

    .end local v2    # "computations":I
    .restart local v21    # "computations":I
    const-string v2, "First pass"

    move/from16 v23, v3

    .end local v3    # "optimizations":I
    .local v23, "optimizations":I
    const/4 v3, 0x0

    move v7, v1

    move/from16 v6, v23

    const/16 v17, 0x0

    move-object/from16 v1, p1

    .end local v1    # "sizeDependentWidgetsCount":I
    .end local v23    # "optimizations":I
    .local v6, "optimizations":I
    .local v7, "sizeDependentWidgetsCount":I
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    goto :goto_10

    .line 290
    .end local v6    # "optimizations":I
    .end local v7    # "sizeDependentWidgetsCount":I
    .end local v21    # "computations":I
    .restart local v1    # "sizeDependentWidgetsCount":I
    .restart local v2    # "computations":I
    .restart local v3    # "optimizations":I
    :cond_1c
    move v7, v1

    move/from16 v21, v2

    move v6, v3

    const/16 v17, 0x0

    move-object/from16 v1, p1

    .line 298
    .end local v1    # "sizeDependentWidgetsCount":I
    .end local v2    # "computations":I
    .end local v3    # "optimizations":I
    .restart local v6    # "optimizations":I
    .restart local v7    # "sizeDependentWidgetsCount":I
    .restart local v21    # "computations":I
    :goto_10
    if-lez v7, :cond_36

    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "needSolverPass":Z
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    move/from16 p6, v2

    .end local v2    # "needSolverPass":Z
    .local p6, "needSolverPass":Z
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v2, :cond_1d

    const/4 v3, 0x1

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    :goto_11
    move/from16 v23, v3

    .line 302
    .local v23, "containerWrapWidth":Z
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1e

    goto :goto_12

    :cond_1e
    const/16 v16, 0x0

    .line 304
    .local v16, "containerWrapHeight":Z
    :goto_12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 305
    .local v2, "minWidth":I
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    move/from16 p8, v2

    .end local v2    # "minWidth":I
    .local p8, "minWidth":I
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 310
    .local v2, "minHeight":I
    const/4 v3, 0x0

    move/from16 v33, v3

    move/from16 v3, p8

    move/from16 p8, v4

    move/from16 v4, v33

    .local v3, "minWidth":I
    .local v4, "i":I
    .local p8, "startingWidth":I
    :goto_13
    if-ge v4, v7, :cond_25

    .line 311
    move/from16 v17, v5

    .end local v5    # "startingHeight":I
    .local v17, "startingHeight":I
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 312
    .local v5, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    move/from16 v24, v4

    .end local v4    # "i":I
    .local v24, "i":I
    instance-of v4, v5, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v4, :cond_1f

    .line 313
    move-wide/from16 v25, v10

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v10, p6

    goto/16 :goto_17

    .line 315
    :cond_1f
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 316
    .local v4, "preWidth":I
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    .line 317
    .local v8, "preHeight":I
    move-wide/from16 v25, v10

    .end local v10    # "layoutTime":J
    .local v25, "layoutTime":J
    sget v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    invoke-direct {v0, v9, v5, v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v10

    or-int v10, p6, v10

    .line 318
    .end local p6    # "needSolverPass":Z
    .local v10, "needSolverPass":Z
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v11, :cond_20

    .line 319
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    move/from16 v27, v12

    move/from16 v28, v13

    .end local v12    # "childCount":I
    .end local v13    # "optimizeWrap":Z
    .local v27, "childCount":I
    .local v28, "optimizeWrap":Z
    iget-wide v12, v11, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    add-long v12, v12, v18

    iput-wide v12, v11, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    goto :goto_14

    .line 318
    .end local v27    # "childCount":I
    .end local v28    # "optimizeWrap":Z
    .restart local v12    # "childCount":I
    .restart local v13    # "optimizeWrap":Z
    :cond_20
    move/from16 v27, v12

    move/from16 v28, v13

    .line 321
    .end local v12    # "childCount":I
    .end local v13    # "optimizeWrap":Z
    .restart local v27    # "childCount":I
    .restart local v28    # "optimizeWrap":Z
    :goto_14
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    .line 322
    .local v11, "measuredWidth":I
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    .line 323
    .local v12, "measuredHeight":I
    if-eq v11, v4, :cond_22

    .line 324
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 325
    if-eqz v23, :cond_21

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v13

    if-le v13, v3, :cond_21

    .line 326
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v13

    move/from16 v29, v4

    .end local v4    # "preWidth":I
    .local v29, "preWidth":I
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 327
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v13, v4

    .line 328
    .local v13, "w":I
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_15

    .line 325
    .end local v13    # "w":I
    .end local v29    # "preWidth":I
    .restart local v4    # "preWidth":I
    :cond_21
    move/from16 v29, v4

    .line 330
    .end local v4    # "preWidth":I
    .restart local v29    # "preWidth":I
    :goto_15
    const/4 v10, 0x1

    goto :goto_16

    .line 323
    .end local v29    # "preWidth":I
    .restart local v4    # "preWidth":I
    :cond_22
    move/from16 v29, v4

    .line 332
    .end local v4    # "preWidth":I
    .restart local v29    # "preWidth":I
    :goto_16
    if-eq v12, v8, :cond_24

    .line 333
    invoke-virtual {v5, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 334
    if-eqz v16, :cond_23

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v4

    if-le v4, v2, :cond_23

    .line 335
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v4

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 336
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v4, v13

    .line 337
    .local v4, "h":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 339
    .end local v4    # "h":I
    :cond_23
    const/4 v10, 0x1

    .line 341
    :cond_24
    move-object v4, v5

    check-cast v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 342
    .local v4, "virtualLayout":Landroidx/constraintlayout/core/widgets/VirtualLayout;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needSolverPass()Z

    move-result v13

    or-int/2addr v10, v13

    .line 310
    .end local v4    # "virtualLayout":Landroidx/constraintlayout/core/widgets/VirtualLayout;
    .end local v5    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v8    # "preHeight":I
    .end local v11    # "measuredWidth":I
    .end local v12    # "measuredHeight":I
    .end local v29    # "preWidth":I
    :goto_17
    add-int/lit8 v4, v24, 0x1

    move/from16 v8, p7

    move/from16 p6, v10

    move/from16 v5, v17

    move-wide/from16 v10, v25

    move/from16 v12, v27

    move/from16 v13, v28

    .end local v24    # "i":I
    .local v4, "i":I
    goto/16 :goto_13

    .end local v17    # "startingHeight":I
    .end local v25    # "layoutTime":J
    .end local v27    # "childCount":I
    .end local v28    # "optimizeWrap":Z
    .local v5, "startingHeight":I
    .local v10, "layoutTime":J
    .local v12, "childCount":I
    .local v13, "optimizeWrap":Z
    .restart local p6    # "needSolverPass":Z
    :cond_25
    move/from16 v24, v4

    move/from16 v17, v5

    move-wide/from16 v25, v10

    move/from16 v27, v12

    move/from16 v28, v13

    .line 346
    .end local v4    # "i":I
    .end local v5    # "startingHeight":I
    .end local v10    # "layoutTime":J
    .end local v12    # "childCount":I
    .end local v13    # "optimizeWrap":Z
    .restart local v17    # "startingHeight":I
    .restart local v25    # "layoutTime":J
    .restart local v27    # "childCount":I
    .restart local v28    # "optimizeWrap":Z
    const/4 v8, 0x2

    .line 347
    .local v8, "maxIterations":I
    const/4 v4, 0x0

    move v10, v4

    move v4, v3

    move v3, v2

    move/from16 v2, p6

    .end local p6    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    .local v3, "minHeight":I
    .local v4, "minWidth":I
    .local v10, "j":I
    :goto_18
    if-ge v10, v8, :cond_35

    .line 348
    const/4 v5, 0x0

    move v11, v2

    move v12, v3

    move v13, v4

    .end local v2    # "needSolverPass":Z
    .end local v3    # "minHeight":I
    .end local v4    # "minWidth":I
    .local v5, "i":I
    .local v11, "needSolverPass":Z
    .local v12, "minHeight":I
    .local v13, "minWidth":I
    :goto_19
    if-ge v5, v7, :cond_33

    .line 349
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 350
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Helper;

    if-eqz v3, :cond_26

    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v3, :cond_2a

    :cond_26
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v3, :cond_27

    .line 351
    goto :goto_1a

    .line 353
    :cond_27
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_28

    .line 354
    goto :goto_1a

    .line 356
    :cond_28
    if-eqz v15, :cond_29

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v3, :cond_29

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v3, :cond_29

    .line 358
    goto :goto_1a

    .line 360
    :cond_29
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v3, :cond_2b

    .line 361
    nop

    .line 348
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2a
    :goto_1a
    move/from16 v24, v5

    move/from16 p6, v7

    move/from16 v30, v8

    goto/16 :goto_1f

    .line 364
    .restart local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 365
    .local v3, "preWidth":I
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 366
    .local v4, "preHeight":I
    move/from16 v24, v5

    .end local v5    # "i":I
    .restart local v24    # "i":I
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    .line 368
    .local v5, "preBaselineDistance":I
    sget v29, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 369
    .local v29, "measureStrategy":I
    move/from16 p6, v7

    .end local v7    # "sizeDependentWidgetsCount":I
    .local p6, "sizeDependentWidgetsCount":I
    add-int/lit8 v7, v8, -0x1

    if-ne v10, v7, :cond_2c

    .line 370
    sget v29, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    move/from16 v7, v29

    goto :goto_1b

    .line 369
    :cond_2c
    move/from16 v7, v29

    .line 372
    .end local v29    # "measureStrategy":I
    .local v7, "measureStrategy":I
    :goto_1b
    invoke-direct {v0, v9, v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v29

    .line 376
    .local v29, "hasMeasure":Z
    or-int v11, v11, v29

    .line 380
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_2d

    .line 381
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    move/from16 v31, v7

    move/from16 v30, v8

    .end local v7    # "measureStrategy":I
    .end local v8    # "maxIterations":I
    .local v30, "maxIterations":I
    .local v31, "measureStrategy":I
    iget-wide v7, v0, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    add-long v7, v7, v18

    iput-wide v7, v0, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    goto :goto_1c

    .line 380
    .end local v30    # "maxIterations":I
    .end local v31    # "measureStrategy":I
    .restart local v7    # "measureStrategy":I
    .restart local v8    # "maxIterations":I
    :cond_2d
    move/from16 v31, v7

    move/from16 v30, v8

    .line 384
    .end local v7    # "measureStrategy":I
    .end local v8    # "maxIterations":I
    .restart local v30    # "maxIterations":I
    .restart local v31    # "measureStrategy":I
    :goto_1c
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    .line 385
    .local v0, "measuredWidth":I
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    .line 387
    .local v7, "measuredHeight":I
    if-eq v0, v3, :cond_2f

    .line 388
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 389
    if-eqz v23, :cond_2e

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v8

    if-le v8, v13, :cond_2e

    .line 390
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v8

    move/from16 v32, v0

    .end local v0    # "measuredWidth":I
    .local v32, "measuredWidth":I
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 391
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr v8, v0

    .line 392
    .local v8, "w":I
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1d

    .line 389
    .end local v8    # "w":I
    .end local v32    # "measuredWidth":I
    .restart local v0    # "measuredWidth":I
    :cond_2e
    move/from16 v32, v0

    .line 397
    .end local v0    # "measuredWidth":I
    .restart local v32    # "measuredWidth":I
    :goto_1d
    const/4 v11, 0x1

    goto :goto_1e

    .line 387
    .end local v32    # "measuredWidth":I
    .restart local v0    # "measuredWidth":I
    :cond_2f
    move/from16 v32, v0

    .line 399
    .end local v0    # "measuredWidth":I
    .restart local v32    # "measuredWidth":I
    :goto_1e
    if-eq v7, v4, :cond_31

    .line 400
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 401
    if-eqz v16, :cond_30

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    if-le v0, v12, :cond_30

    .line 402
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 403
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int/2addr v0, v8

    .line 404
    .local v0, "h":I
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v12, v8

    .line 409
    .end local v0    # "h":I
    :cond_30
    const/4 v11, 0x1

    .line 411
    :cond_31
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    if-eq v5, v0, :cond_32

    .line 415
    const/4 v0, 0x1

    move v11, v0

    .line 348
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v3    # "preWidth":I
    .end local v4    # "preHeight":I
    .end local v5    # "preBaselineDistance":I
    .end local v7    # "measuredHeight":I
    .end local v29    # "hasMeasure":Z
    .end local v31    # "measureStrategy":I
    .end local v32    # "measuredWidth":I
    :cond_32
    :goto_1f
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v0, p0

    move/from16 v7, p6

    move/from16 v8, v30

    .end local v24    # "i":I
    .local v5, "i":I
    goto/16 :goto_19

    .end local v30    # "maxIterations":I
    .end local p6    # "sizeDependentWidgetsCount":I
    .local v7, "sizeDependentWidgetsCount":I
    .local v8, "maxIterations":I
    :cond_33
    move/from16 v24, v5

    move/from16 p6, v7

    move/from16 v30, v8

    .line 418
    .end local v5    # "i":I
    .end local v7    # "sizeDependentWidgetsCount":I
    .end local v8    # "maxIterations":I
    .restart local v30    # "maxIterations":I
    .restart local p6    # "sizeDependentWidgetsCount":I
    if-eqz v11, :cond_34

    .line 419
    add-int/lit8 v3, v10, 0x1

    const-string v2, "intermediate pass"

    move-object/from16 v0, p0

    move/from16 v4, p8

    move/from16 v5, v17

    .end local v17    # "startingHeight":I
    .end local p8    # "startingWidth":I
    .local v4, "startingWidth":I
    .local v5, "startingHeight":I
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    .line 420
    move v0, v4

    .end local v4    # "startingWidth":I
    .local v0, "startingWidth":I
    const/4 v2, 0x0

    .line 347
    .end local v11    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p6

    move/from16 p8, v0

    move v3, v12

    move v4, v13

    move/from16 v8, v30

    move-object/from16 v0, p0

    goto/16 :goto_18

    .line 418
    .end local v0    # "startingWidth":I
    .end local v2    # "needSolverPass":Z
    .end local v5    # "startingHeight":I
    .restart local v11    # "needSolverPass":Z
    .restart local v17    # "startingHeight":I
    .restart local p8    # "startingWidth":I
    :cond_34
    move/from16 v0, p8

    move/from16 v5, v17

    .end local v17    # "startingHeight":I
    .end local p8    # "startingWidth":I
    .restart local v0    # "startingWidth":I
    .restart local v5    # "startingHeight":I
    goto :goto_20

    .line 347
    .end local v0    # "startingWidth":I
    .end local v5    # "startingHeight":I
    .end local v11    # "needSolverPass":Z
    .end local v12    # "minHeight":I
    .end local v13    # "minWidth":I
    .end local v30    # "maxIterations":I
    .end local p6    # "sizeDependentWidgetsCount":I
    .restart local v2    # "needSolverPass":Z
    .local v3, "minHeight":I
    .local v4, "minWidth":I
    .restart local v7    # "sizeDependentWidgetsCount":I
    .restart local v8    # "maxIterations":I
    .restart local v17    # "startingHeight":I
    .restart local p8    # "startingWidth":I
    :cond_35
    move/from16 v0, p8

    move/from16 p6, v7

    move/from16 v30, v8

    move/from16 v5, v17

    .end local v7    # "sizeDependentWidgetsCount":I
    .end local v8    # "maxIterations":I
    .end local v17    # "startingHeight":I
    .end local p8    # "startingWidth":I
    .restart local v0    # "startingWidth":I
    .restart local v5    # "startingHeight":I
    .restart local v30    # "maxIterations":I
    .restart local p6    # "sizeDependentWidgetsCount":I
    goto :goto_20

    .line 298
    .end local v0    # "startingWidth":I
    .end local v2    # "needSolverPass":Z
    .end local v3    # "minHeight":I
    .end local v16    # "containerWrapHeight":Z
    .end local v23    # "containerWrapWidth":Z
    .end local v25    # "layoutTime":J
    .end local v27    # "childCount":I
    .end local v28    # "optimizeWrap":Z
    .end local v30    # "maxIterations":I
    .end local p6    # "sizeDependentWidgetsCount":I
    .local v4, "startingWidth":I
    .restart local v7    # "sizeDependentWidgetsCount":I
    .local v10, "layoutTime":J
    .local v12, "childCount":I
    .local v13, "optimizeWrap":Z
    :cond_36
    move v0, v4

    move/from16 p6, v7

    move-wide/from16 v25, v10

    move/from16 v27, v12

    move/from16 v28, v13

    .line 426
    .end local v4    # "startingWidth":I
    .end local v7    # "sizeDependentWidgetsCount":I
    .end local v10    # "layoutTime":J
    .end local v12    # "childCount":I
    .end local v13    # "optimizeWrap":Z
    .restart local v0    # "startingWidth":I
    .restart local v25    # "layoutTime":J
    .restart local v27    # "childCount":I
    .restart local v28    # "optimizeWrap":Z
    .restart local p6    # "sizeDependentWidgetsCount":I
    :goto_20
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 431
    .end local v6    # "optimizations":I
    .end local p6    # "sizeDependentWidgetsCount":I
    :goto_21
    return-wide v25
.end method

.method public updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 5
    .param p1, "layout"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 59
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 60
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    .line 62
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 66
    return-void
.end method

.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a


# instance fields
.field private cradleVerticalOffset:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "fabMargin"    # F
    .param p2, "roundedCornerRadius"    # F
    .param p3, "cradleVerticalOffset"    # F

    .line 56
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 58
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 59
    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 61
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_0

    .line 64
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 65
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cradleVerticalOffset must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .locals 1

    .line 163
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 25
    .param p1, "length"    # F
    .param p2, "interpolation"    # F
    .param p3, "shapePath"    # Lcom/google/android/material/shape/ShapePath;

    .line 69
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    const/4 v9, 0x0

    cmpl-float v3, v3, v9

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 72
    return-void

    .line 75
    :cond_0
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v3, v3, v10

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    add-float v11, v3, v4

    .line 76
    .local v11, "cradleDiameter":F
    div-float v12, v11, v10

    .line 77
    .local v12, "cradleRadius":F
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v13, p2, v3

    .line 78
    .local v13, "roundedCornerOffset":F
    div-float v3, v1, v10

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v14, v3, v4

    .line 82
    .local v14, "middle":F
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v3, v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p2

    mul-float v5, v5, v12

    add-float v15, v3, v5

    .line 84
    .local v15, "verticalOffset":F
    div-float v16, v15, v12

    .line 85
    .local v16, "verticalOffsetRatio":F
    cmpl-float v3, v16, v4

    if-ltz v3, :cond_1

    .line 88
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 89
    return-void

    .line 98
    :cond_1
    add-float v17, v12, v13

    .line 99
    .local v17, "distanceBetweenCenters":F
    mul-float v18, v17, v17

    .line 100
    .local v18, "distanceBetweenCentersSquared":F
    add-float v19, v15, v13

    .line 101
    .local v19, "distanceY":F
    mul-float v3, v19, v19

    sub-float v3, v18, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 104
    .local v3, "distanceX":F
    sub-float v20, v14, v3

    .line 105
    .local v20, "leftRoundedCornerCircleX":F
    add-float v21, v14, v3

    .line 108
    .local v21, "rightRoundedCornerCircleX":F
    div-float v4, v3, v19

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v8, v4

    .line 109
    .local v8, "cornerRadiusArcLength":F
    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v22, v4, v8

    .line 112
    .local v22, "cutoutArcOffset":F
    sub-float v4, v20, v13

    invoke-virtual {v2, v4, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 116
    move v4, v3

    .end local v3    # "distanceX":F
    .local v4, "distanceX":F
    sub-float v3, v20, v13

    add-float v5, v20, v13

    mul-float v6, v13, v10

    const/high16 v7, 0x43870000    # 270.0f

    move/from16 v23, v4

    .end local v4    # "distanceX":F
    .local v23, "distanceX":F
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 125
    move/from16 v24, v8

    .end local v8    # "cornerRadiusArcLength":F
    .local v24, "cornerRadiusArcLength":F
    sub-float v3, v14, v12

    neg-float v2, v12

    sub-float v4, v2, v15

    add-float v5, v14, v12

    sub-float v6, v12, v15

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v7, v2, v22

    mul-float v8, v22, v10

    sub-float/2addr v8, v2

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 135
    sub-float v3, v21, v13

    add-float v5, v21, v13

    mul-float v6, v13, v10

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v24

    const/4 v4, 0x0

    move-object/from16 v2, p3

    move/from16 v8, v24

    .end local v24    # "cornerRadiusArcLength":F
    .restart local v8    # "cornerRadiusArcLength":F
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 144
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 145
    return-void
.end method

.method getFabCradleMargin()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return v0
.end method

.method getFabDiameter()F
    .locals 1

    .line 176
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return v0
.end method

.method getHorizontalOffset()F
    .locals 1

    .line 154
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return v0
.end method

.method setCradleVerticalOffset(F)V
    .locals 0
    .param p1, "cradleVerticalOffset"    # F

    .line 172
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 173
    return-void
.end method

.method setFabCradleMargin(F)V
    .locals 0
    .param p1, "fabMargin"    # F

    .line 188
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 189
    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .locals 0
    .param p1, "roundedCornerRadius"    # F

    .line 196
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 197
    return-void
.end method

.method setFabDiameter(F)V
    .locals 0
    .param p1, "fabDiameter"    # F

    .line 180
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 181
    return-void
.end method

.method setHorizontalOffset(F)V
    .locals 0
    .param p1, "horizontalOffset"    # F

    .line 149
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 150
    return-void
.end method

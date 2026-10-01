.class public Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;
.super Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;,
        Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;,
        Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;
    }
.end annotation


# instance fields
.field public alphaDuration:J

.field public beginAlpha:I

.field public beginX:F

.field public beginY:F

.field private currStateValues:[F

.field public deltaAlpha:I

.field public deltaX:F

.field public deltaY:F

.field public endAlpha:I

.field public endX:F

.field public endY:F

.field public isQuadraticEaseOut:Z

.field public linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

.field private mScaleFactorChangedFlag:I

.field public pivotX:F

.field public pivotY:F

.field public rotateX:F

.field public rotateZ:F

.field public translationDuration:J

.field public translationStartDelay:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentWidth:I

    .line 108
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentHeight:I

    .line 113
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isQuadraticEaseOut:Z

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    return-void
.end method

.method private static final getQuadEaseOutProgress(JJ)F
    .locals 5
    .param p0, "ctime"    # J
    .param p2, "duration"    # J

    .line 249
    long-to-float v0, p0

    .line 251
    .local v0, "t":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 252
    .local v1, "c":F
    long-to-float v2, p2

    .line 253
    .local v2, "d":F
    neg-float v3, v1

    div-float v4, v0, v2

    move v0, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    sub-float v4, v0, v4

    mul-float v3, v3, v4

    return v3
.end method


# virtual methods
.method public getBottom()F
    .locals 2

    .line 273
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 2

    .line 258
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F
    .locals 20
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "currTime"    # J

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isMeasured()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const/4 v1, 0x0

    return-object v1

    .line 151
    :cond_0
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    iget v2, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactorChangedFlag:I

    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentWidth:I

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentHeight:I

    invoke-virtual {v1, v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->isUpdated(III)Z

    move-result v1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    iget v12, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->scaleX:F

    .line 153
    .local v12, "scaleX":F
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    iget v13, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->scaleY:F

    .line 154
    .local v13, "scaleY":F
    iget v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    mul-float v1, v1, v12

    iget v2, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    mul-float v2, v2, v13

    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    mul-float v3, v3, v12

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    mul-float v4, v4, v13

    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    iget-wide v7, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    invoke-virtual/range {v0 .. v8}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->setTranslationData(FFFFJJ)V

    .line 155
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 156
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v1, v1

    .line 157
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v3, v9, [I

    aput v9, v3, v11

    aput v2, v3, v10

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 158
    .local v2, "points":[[F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 159
    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getBeginPoint()[F

    move-result-object v4

    aput-object v4, v2, v3

    .line 160
    add-int/lit8 v4, v3, 0x1

    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getEndPoint()[F

    move-result-object v5

    aput-object v5, v2, v4

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v3    # "j":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 163
    aget-object v4, v2, v3

    aget v5, v4, v10

    mul-float v5, v5, v12

    aput v5, v4, v10

    .line 164
    aget-object v4, v2, v3

    aget v5, v4, v11

    mul-float v5, v5, v13

    aput v5, v4, v11

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->setLinePathData([[F)V

    .line 168
    .end local v1    # "length":I
    .end local v2    # "points":[[F
    :cond_3
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->flag:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactorChangedFlag:I

    .line 169
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->width:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentWidth:I

    .line 170
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->height:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentHeight:I

    .line 173
    .end local v12    # "scaleX":F
    .end local v13    # "scaleY":F
    :cond_4
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->getActualTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    .line 176
    .local v1, "deltaTime":J
    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_6

    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    if-eqz v3, :cond_6

    .line 177
    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    cmp-long v7, v1, v3

    if-ltz v7, :cond_5

    .line 178
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endAlpha:I

    iput v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alpha:I

    goto :goto_2

    .line 180
    :cond_5
    long-to-float v3, v1

    iget-wide v7, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    long-to-float v4, v7

    div-float/2addr v3, v4

    .line 181
    .local v3, "alphaProgress":F
    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 182
    .local v4, "vectorAlpha":I
    iget v7, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginAlpha:I

    add-int/2addr v7, v4

    iput v7, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alpha:I

    .line 187
    .end local v3    # "alphaProgress":F
    .end local v4    # "vectorAlpha":I
    :cond_6
    :goto_2
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    .line 188
    .local v3, "currX":F
    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    .line 189
    .local v4, "currY":F
    iget-wide v7, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    sub-long v7, v1, v7

    .line 190
    .local v7, "dtime":J
    iget-wide v12, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    cmp-long v14, v12, v5

    if-lez v14, :cond_e

    cmp-long v12, v7, v5

    if-ltz v12, :cond_e

    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    cmp-long v12, v7, v5

    if-gtz v12, :cond_e

    .line 191
    const/4 v5, 0x0

    .line 192
    .local v5, "tranalationProgress":F
    iget-object v6, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    const/4 v12, 0x0

    if-eqz v6, :cond_b

    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, "currentLinePath":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    iget-object v13, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_8

    const/16 v16, 0x2

    aget-object v9, v13, v15

    .line 195
    .local v9, "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-wide v10, v9, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    cmp-long v19, v7, v10

    if-ltz v19, :cond_7

    iget-wide v10, v9, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    cmp-long v19, v7, v10

    if-gez v19, :cond_7

    .line 196
    move-object v6, v9

    .line 197
    goto :goto_4

    .line 199
    :cond_7
    iget-object v10, v9, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    iget v3, v10, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->x:F

    .line 200
    iget-object v10, v9, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pEnd:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    iget v4, v10, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->y:F

    .line 194
    .end local v9    # "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 203
    :goto_4
    if-eqz v6, :cond_a

    .line 204
    iget v9, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->delatX:F

    .line 205
    .local v9, "deltaX":F
    iget v10, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->deltaY:F

    .line 206
    .local v10, "deltaY":F
    iget-wide v13, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    sub-long v13, v1, v13

    long-to-float v11, v13

    iget-wide v13, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    long-to-float v13, v13

    div-float v5, v11, v13

    .line 207
    iget-object v11, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    iget v11, v11, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->x:F

    .line 208
    .local v11, "beginX":F
    iget-object v13, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->pBegin:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    iget v13, v13, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;->y:F

    .line 209
    .local v13, "beginY":F
    cmpl-float v14, v9, v12

    if-eqz v14, :cond_9

    .line 210
    mul-float v14, v9, v5

    .line 211
    .local v14, "vectorX":F
    add-float v3, v11, v14

    .line 213
    .end local v14    # "vectorX":F
    :cond_9
    cmpl-float v12, v10, v12

    if-eqz v12, :cond_a

    .line 214
    mul-float v12, v10, v5

    .line 215
    .local v12, "vectorY":F
    add-float v4, v13, v12

    .line 218
    .end local v6    # "currentLinePath":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    .end local v9    # "deltaX":F
    .end local v10    # "deltaY":F
    .end local v11    # "beginX":F
    .end local v12    # "vectorY":F
    .end local v13    # "beginY":F
    :cond_a
    goto :goto_6

    .line 219
    :cond_b
    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-boolean v6, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isQuadraticEaseOut:Z

    if-eqz v6, :cond_c

    iget-wide v9, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    invoke-static {v7, v8, v9, v10}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->getQuadEaseOutProgress(JJ)F

    move-result v6

    goto :goto_5

    :cond_c
    long-to-float v6, v7

    iget-wide v9, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    long-to-float v9, v9

    div-float/2addr v6, v9

    .line 220
    .end local v5    # "tranalationProgress":F
    .local v6, "tranalationProgress":F
    :goto_5
    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaX:F

    cmpl-float v5, v5, v12

    if-eqz v5, :cond_d

    .line 221
    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaX:F

    mul-float v5, v5, v6

    .line 222
    .local v5, "vectorX":F
    iget v9, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    add-float v3, v9, v5

    .line 224
    .end local v5    # "vectorX":F
    :cond_d
    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaY:F

    cmpl-float v5, v5, v12

    if-eqz v5, :cond_f

    .line 225
    iget v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaY:F

    mul-float v5, v5, v6

    .line 226
    .local v5, "vectorY":F
    iget v9, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    add-float/2addr v9, v5

    move v4, v9

    .end local v4    # "currY":F
    .local v9, "currY":F
    goto :goto_6

    .line 190
    .end local v5    # "vectorY":F
    .end local v6    # "tranalationProgress":F
    .end local v9    # "currY":F
    .restart local v4    # "currY":F
    :cond_e
    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 229
    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_f

    .line 230
    iget v3, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    .line 231
    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    goto :goto_7

    .line 229
    :cond_f
    :goto_6
    nop

    .line 234
    :goto_7
    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    aput v3, v5, v17

    .line 235
    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    aput v4, v5, v18

    .line 236
    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    iget v6, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->paintWidth:F

    add-float/2addr v6, v3

    aput v6, v5, v16

    .line 237
    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    iget v6, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->paintHeight:F

    add-float/2addr v6, v4

    const/4 v9, 0x3

    aput v6, v5, v9

    .line 239
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isOutside()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->setVisibility(Z)V

    .line 241
    iget-object v5, v0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    return-object v5
.end method

.method public getRight()F
    .locals 2

    .line 268
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTop()F
    .locals 2

    .line 263
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->currStateValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 278
    const/4 v0, 0x7

    return v0
.end method

.method public layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V
    .locals 2
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 142
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->getRectAtTime(Lmaster/flame/danmaku/danmaku/model/IDisplayer;J)[F

    .line 143
    return-void
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V
    .locals 1
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "fromWorkerThread"    # Z

    .line 133
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 134
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentHeight:I

    if-nez v0, :cond_1

    .line 135
    :cond_0
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentWidth:I

    .line 136
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mCurrentHeight:I

    .line 138
    :cond_1
    return-void
.end method

.method public setAlphaData(IIJ)V
    .locals 1
    .param p1, "beginAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "alphaDuration"    # J

    .line 294
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginAlpha:I

    .line 295
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endAlpha:I

    .line 296
    sub-int v0, p2, p1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaAlpha:I

    .line 297
    iput-wide p3, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alphaDuration:J

    .line 298
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    if-eq p1, v0, :cond_0

    .line 299
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->alpha:I

    .line 301
    :cond_0
    return-void
.end method

.method public setLinePathData([[F)V
    .locals 11
    .param p1, "points"    # [[F

    .line 304
    if-eqz p1, :cond_3

    .line 305
    array-length v0, p1

    .line 306
    .local v0, "length":I
    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v2, v2, v1

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    .line 307
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    .line 308
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    aget v2, v2, v1

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    .line 309
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    aget v2, v2, v3

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    .line 310
    array-length v2, p1

    if-le v2, v3, :cond_3

    .line 311
    array-length v2, p1

    sub-int/2addr v2, v3

    new-array v2, v2, [Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    .line 312
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 313
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    new-instance v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    invoke-direct {v5, p0}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;-><init>(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;)V

    aput-object v5, v4, v2

    .line 314
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    aget-object v4, v4, v2

    new-instance v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    aget-object v6, p1, v2

    aget v6, v6, v1

    aget-object v7, p1, v2

    aget v7, v7, v3

    invoke-direct {v5, p0, v6, v7}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;-><init>(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;FF)V

    new-instance v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;

    add-int/lit8 v7, v2, 0x1

    aget-object v7, p1, v7

    aget v7, v7, v1

    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    aget v8, v8, v3

    invoke-direct {v6, p0, v7, v8}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;-><init>(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;FF)V

    invoke-virtual {v4, v5, v6}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->setPoints(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$Point;)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 318
    .local v2, "totalDistance":F
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 319
    .local v6, "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getDistance()F

    move-result v7

    add-float/2addr v2, v7

    .line 318
    .end local v6    # "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 321
    :cond_1
    const/4 v3, 0x0

    .line 322
    .local v3, "lastLine":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->linePaths:[Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;

    array-length v5, v4

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 323
    .restart local v6    # "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->getDistance()F

    move-result v7

    div-float/2addr v7, v2

    iget-wide v8, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    long-to-float v8, v8

    mul-float v7, v7, v8

    float-to-long v7, v7

    iput-wide v7, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    .line 324
    if-nez v3, :cond_2

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_2
    iget-wide v7, v3, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    :goto_3
    iput-wide v7, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    .line 325
    iget-wide v7, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->beginTime:J

    iget-wide v9, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->duration:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;->endTime:J

    .line 326
    move-object v3, v6

    .line 322
    .end local v6    # "line":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 331
    .end local v0    # "length":I
    .end local v2    # "totalDistance":F
    .end local v3    # "lastLine":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$LinePath;
    :cond_3
    return-void
.end method

.method public setScaleFactor(Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;)V
    .locals 1
    .param p1, "scaleFactor"    # Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    .line 334
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactor:Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;

    .line 335
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku$ScaleFactor;->flag:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->mScaleFactorChangedFlag:I

    .line 336
    return-void
.end method

.method public setTranslationData(FFFFJJ)V
    .locals 1
    .param p1, "beginX"    # F
    .param p2, "beginY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F
    .param p5, "translationDuration"    # J
    .param p7, "translationStartDelay"    # J

    .line 283
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    .line 284
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    .line 285
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    .line 286
    iput p4, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    .line 287
    sub-float v0, p3, p1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaX:F

    .line 288
    sub-float v0, p4, p2

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->deltaY:F

    .line 289
    iput-wide p5, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    .line 290
    iput-wide p7, p0, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    .line 291
    return-void
.end method

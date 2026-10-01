.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 40
    .param p0, "s"    # Ljava/lang/String;

    .line 30
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 31
    .local v1, "n":I
    new-instance v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;

    invoke-direct {v2, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    .local v2, "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipWhitespace()V

    .line 33
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v4, v3

    .line 34
    .local v4, "p":Landroid/graphics/Path;
    const/4 v3, 0x0

    .line 35
    .local v3, "lastX":F
    const/4 v5, 0x0

    .line 36
    .local v5, "lastY":F
    const/4 v6, 0x0

    .line 37
    .local v6, "lastX1":F
    const/4 v7, 0x0

    .line 38
    .local v7, "lastY1":F
    const/4 v8, 0x0

    .line 39
    .local v8, "contourInitialX":F
    const/4 v9, 0x0

    .line 40
    .local v9, "contourInitialY":F
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    move-object v11, v10

    .line 41
    .local v11, "r":Landroid/graphics/RectF;
    const/16 v10, 0x78

    move/from16 v21, v5

    move v5, v3

    move v3, v6

    move/from16 v6, v21

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    .line 42
    .end local v7    # "lastY1":F
    .end local v8    # "contourInitialX":F
    .end local v9    # "contourInitialY":F
    .local v3, "lastX1":F
    .local v5, "lastX":F
    .local v6, "lastY":F
    .local v10, "cmd":C
    .local v21, "lastY1":F
    .local v22, "contourInitialX":F
    .local v23, "contourInitialY":F
    :goto_0
    iget v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    if-ge v7, v1, :cond_f

    .line 43
    iget v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 44
    .local v12, "next":C
    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    const/16 v8, 0x6d

    if-nez v7, :cond_0

    const/16 v7, 0x2e

    if-eq v12, v7, :cond_0

    const/16 v7, 0x2d

    if-eq v12, v7, :cond_0

    .line 45
    move v7, v12

    .line 46
    .end local v10    # "cmd":C
    .local v7, "cmd":C
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    move v13, v7

    goto :goto_1

    .line 47
    .end local v7    # "cmd":C
    .restart local v10    # "cmd":C
    :cond_0
    const/16 v7, 0x4d

    if-ne v10, v7, :cond_1

    .line 48
    const/16 v7, 0x4c

    move v13, v7

    .end local v10    # "cmd":C
    .restart local v7    # "cmd":C
    goto :goto_1

    .line 49
    .end local v7    # "cmd":C
    .restart local v10    # "cmd":C
    :cond_1
    if-ne v10, v8, :cond_2

    .line 50
    const/16 v7, 0x6c

    move v13, v7

    .end local v10    # "cmd":C
    .restart local v7    # "cmd":C
    goto :goto_1

    .line 49
    .end local v7    # "cmd":C
    .restart local v10    # "cmd":C
    :cond_2
    move v13, v10

    .line 54
    .end local v10    # "cmd":C
    .local v13, "cmd":C
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v4, v11, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 57
    const/16 v24, 0x0

    .line 58
    .local v24, "wasCurve":Z
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    sparse-switch v13, :sswitch_data_0

    .line 227
    move/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v29, v5

    move v1, v6

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .end local v11    # "r":Landroid/graphics/RectF;
    .end local v12    # "next":C
    .end local v13    # "cmd":C
    .local v0, "r":Landroid/graphics/RectF;
    .local v1, "lastY":F
    .local v2, "next":C
    .local v25, "n":I
    .local v26, "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    .local v29, "lastX":F
    .local v30, "cmd":C
    invoke-virtual/range {v26 .. v26}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    goto/16 :goto_9

    .line 79
    .end local v0    # "r":Landroid/graphics/RectF;
    .end local v25    # "n":I
    .end local v26    # "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    .end local v29    # "lastX":F
    .end local v30    # "cmd":C
    .local v1, "n":I
    .local v2, "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    .restart local v5    # "lastX":F
    .restart local v6    # "lastY":F
    .restart local v11    # "r":Landroid/graphics/RectF;
    .restart local v12    # "next":C
    .restart local v13    # "cmd":C
    :sswitch_0
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 80
    move/from16 v5, v22

    .line 81
    move/from16 v6, v23

    .line 82
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 113
    :sswitch_1
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 114
    .local v7, "y":F
    const/16 v8, 0x76

    if-ne v13, v8, :cond_3

    .line 115
    invoke-virtual {v4, v9, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 116
    add-float/2addr v6, v7

    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 118
    :cond_3
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    move v6, v7

    .line 121
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 189
    .end local v7    # "y":F
    :sswitch_2
    const/16 v24, 0x1

    .line 190
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 191
    .local v7, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v8

    .line 192
    .local v8, "y":F
    const/16 v9, 0x74

    if-ne v13, v9, :cond_4

    .line 193
    add-float/2addr v7, v5

    .line 194
    add-float/2addr v8, v6

    move v9, v7

    goto :goto_2

    .line 192
    :cond_4
    move v9, v7

    .line 196
    .end local v7    # "x":F
    .local v9, "x":F
    :goto_2
    mul-float v7, v5, v10

    sub-float/2addr v7, v3

    .line 197
    .local v7, "x1":F
    mul-float v10, v10, v6

    sub-float v10, v10, v21

    .line 198
    .local v10, "y1":F
    move/from16 v36, v10

    move v10, v8

    move/from16 v8, v36

    .local v8, "y1":F
    .local v10, "y":F
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 199
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .local v14, "lastX":F
    .local v15, "lastY":F
    move v5, v9

    .line 200
    .end local v14    # "lastX":F
    .restart local v5    # "lastX":F
    move v6, v10

    .line 201
    .end local v15    # "lastY":F
    .restart local v6    # "lastY":F
    move v3, v7

    .line 202
    move/from16 v21, v8

    .line 203
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 149
    .end local v7    # "x1":F
    .end local v8    # "y1":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    :sswitch_3
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    const/16 v24, 0x1

    .line 150
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 151
    .local v5, "x2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 152
    .local v6, "y2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 153
    .local v7, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v8

    .line 154
    .local v8, "y":F
    const/16 v9, 0x73

    if-ne v13, v9, :cond_5

    .line 155
    add-float/2addr v5, v14

    .line 156
    add-float/2addr v7, v14

    .line 157
    add-float/2addr v6, v15

    .line 158
    add-float/2addr v8, v15

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_3

    .line 154
    :cond_5
    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    const/high16 v5, 0x40000000    # 2.0f

    .line 160
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .local v7, "x2":F
    .local v8, "y2":F
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :goto_3
    mul-float v6, v14, v5

    sub-float/2addr v6, v3

    .line 161
    .local v6, "x1":F
    mul-float v5, v5, v15

    sub-float v5, v5, v21

    .line 162
    .local v5, "y1":F
    move/from16 v36, v6

    move v6, v5

    move/from16 v5, v36

    .local v5, "x1":F
    .local v6, "y1":F
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 163
    move v3, v7

    .line 164
    move/from16 v21, v8

    .line 165
    move v14, v9

    .line 166
    move v15, v10

    .line 167
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    move v5, v14

    move v6, v15

    goto/16 :goto_9

    .line 207
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v14    # "lastX":F
    .end local v15    # "lastY":F
    .local v5, "lastX":F
    .local v6, "lastY":F
    :sswitch_4
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    const/16 v24, 0x1

    .line 208
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 209
    .local v5, "x1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 210
    .local v6, "y1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 211
    .local v7, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v8

    .line 212
    .local v8, "y":F
    const/16 v9, 0x71

    if-ne v13, v9, :cond_6

    .line 213
    add-float/2addr v7, v14

    .line 214
    add-float/2addr v8, v15

    .line 215
    add-float/2addr v5, v14

    .line 216
    add-float/2addr v6, v15

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    goto :goto_4

    .line 212
    :cond_6
    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    .line 218
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .local v7, "x1":F
    .local v8, "y1":F
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :goto_4
    move v5, v14

    move v6, v15

    .end local v14    # "lastX":F
    .end local v15    # "lastY":F
    .local v5, "lastX":F
    .local v6, "lastY":F
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 219
    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    move v3, v7

    .line 220
    move/from16 v21, v8

    .line 221
    move v5, v9

    .line 222
    .end local v14    # "lastX":F
    .restart local v5    # "lastX":F
    move v6, v10

    .line 223
    .end local v15    # "lastY":F
    .restart local v6    # "lastY":F
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 61
    .end local v7    # "x1":F
    .end local v8    # "y1":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    :sswitch_5
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 62
    .local v5, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 63
    .local v6, "y":F
    if-ne v13, v8, :cond_7

    .line 64
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 65
    add-float v7, v14, v5

    .line 66
    .end local v14    # "lastX":F
    .local v7, "lastX":F
    add-float v8, v15, v6

    .end local v15    # "lastY":F
    .local v8, "lastY":F
    goto :goto_5

    .line 68
    .end local v7    # "lastX":F
    .end local v8    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    :cond_7
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    move v7, v5

    .line 70
    .end local v14    # "lastX":F
    .restart local v7    # "lastX":F
    move v8, v6

    .line 72
    .end local v15    # "lastY":F
    .restart local v8    # "lastY":F
    :goto_5
    move v9, v7

    .line 73
    .end local v22    # "contourInitialX":F
    .local v9, "contourInitialX":F
    move v10, v8

    .line 74
    .end local v23    # "contourInitialY":F
    .local v10, "contourInitialY":F
    move/from16 v25, v1

    move-object/from16 v26, v2

    move v5, v7

    move v6, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 86
    .end local v7    # "lastX":F
    .end local v8    # "lastY":F
    .end local v9    # "contourInitialX":F
    .end local v10    # "contourInitialY":F
    .local v5, "lastX":F
    .local v6, "lastY":F
    .restart local v22    # "contourInitialX":F
    .restart local v23    # "contourInitialY":F
    :sswitch_6
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 87
    .local v5, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 88
    .local v6, "y":F
    const/16 v7, 0x6c

    if-ne v13, v7, :cond_8

    .line 89
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 90
    add-float v7, v14, v5

    .line 91
    .end local v14    # "lastX":F
    .restart local v7    # "lastX":F
    add-float v8, v15, v6

    move/from16 v25, v1

    move-object/from16 v26, v2

    move v5, v7

    move v6, v8

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    .end local v15    # "lastY":F
    .restart local v8    # "lastY":F
    goto/16 :goto_9

    .line 93
    .end local v7    # "lastX":F
    .end local v8    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    :cond_8
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    move v7, v5

    .line 95
    .end local v14    # "lastX":F
    .restart local v7    # "lastX":F
    move v8, v6

    .line 97
    .end local v15    # "lastY":F
    .restart local v8    # "lastY":F
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    goto/16 :goto_9

    .line 101
    .end local v7    # "lastX":F
    .end local v8    # "lastY":F
    .local v5, "lastX":F
    .local v6, "lastY":F
    :sswitch_7
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 102
    .local v5, "x":F
    const/16 v6, 0x68

    if-ne v13, v6, :cond_9

    .line 103
    invoke-virtual {v4, v5, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 104
    add-float v6, v14, v5

    move/from16 v25, v1

    move-object/from16 v26, v2

    move v5, v6

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    move v6, v15

    .end local v14    # "lastX":F
    .local v6, "lastX":F
    goto/16 :goto_9

    .line 106
    .end local v6    # "lastX":F
    .restart local v14    # "lastX":F
    :cond_9
    invoke-virtual {v4, v5, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    move v6, v5

    .line 109
    .end local v14    # "lastX":F
    .restart local v6    # "lastX":F
    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    move v6, v15

    goto/16 :goto_9

    .line 125
    .end local v15    # "lastY":F
    .local v5, "lastX":F
    .local v6, "lastY":F
    :sswitch_8
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .restart local v14    # "lastX":F
    .restart local v15    # "lastY":F
    const/16 v24, 0x1

    .line 126
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 127
    .local v5, "x1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 128
    .local v6, "y1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 129
    .local v7, "x2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v8

    .line 130
    .local v8, "y2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v9

    .line 131
    .local v9, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v10

    .line 132
    .local v10, "y":F
    const/16 v0, 0x63

    if-ne v13, v0, :cond_a

    .line 133
    add-float/2addr v5, v14

    .line 134
    add-float/2addr v7, v14

    .line 135
    add-float/2addr v9, v14

    .line 136
    add-float/2addr v6, v15

    .line 137
    add-float/2addr v8, v15

    .line 138
    add-float/2addr v10, v15

    .line 140
    :cond_a
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 141
    move v3, v7

    .line 142
    move/from16 v21, v8

    .line 143
    move v0, v9

    .line 144
    .end local v14    # "lastX":F
    .local v0, "lastX":F
    move v14, v10

    .line 145
    .end local v15    # "lastY":F
    .local v14, "lastY":F
    move v5, v0

    move/from16 v25, v1

    move-object/from16 v26, v2

    move-object v0, v11

    move v2, v12

    move/from16 v30, v13

    move v6, v14

    goto/16 :goto_9

    .line 171
    .end local v0    # "lastX":F
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v14    # "lastY":F
    .local v5, "lastX":F
    .local v6, "lastY":F
    :sswitch_9
    move v14, v5

    move v15, v6

    .end local v5    # "lastX":F
    .end local v6    # "lastY":F
    .local v14, "lastX":F
    .restart local v15    # "lastY":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v0

    .line 172
    .local v0, "rx":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 173
    .local v5, "ry":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 174
    .local v6, "theta":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v8

    float-to-int v8, v8

    .line 175
    .local v8, "largeArc":I
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v9

    float-to-int v9, v9

    .line 176
    .local v9, "sweepArc":I
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v10

    .line 177
    .local v10, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v16

    .line 178
    .local v16, "y":F
    const/16 v7, 0x61

    if-ne v13, v7, :cond_b

    .line 179
    add-float/2addr v10, v14

    .line 180
    add-float v16, v16, v15

    move v7, v10

    move/from16 v10, v16

    goto :goto_6

    .line 178
    :cond_b
    move v7, v10

    move/from16 v10, v16

    .line 182
    .end local v16    # "y":F
    .local v7, "x":F
    .local v10, "y":F
    :goto_6
    move/from16 v25, v1

    move-object/from16 v26, v2

    .end local v1    # "n":I
    .end local v2    # "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    .restart local v25    # "n":I
    .restart local v26    # "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    float-to-double v1, v14

    move-wide/from16 v18, v1

    float-to-double v1, v15

    move-wide/from16 v27, v1

    float-to-double v1, v7

    move-object/from16 v16, v11

    move/from16 v20, v12

    .end local v11    # "r":Landroid/graphics/RectF;
    .end local v12    # "next":C
    .local v16, "r":Landroid/graphics/RectF;
    .local v20, "next":C
    float-to-double v11, v10

    move/from16 v30, v13

    move/from16 v29, v14

    .end local v13    # "cmd":C
    .end local v14    # "lastX":F
    .restart local v29    # "lastX":F
    .restart local v30    # "cmd":C
    float-to-double v13, v0

    move/from16 v31, v0

    move-wide/from16 v32, v1

    .end local v0    # "rx":F
    .local v31, "rx":F
    float-to-double v0, v5

    move-wide/from16 v34, v0

    float-to-double v0, v6

    const/4 v2, 0x1

    move-wide/from16 v36, v18

    if-ne v8, v2, :cond_c

    const/16 v19, 0x1

    goto :goto_7

    :cond_c
    const/16 v19, 0x0

    :goto_7
    move/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v5, v36

    .end local v5    # "ry":F
    .end local v6    # "theta":F
    .local v17, "ry":F
    .local v18, "theta":F
    if-ne v9, v2, :cond_d

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    move/from16 v36, v20

    move/from16 v20, v2

    move/from16 v2, v36

    move-wide/from16 v36, v34

    move/from16 v34, v7

    move/from16 v35, v10

    move-wide/from16 v38, v32

    move/from16 v32, v8

    move/from16 v33, v9

    move-wide/from16 v7, v27

    move-wide/from16 v9, v38

    move/from16 v27, v17

    move/from16 v28, v18

    move-wide/from16 v17, v0

    move v1, v15

    move-object/from16 v0, v16

    move-wide/from16 v15, v36

    .end local v7    # "x":F
    .end local v8    # "largeArc":I
    .end local v9    # "sweepArc":I
    .end local v10    # "y":F
    .end local v15    # "lastY":F
    .end local v16    # "r":Landroid/graphics/RectF;
    .end local v17    # "ry":F
    .end local v18    # "theta":F
    .end local v20    # "next":C
    .local v0, "r":Landroid/graphics/RectF;
    .local v1, "lastY":F
    .local v2, "next":C
    .local v27, "ry":F
    .local v28, "theta":F
    .local v32, "largeArc":I
    .local v33, "sweepArc":I
    .local v34, "x":F
    .local v35, "y":F
    invoke-static/range {v4 .. v20}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;->drawArc(Landroid/graphics/Path;DDDDDDDZZ)V

    .line 183
    move/from16 v5, v34

    .line 184
    .end local v29    # "lastX":F
    .local v5, "lastX":F
    move/from16 v1, v35

    .line 185
    move v6, v1

    .line 229
    .end local v1    # "lastY":F
    .end local v27    # "ry":F
    .end local v28    # "theta":F
    .end local v31    # "rx":F
    .end local v32    # "largeArc":I
    .end local v33    # "sweepArc":I
    .end local v34    # "x":F
    .end local v35    # "y":F
    .local v6, "lastY":F
    :goto_9
    if-nez v24, :cond_e

    .line 230
    move v1, v5

    .line 231
    .end local v3    # "lastX1":F
    .local v1, "lastX1":F
    move v3, v6

    move/from16 v21, v3

    move v3, v1

    .line 233
    .end local v1    # "lastX1":F
    .restart local v3    # "lastX1":F
    :cond_e
    invoke-virtual/range {v26 .. v26}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipWhitespace()V

    .line 234
    .end local v2    # "next":C
    .end local v24    # "wasCurve":Z
    move-object v11, v0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v10, v30

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 235
    .end local v0    # "r":Landroid/graphics/RectF;
    .end local v25    # "n":I
    .end local v26    # "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    .end local v30    # "cmd":C
    .local v1, "n":I
    .local v2, "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    .local v10, "cmd":C
    .restart local v11    # "r":Landroid/graphics/RectF;
    :cond_f
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static drawArc(Landroid/graphics/Path;DDDDDDDZZ)V
    .locals 71
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x"    # D
    .param p7, "y"    # D
    .param p9, "rx"    # D
    .param p11, "ry"    # D
    .param p13, "angle"    # D
    .param p15, "largeArcFlag"    # Z
    .param p16, "sweepFlag"    # Z

    .line 244
    move/from16 v0, p16

    sub-double v1, p1, p5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 245
    .local v1, "dx2":D
    sub-double v5, p3, p7

    div-double/2addr v5, v3

    .line 246
    .local v5, "dy2":D
    const-wide v7, 0x4076800000000000L    # 360.0

    rem-double v9, p13, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 247
    .end local p13    # "angle":D
    .local v9, "angle":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 248
    .local v11, "cosAngle":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 250
    .local v13, "sinAngle":D
    mul-double v15, v11, v1

    mul-double v17, v13, v5

    move-wide/from16 v19, v3

    add-double v3, v15, v17

    .line 251
    .local v3, "x1":D
    move-wide v15, v7

    neg-double v7, v13

    mul-double v7, v7, v1

    mul-double v17, v11, v5

    add-double v7, v7, v17

    .line 252
    .local v7, "y1":D
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    .line 253
    .end local p9    # "rx":D
    .local v17, "rx":D
    invoke-static/range {p11 .. p12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    .line 255
    .end local p11    # "ry":D
    .local v21, "ry":D
    mul-double v23, v17, v17

    .line 256
    .local v23, "Prx":D
    mul-double v25, v21, v21

    .line 257
    .local v25, "Pry":D
    mul-double v27, v3, v3

    .line 258
    .local v27, "Px1":D
    mul-double v29, v7, v7

    .line 261
    .local v29, "Py1":D
    div-double v31, v27, v23

    div-double v33, v29, v25

    add-double v31, v31, v33

    .line 262
    .local v31, "radiiCheck":D
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    cmpl-double v35, v31, v33

    if-lez v35, :cond_0

    .line 263
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    mul-double v17, v17, v35

    .line 264
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    mul-double v21, v21, v35

    .line 265
    mul-double v23, v17, v17

    .line 266
    mul-double v25, v21, v21

    .line 270
    :cond_0
    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    move-wide/from16 p13, v15

    move/from16 v15, p15

    if-ne v15, v0, :cond_1

    move-wide/from16 v37, v35

    goto :goto_0

    :cond_1
    move-wide/from16 v37, v33

    .line 271
    .local v37, "sign":D
    :goto_0
    mul-double v39, v23, v25

    mul-double v41, v23, v29

    sub-double v39, v39, v41

    mul-double v41, v25, v27

    sub-double v39, v39, v41

    mul-double v41, v23, v29

    mul-double v43, v25, v27

    add-double v41, v41, v43

    div-double v39, v39, v41

    .line 273
    .local v39, "sq":D
    const-wide/16 v41, 0x0

    cmpg-double v16, v39, v41

    if-gez v16, :cond_2

    move-wide/from16 v43, v41

    goto :goto_1

    :cond_2
    move-wide/from16 v43, v39

    .line 274
    .end local v39    # "sq":D
    .local v43, "sq":D
    :goto_1
    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v39

    mul-double v39, v39, v37

    .line 275
    .local v39, "coef":D
    mul-double v45, v17, v7

    div-double v45, v45, v21

    mul-double v45, v45, v39

    .line 276
    .local v45, "cx1":D
    mul-double v47, v21, v3

    move-wide/from16 v49, v1

    .end local v1    # "dx2":D
    .local v49, "dx2":D
    div-double v0, v47, v17

    neg-double v0, v0

    mul-double v0, v0, v39

    .line 278
    .local v0, "cy1":D
    add-double v47, p1, p5

    div-double v47, v47, v19

    .line 279
    .local v47, "sx2":D
    add-double v51, p3, p7

    div-double v51, v51, v19

    .line 280
    .local v51, "sy2":D
    mul-double v19, v11, v45

    mul-double v53, v13, v0

    sub-double v19, v19, v53

    add-double v19, v47, v19

    .line 281
    .local v19, "cx":D
    mul-double v53, v13, v45

    mul-double v55, v11, v0

    add-double v53, v53, v55

    add-double v53, v51, v53

    .line 284
    .local v53, "cy":D
    sub-double v55, v3, v45

    div-double v55, v55, v17

    .line 285
    .local v55, "ux":D
    sub-double v57, v7, v0

    div-double v57, v57, v21

    .line 286
    .local v57, "uy":D
    move-wide/from16 p9, v0

    .end local v0    # "cy1":D
    .local p9, "cy1":D
    neg-double v0, v3

    sub-double v0, v0, v45

    div-double v0, v0, v17

    .line 287
    .local v0, "vx":D
    move-wide/from16 p11, v0

    .end local v0    # "vx":D
    .local p11, "vx":D
    neg-double v0, v7

    sub-double v0, v0, p9

    div-double v0, v0, v21

    .line 291
    .local v0, "vy":D
    mul-double v59, v55, v55

    mul-double v61, v57, v57

    add-double v59, v59, v61

    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v59

    .line 292
    .local v59, "n":D
    move-wide/from16 v61, v55

    .line 293
    .local v61, "p":D
    cmpg-double v2, v57, v41

    if-gez v2, :cond_3

    move-wide/from16 v63, v35

    goto :goto_2

    :cond_3
    move-wide/from16 v63, v33

    .line 294
    .end local v37    # "sign":D
    .local v63, "sign":D
    :goto_2
    div-double v37, v61, v59

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->acos(D)D

    move-result-wide v37

    mul-double v37, v37, v63

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v37

    .line 297
    .local v37, "angleStart":D
    mul-double v65, v55, v55

    mul-double v67, v57, v57

    add-double v65, v65, v67

    mul-double v67, p11, p11

    mul-double v69, v0, v0

    add-double v67, v67, v69

    mul-double v65, v65, v67

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v59

    .line 298
    mul-double v65, v55, p11

    mul-double v67, v57, v0

    add-double v65, v65, v67

    .line 299
    .end local v61    # "p":D
    .local v65, "p":D
    mul-double v61, v55, v0

    mul-double v67, v57, p11

    sub-double v61, v61, v67

    cmpg-double v2, v61, v41

    if-gez v2, :cond_4

    move-wide/from16 v33, v35

    .line 300
    .end local v63    # "sign":D
    .local v33, "sign":D
    :cond_4
    div-double v35, v65, v59

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->acos(D)D

    move-result-wide v35

    mul-double v35, v35, v33

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v35

    .line 301
    .local v35, "angleExtent":D
    if-nez p16, :cond_5

    cmpl-double v2, v35, v41

    if-lez v2, :cond_5

    .line 302
    sub-double v35, v35, p13

    goto :goto_3

    .line 303
    :cond_5
    if-eqz p16, :cond_6

    cmpg-double v2, v35, v41

    if-gez v2, :cond_6

    .line 304
    add-double v35, v35, p13

    .line 306
    :cond_6
    :goto_3
    move-wide/from16 v41, v0

    .end local v0    # "vy":D
    .local v41, "vy":D
    rem-double v0, v35, p13

    .line 307
    .end local v35    # "angleExtent":D
    .local v0, "angleExtent":D
    move-wide/from16 v35, v3

    .end local v3    # "x1":D
    .local v35, "x1":D
    rem-double v2, v37, p13

    .line 309
    .end local v37    # "angleStart":D
    .local v2, "angleStart":D
    new-instance v4, Landroid/graphics/RectF;

    move-wide/from16 v37, v5

    .end local v5    # "dy2":D
    .local v37, "dy2":D
    sub-double v5, v19, v17

    double-to-float v5, v5

    move-wide/from16 p13, v7

    .end local v7    # "y1":D
    .local p13, "y1":D
    sub-double v6, v53, v21

    double-to-float v6, v6

    add-double v7, v19, v17

    double-to-float v7, v7

    move-wide/from16 v61, v9

    .end local v9    # "angle":D
    .local v61, "angle":D
    add-double v8, v53, v21

    double-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 310
    .local v4, "oval":Landroid/graphics/RectF;
    double-to-float v5, v2

    double-to-float v6, v0

    move-object/from16 v7, p0

    invoke-virtual {v7, v4, v5, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 311
    return-void
.end method

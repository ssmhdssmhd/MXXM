.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;
.super Ljava/lang/Object;
.source "TransformParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    .local v0, "matrix":Landroid/graphics/Matrix;
    :goto_0
    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->parseTransformItem(Ljava/lang/String;Landroid/graphics/Matrix;)V

    .line 17
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 18
    .local v1, "rparen":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_0

    .line 19
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\\s,]*"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    .end local v1    # "rparen":I
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method private static parseTransformItem(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 19
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "matrix("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 30
    .local v2, "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x6

    if-ne v3, v8, :cond_0

    .line 31
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    .local v3, "mat":Landroid/graphics/Matrix;
    iget-object v9, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v10, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v11, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 36
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v13, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v14, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 39
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v16, 0x6

    iget-object v8, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 40
    const/16 v17, 0x4

    const/4 v12, 0x5

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/16 v18, 0x5

    const/16 v12, 0x9

    new-array v12, v12, [F

    aput v9, v12, v7

    aput v10, v12, v6

    aput v11, v12, v5

    aput v13, v12, v15

    aput v14, v12, v17

    aput v8, v12, v18

    aput v4, v12, v16

    const/4 v5, 0x7

    aput v4, v12, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    aput v4, v12, v5

    .line 32
    invoke-virtual {v3, v12}, Landroid/graphics/Matrix;->setValues([F)V

    .line 46
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 48
    .end local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "mat":Landroid/graphics/Matrix;
    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, "translate("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 50
    .restart local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 51
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 52
    .local v3, "tx":F
    const/4 v4, 0x0

    .line 53
    .local v4, "ty":F
    iget-object v5, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 54
    iget-object v5, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 56
    :cond_2
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 58
    .end local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    :cond_3
    goto/16 :goto_0

    :cond_4
    const-string v2, "scale("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 60
    .restart local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 61
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 62
    .local v3, "sx":F
    move v4, v3

    .line 63
    .local v4, "sy":F
    iget-object v5, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_5

    .line 64
    iget-object v5, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 66
    :cond_5
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 68
    .end local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "sx":F
    .end local v4    # "sy":F
    :cond_6
    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "skewX("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 70
    .restart local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 71
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 72
    .local v3, "angle":F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 74
    .end local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "angle":F
    :cond_8
    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "skewY("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 76
    .restart local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 77
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 78
    .restart local v3    # "angle":F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 80
    .end local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "angle":F
    :cond_a
    goto :goto_0

    :cond_b
    const-string v2, "rotate("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 82
    .restart local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 83
    iget-object v3, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 84
    .restart local v3    # "angle":F
    const/4 v4, 0x0

    .line 85
    .local v4, "cx":F
    const/4 v7, 0x0

    .line 86
    .local v7, "cy":F
    iget-object v8, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_c

    .line 87
    iget-object v8, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 88
    iget-object v6, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 90
    :cond_c
    invoke-virtual {v1, v4, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 92
    neg-float v5, v4

    neg-float v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 94
    .end local v2    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "angle":F
    .end local v4    # "cx":F
    .end local v7    # "cy":F
    :cond_d
    goto :goto_0

    .line 95
    :cond_e
    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid transform ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void
.end method

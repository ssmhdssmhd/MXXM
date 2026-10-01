.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
.super Ljava/lang/Object;
.source "ParserHelper.java"


# static fields
.field private static final pow10:[D


# instance fields
.field private current:C

.field private final n:I

.field public pos:I

.field private final s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 289
    const/16 v0, 0x80

    new-array v0, v0, [D

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 293
    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    .line 39
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 40
    return-void
.end method

.method private static buildFloat(II)F
    .locals 5
    .param p0, "mant"    # I
    .param p1, "exp"    # I

    .line 265
    const/16 v0, -0x7d

    if-lt p1, v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_2

    .line 269
    :cond_0
    const/16 v0, 0x80

    if-lt p1, v0, :cond_2

    .line 270
    if-lez p0, :cond_1

    .line 271
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 272
    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 270
    :goto_0
    return v0

    .line 275
    :cond_2
    if-nez p1, :cond_3

    .line 276
    int-to-float v0, p0

    return v0

    .line 279
    :cond_3
    const/high16 v0, 0x4000000

    if-lt p0, v0, :cond_4

    .line 280
    add-int/lit8 p0, p0, 0x1

    .line 283
    :cond_4
    int-to-double v0, p0

    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pow10:[D

    if-lez p1, :cond_5

    aget-wide v3, v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    goto :goto_1

    :cond_5
    neg-int v3, p1

    aget-wide v3, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    :goto_1
    double-to-float v0, v0

    return v0

    .line 266
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private read()C
    .locals 2

    .line 43
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 44
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    .line 46
    :cond_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ne v0, v1, :cond_1

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method private reportUnexpectedCharacterError(C)V
    .locals 3
    .param p1, "c"    # C

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v0

    iput-char v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 81
    return-void
.end method

.method public nextFloat()F
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipWhitespace()V

    .line 299
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->parseFloat()F

    move-result v0

    .line 300
    .local v0, "f":F
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipNumberSeparator()V

    .line 301
    return v0
.end method

.method parseFloat()F
    .locals 12

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "mant":I
    const/4 v1, 0x0

    .line 87
    .local v1, "mantDig":I
    const/4 v2, 0x1

    .line 88
    .local v2, "mantPos":Z
    const/4 v3, 0x0

    .line 90
    .local v3, "mantRead":Z
    const/4 v4, 0x0

    .line 91
    .local v4, "exp":I
    const/4 v5, 0x0

    .line 92
    .local v5, "expDig":I
    const/4 v6, 0x0

    .line 93
    .local v6, "expAdj":I
    const/4 v7, 0x1

    .line 95
    .local v7, "expPos":Z
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 97
    :pswitch_1
    const/4 v2, 0x0

    .line 100
    :pswitch_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 102
    :goto_0
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    const/16 v9, 0x9

    const/4 v10, 0x0

    packed-switch v8, :pswitch_data_1

    .line 104
    :pswitch_3
    const/high16 v8, 0x7fc00000    # Float.NaN

    return v8

    .line 110
    :pswitch_4
    const/4 v3, 0x1

    .line 112
    :goto_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 113
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    sparse-switch v8, :sswitch_data_0

    .line 120
    return v10

    .line 116
    :sswitch_0
    nop

    .line 127
    :pswitch_5
    const/4 v3, 0x1

    .line 129
    :goto_2
    if-ge v1, v9, :cond_0

    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    mul-int/lit8 v8, v0, 0xa

    iget-char v11, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    add-int/lit8 v11, v11, -0x30

    add-int/2addr v8, v11

    move v0, v8

    .end local v0    # "mant":I
    .local v8, "mant":I
    goto :goto_3

    .line 133
    .end local v8    # "mant":I
    .restart local v0    # "mant":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 135
    :goto_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 136
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_2

    .line 138
    goto :goto_4

    :pswitch_6
    goto :goto_2

    .line 120
    :sswitch_1
    goto :goto_1

    .line 118
    :sswitch_2
    goto :goto_4

    .line 107
    :pswitch_7
    nop

    .line 145
    :goto_4
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    const/16 v11, 0x2e

    if-ne v8, v11, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 147
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_3

    .line 150
    if-nez v3, :cond_3

    .line 151
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    invoke-direct {p0, v8}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 152
    return v10

    .line 157
    :pswitch_8
    if-nez v1, :cond_1

    .line 159
    :goto_5
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 160
    add-int/lit8 v6, v6, -0x1

    .line 161
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_4

    .line 166
    if-nez v3, :cond_3

    .line 167
    return v10

    .line 164
    :pswitch_9
    goto :goto_6

    .line 167
    :pswitch_a
    goto :goto_5

    .line 177
    :cond_1
    :goto_6
    :pswitch_b
    if-ge v1, v9, :cond_2

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    mul-int/lit8 v8, v0, 0xa

    iget-char v11, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    add-int/lit8 v11, v11, -0x30

    add-int/2addr v8, v11

    .line 180
    .end local v0    # "mant":I
    .restart local v8    # "mant":I
    add-int/lit8 v6, v6, -0x1

    move v0, v8

    .line 182
    .end local v8    # "mant":I
    .restart local v0    # "mant":I
    :cond_2
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 183
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_5

    .line 185
    goto :goto_7

    :pswitch_c
    goto :goto_6

    .line 193
    :cond_3
    :goto_7
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    sparse-switch v8, :sswitch_data_1

    goto :goto_a

    .line 195
    :sswitch_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 196
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_6

    .line 198
    :pswitch_d
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    invoke-direct {p0, v8}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 199
    return v10

    .line 201
    :pswitch_e
    const/4 v7, 0x0

    .line 203
    :pswitch_f
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 204
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_7

    .line 206
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    invoke-direct {p0, v8}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 207
    return v10

    .line 215
    :pswitch_10
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_8

    goto :goto_a

    .line 218
    :goto_8
    :pswitch_11
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 219
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_9

    .line 224
    goto :goto_a

    .line 222
    :pswitch_12
    nop

    .line 232
    :goto_9
    :pswitch_13
    const/4 v8, 0x3

    if-ge v5, v8, :cond_4

    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    mul-int/lit8 v8, v4, 0xa

    iget-char v9, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v8, v9

    move v4, v8

    .line 236
    :cond_4
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->read()C

    move-result v8

    iput-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    .line 237
    iget-char v8, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->current:C

    packed-switch v8, :pswitch_data_a

    .line 239
    goto :goto_a

    :pswitch_14
    goto :goto_9

    .line 224
    :pswitch_15
    goto :goto_8

    .line 248
    :goto_a
    if-nez v7, :cond_5

    .line 249
    neg-int v4, v4

    .line 251
    :cond_5
    add-int/2addr v4, v6

    .line 252
    if-nez v2, :cond_6

    .line 253
    neg-int v0, v0

    .line 256
    :cond_6
    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->buildFloat(II)F

    move-result v8

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x2b
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x30
        :pswitch_11
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x30
        :pswitch_15
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x30
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method skipNumberSeparator()V
    .locals 2

    .line 64
    nop

    :goto_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 66
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 74
    return-void

    .line 71
    :sswitch_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    .line 72
    nop

    .line 76
    .end local v0    # "c":C
    goto :goto_0

    .line 77
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public skipWhitespace()V
    .locals 2

    .line 54
    nop

    :goto_0
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->n:I

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.class public Lorg/apache/commons/fileupload/ParameterParser;
.super Ljava/lang/Object;
.source "ParameterParser.java"


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private lowerCaseNames:Z

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 49
    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    .line 54
    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 59
    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 64
    iput-boolean v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    .line 71
    return-void
.end method

.method private getToken(Z)Ljava/lang/String;
    .locals 6
    .param p1, "quoted"    # Z

    .line 94
    nop

    :goto_0
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    goto :goto_1

    .line 95
    :cond_0
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    goto :goto_0

    .line 98
    :cond_1
    :goto_1
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 99
    :cond_2
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    goto :goto_1

    .line 102
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 103
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_4

    .line 104
    iget-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_4

    .line 105
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 106
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 109
    :cond_4
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    if-le v1, v2, :cond_5

    .line 111
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    iget v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 113
    :cond_5
    return-object v0
.end method

.method private hasChar()Z
    .locals 2

    .line 80
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOneOf(C[C)Z
    .locals 3
    .param p1, "ch"    # C
    .param p2, "charray"    # [C

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    aget-char v2, p2, v1

    if-ne p1, v2, :cond_1

    .line 131
    const/4 v0, 0x1

    .line 132
    nop

    .line 135
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 129
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseQuotedToken([C)Ljava/lang/String;
    .locals 6
    .param p1, "terminators"    # [C

    .line 175
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 176
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "quoted":Z
    const/4 v1, 0x0

    .line 179
    .local v1, "charEscaped":Z
    nop

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v2, v2, v4

    .line 181
    .local v2, "ch":C
    if-nez v0, :cond_1

    invoke-direct {p0, v2, p1}, Lorg/apache/commons/fileupload/ParameterParser;->isOneOf(C[C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    nop

    .line 192
    .end local v2    # "ch":C
    :goto_1
    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 184
    .restart local v2    # "ch":C
    :cond_1
    const/4 v4, 0x0

    if-nez v1, :cond_3

    const/16 v5, 0x22

    if-ne v2, v5, :cond_3

    .line 185
    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 187
    :cond_3
    if-nez v1, :cond_4

    const/16 v5, 0x5c

    if-ne v2, v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    move v1, v4

    .line 188
    iget v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 189
    iget v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    goto :goto_0
.end method

.method private parseToken([C)Ljava/lang/String;
    .locals 2
    .param p1, "terminators"    # [C

    .line 149
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 150
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 151
    nop

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v0, v0, v1

    .line 153
    .local v0, "ch":C
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/fileupload/ParameterParser;->isOneOf(C[C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    nop

    .line 159
    .end local v0    # "ch":C
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/fileupload/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    .restart local v0    # "ch":C
    :cond_1
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 157
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public isLowerCaseNames()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    return v0
.end method

.method public parse(Ljava/lang/String;C)Ljava/util/Map;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/fileupload/ParameterParser;->parse([CC)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;[C)Ljava/util/Map;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separators"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 236
    :cond_0
    const/4 v0, 0x0

    aget-char v0, p2, v0

    .line 237
    .local v0, "separator":C
    if-eqz p1, :cond_3

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 239
    .local v1, "idx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 240
    :cond_1
    aget-char v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 241
    .local v3, "tmp":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 242
    if-ge v3, v1, :cond_2

    .line 243
    move v1, v3

    .line 244
    aget-char v0, p2, v2

    .line 239
    .end local v3    # "tmp":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "idx":I
    .end local v2    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 234
    .end local v0    # "separator":C
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public parse([CC)Ljava/util/Map;
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CC)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/fileupload/ParameterParser;->parse([CIIC)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse([CIIC)Ljava/util/Map;
    .locals 7
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIIC)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    if-nez p1, :cond_0

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 314
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    .line 316
    iput p2, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 317
    iput p3, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "paramName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 321
    .local v2, "paramValue":Ljava/lang/String;
    nop

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-nez v3, :cond_2

    .line 338
    return-object v0

    .line 322
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/16 v5, 0x3d

    aput-char v5, v3, v4

    const/4 v6, 0x1

    aput-char p4, v3, v6

    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parseToken([C)Ljava/lang/String;

    move-result-object v1

    .line 323
    const/4 v2, 0x0

    .line 324
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, v5, :cond_3

    .line 325
    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 326
    new-array v3, v6, [C

    aput-char p4, v3, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parseQuotedToken([C)Ljava/lang/String;

    move-result-object v2

    .line 328
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, p4, :cond_4

    .line 329
    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 331
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 332
    iget-boolean v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    if-eqz v3, :cond_5

    .line 333
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLowerCaseNames(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 217
    iput-boolean p1, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    .line 218
    return-void
.end method

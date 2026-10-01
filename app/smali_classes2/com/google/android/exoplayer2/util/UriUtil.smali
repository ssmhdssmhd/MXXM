.class public final Lcom/google/android/exoplayer2/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# static fields
.field private static final FRAGMENT:I = 0x3

.field private static final INDEX_COUNT:I = 0x4

.field private static final PATH:I = 0x1

.field private static final QUERY:I = 0x2

.field private static final SCHEME_COLON:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriIndices(Ljava/lang/String;)[I
    .locals 12
    .param p0, "uriString"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 227
    .local v0, "indices":[I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 228
    aput v3, v0, v2

    .line 229
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 235
    .local v1, "length":I
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 236
    .local v4, "fragmentIndex":I
    if-ne v4, v3, :cond_1

    .line 237
    move v4, v1

    .line 239
    :cond_1
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 240
    .local v5, "queryIndex":I
    if-eq v5, v3, :cond_2

    if-le v5, v4, :cond_3

    .line 242
    :cond_2
    move v5, v4

    .line 246
    :cond_3
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 247
    .local v7, "schemeIndexLimit":I
    if-eq v7, v3, :cond_4

    if-le v7, v5, :cond_5

    .line 248
    :cond_4
    move v7, v5

    .line 250
    :cond_5
    const/16 v8, 0x3a

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 251
    .local v8, "schemeIndex":I
    if-le v8, v7, :cond_6

    .line 253
    const/4 v8, -0x1

    .line 258
    :cond_6
    add-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ge v9, v5, :cond_7

    add-int/lit8 v9, v8, 0x1

    .line 259
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_7

    add-int/lit8 v9, v8, 0x2

    .line 260
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_7

    const/4 v9, 0x1

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    .line 262
    .local v9, "hasAuthority":Z
    :goto_0
    if-eqz v9, :cond_9

    .line 263
    add-int/lit8 v11, v8, 0x3

    invoke-virtual {p0, v6, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 264
    .local v6, "pathIndex":I
    if-eq v6, v3, :cond_8

    if-le v6, v5, :cond_a

    .line 265
    :cond_8
    move v6, v5

    goto :goto_1

    .line 268
    .end local v6    # "pathIndex":I
    :cond_9
    add-int/lit8 v6, v8, 0x1

    .line 271
    .restart local v6    # "pathIndex":I
    :cond_a
    :goto_1
    aput v8, v0, v2

    .line 272
    aput v6, v0, v10

    .line 273
    const/4 v2, 0x2

    aput v5, v0, v2

    .line 274
    const/4 v2, 0x3

    aput v4, v0, v2

    .line 275
    return-object v0
.end method

.method private static removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Ljava/lang/StringBuilder;
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .line 174
    if-lt p1, p2, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 180
    add-int/lit8 p1, p1, 0x1

    .line 183
    :cond_1
    move v0, p1

    .line 184
    .local v0, "segmentStart":I
    move v2, p1

    .line 185
    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_7

    .line 187
    if-ne v2, p2, :cond_2

    .line 188
    move v3, v2

    .local v3, "nextSegmentStart":I
    goto :goto_1

    .line 189
    .end local v3    # "nextSegmentStart":I
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_6

    .line 190
    add-int/lit8 v3, v2, 0x1

    .line 197
    .restart local v3    # "nextSegmentStart":I
    :goto_1
    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x2e

    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    .line 199
    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 200
    sub-int v4, v3, v0

    sub-int/2addr p2, v4

    .line 201
    move v2, v0

    goto :goto_3

    .line 202
    :cond_3
    add-int/lit8 v4, v0, 0x2

    if-ne v2, v4, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    add-int/lit8 v4, v0, 0x1

    .line 203
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    .line 205
    const-string v4, "/"

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 206
    .local v4, "prevSegmentStart":I
    if-le v4, p1, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, p1

    .line 207
    .local v5, "removeFrom":I
    :goto_2
    invoke-virtual {p0, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 208
    sub-int v6, v3, v5

    sub-int/2addr p2, v6

    .line 209
    move v0, v4

    .line 210
    nop

    .line 211
    .end local v2    # "i":I
    .end local v5    # "removeFrom":I
    .local v4, "i":I
    move v2, v4

    goto :goto_3

    .line 212
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 213
    move v0, v2

    .line 215
    .end local v3    # "nextSegmentStart":I
    :goto_3
    goto :goto_0

    .line 192
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 193
    goto :goto_0

    .line 216
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "queryParameterName"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 155
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 156
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 162
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "baseUri"    # Ljava/lang/String;
    .param p1, "referenceUri"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "uri":Ljava/lang/StringBuilder;
    const-string v1, ""

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 89
    .end local p0    # "baseUri":Ljava/lang/String;
    .local v2, "baseUri":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    .line 91
    .end local p1    # "referenceUri":Ljava/lang/String;
    .local v1, "referenceUri":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object p0

    .line 92
    .local p0, "refIndices":[I
    const/4 p1, 0x0

    aget v3, p0, p1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    aget p1, p0, v6

    aget v3, p0, v5

    invoke-static {v0, p1, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3

    .line 100
    .local v3, "baseIndices":[I
    const/4 v7, 0x3

    aget v8, p0, v7

    if-nez v8, :cond_3

    .line 103
    aget v4, v3, v7

    invoke-virtual {v0, v2, p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 106
    :cond_3
    aget v7, p0, v5

    if-nez v7, :cond_4

    .line 109
    aget v4, v3, v5

    invoke-virtual {v0, v2, p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 112
    :cond_4
    aget v7, p0, v6

    if-eqz v7, :cond_5

    .line 114
    aget v4, v3, p1

    add-int/2addr v4, v6

    .line 115
    .local v4, "baseLimit":I
    invoke-virtual {v0, v2, p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    aget p1, p0, v6

    add-int/2addr p1, v4

    aget v5, p0, v5

    add-int/2addr v5, v4

    invoke-static {v0, p1, v5}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    .end local v4    # "baseLimit":I
    :cond_5
    aget v7, p0, v6

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    .line 122
    aget v4, v3, v6

    invoke-virtual {v0, v2, p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    aget p1, v3, v6

    aget v4, v3, v6

    aget v5, p0, v5

    add-int/2addr v4, v5

    invoke-static {v0, p1, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 128
    :cond_6
    aget v7, v3, p1

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_7

    aget v7, v3, v6

    aget v9, v3, v5

    if-ne v7, v9, :cond_7

    .line 132
    aget v4, v3, v6

    invoke-virtual {v0, v2, p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    aget p1, v3, v6

    aget v4, v3, v6

    aget v5, p0, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    invoke-static {v0, p1, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 139
    :cond_7
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 140
    .local v7, "lastSlashIndex":I
    if-ne v7, v4, :cond_8

    aget v4, v3, v6

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 141
    .restart local v4    # "baseLimit":I
    :goto_2
    invoke-virtual {v0, v2, p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    aget p1, v3, v6

    aget v5, p0, v5

    add-int/2addr v5, v4

    invoke-static {v0, p1, v5}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "baseUri"    # Ljava/lang/String;
    .param p1, "referenceUri"    # Ljava/lang/String;

    .line 73
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 179
    return-object v2

    .line 182
    :cond_0
    add-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "rawTextAux":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 186
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 187
    .local v4, "currentChar":C
    move v4, v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 189
    :cond_1
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    .line 190
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .end local v4    # "currentChar":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_2
    return-object v2

    .line 195
    .end local v3    # "index":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "rawTextAux":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 204
    .local v3, "c":C
    move v3, v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    .line 207
    invoke-static {v2, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 208
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 23
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 48
    return-object v2

    .line 50
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "rawText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 53
    .local v0, "productID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 54
    .local v1, "sscc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .local v3, "lotNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, "productionDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 57
    .local v6, "packagingDate":Ljava/lang/String;
    const/4 v7, 0x0

    .line 58
    .local v7, "bestBeforeDate":Ljava/lang/String;
    const/4 v8, 0x0

    .line 59
    .local v8, "expirationDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 60
    .local v9, "weight":Ljava/lang/String;
    const/4 v10, 0x0

    .line 61
    .local v10, "weightType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 62
    .local v11, "weightIncrement":Ljava/lang/String;
    const/4 v12, 0x0

    .line 63
    .local v12, "price":Ljava/lang/String;
    const/4 v13, 0x0

    .line 64
    .local v13, "priceIncrement":Ljava/lang/String;
    const/4 v14, 0x0

    .line 65
    .local v14, "priceCurrency":Ljava/lang/String;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v15, v18

    .line 67
    .local v15, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    const/16 v17, 0x0

    move-object/from16 v22, v5

    move-object v5, v0

    move-object v0, v12

    move-object v12, v9

    move-object v9, v6

    move-object v6, v1

    move/from16 v1, v16

    move-object/from16 v16, v13

    move-object v13, v10

    move-object v10, v7

    move-object v7, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v14

    move-object v14, v11

    move-object v11, v8

    move-object/from16 v8, v22

    .line 69
    .end local v3    # "lotNumber":Ljava/lang/String;
    .local v0, "price":Ljava/lang/String;
    .local v1, "i":I
    .local v5, "productID":Ljava/lang/String;
    .local v6, "sscc":Ljava/lang/String;
    .local v7, "lotNumber":Ljava/lang/String;
    .local v8, "productionDate":Ljava/lang/String;
    .local v9, "packagingDate":Ljava/lang/String;
    .local v10, "bestBeforeDate":Ljava/lang/String;
    .local v11, "expirationDate":Ljava/lang/String;
    .local v12, "weight":Ljava/lang/String;
    .local v13, "weightType":Ljava/lang/String;
    .local v14, "weightIncrement":Ljava/lang/String;
    .local v16, "priceIncrement":Ljava/lang/String;
    .local v17, "priceCurrency":Ljava/lang/String;
    :goto_0
    move-object/from16 v18, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 70
    invoke-static {v1, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v3, "ai":Ljava/lang/String;
    move-object v3, v2

    if-nez v2, :cond_1

    .line 74
    return-object v18

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v19, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 77
    move v1, v2

    invoke-static {v2, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v1, v1, v20

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v20

    move-object/from16 v21, v0

    .end local v0    # "price":Ljava/lang/String;
    .local v21, "price":Ljava/lang/String;
    sparse-switch v20, :sswitch_data_0

    :cond_2
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "3933"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x22

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "3932"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x21

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "3931"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x20

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "3930"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1f

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "3923"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1e

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "3922"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1d

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "3921"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1c

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "3920"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1b

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "3209"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1a

    goto/16 :goto_2

    :sswitch_9
    const-string v0, "3208"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x19

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "3207"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x18

    goto/16 :goto_2

    :sswitch_b
    const-string v0, "3206"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x17

    goto/16 :goto_2

    :sswitch_c
    const-string v0, "3205"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x16

    goto/16 :goto_2

    :sswitch_d
    const-string v0, "3204"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x15

    goto/16 :goto_2

    :sswitch_e
    const-string v0, "3203"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x14

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "3202"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x13

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "3201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x12

    goto/16 :goto_2

    :sswitch_11
    const-string v0, "3200"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v0, "3109"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x10

    goto/16 :goto_2

    :sswitch_13
    const-string v0, "3108"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0xf

    goto/16 :goto_2

    :sswitch_14
    const-string v0, "3107"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0xe

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "3106"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0xd

    goto/16 :goto_2

    :sswitch_16
    const-string v0, "3105"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0xc

    goto/16 :goto_2

    :sswitch_17
    const-string v0, "3104"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0xb

    goto/16 :goto_2

    :sswitch_18
    const-string v0, "3103"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0xa

    goto/16 :goto_2

    :sswitch_19
    const-string v0, "3102"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x9

    goto/16 :goto_2

    :sswitch_1a
    const-string v0, "3101"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x8

    goto :goto_2

    :sswitch_1b
    const-string v0, "3100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x7

    goto :goto_2

    :sswitch_1c
    const-string v0, "17"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x6

    goto :goto_2

    :sswitch_1d
    const-string v0, "15"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x5

    goto :goto_2

    :sswitch_1e
    const-string v0, "13"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x4

    goto :goto_2

    :sswitch_1f
    const-string v0, "11"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x3

    goto :goto_2

    :sswitch_20
    const-string v0, "10"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :sswitch_21
    const-string v0, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1

    goto :goto_2

    :sswitch_22
    const-string v0, "00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x0

    goto :goto_2

    :goto_1
    const/16 v19, -0x1

    :goto_2
    packed-switch v19, :pswitch_data_0

    .line 153
    move/from16 v19, v1

    .end local v1    # "i":I
    .local v19, "i":I
    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "ai":Ljava/lang/String;
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 141
    .end local v19    # "i":I
    .restart local v1    # "i":I
    .restart local v2    # "value":Ljava/lang/String;
    .restart local v3    # "ai":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v19, v1

    const/4 v1, 0x4

    .end local v1    # "i":I
    .restart local v19    # "i":I
    if-ge v0, v1, :cond_3

    .line 145
    return-object v18

    .line 147
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .end local v21    # "price":Ljava/lang/String;
    .local v1, "price":Ljava/lang/String;
    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "price":Ljava/lang/String;
    .local v20, "price":Ljava/lang/String;
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 150
    move-object/from16 v2, v18

    move/from16 v1, v19

    move-object/from16 v0, v20

    goto/16 :goto_0

    .line 134
    .end local v19    # "i":I
    .end local v20    # "price":Ljava/lang/String;
    .local v1, "i":I
    .restart local v21    # "price":Ljava/lang/String;
    :pswitch_1
    move/from16 v19, v1

    const/4 v0, 0x3

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v1, v2

    .line 135
    .end local v21    # "price":Ljava/lang/String;
    .local v1, "price":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 136
    move-object v0, v1

    move-object/from16 v2, v18

    move/from16 v1, v19

    goto/16 :goto_0

    .line 126
    .end local v19    # "i":I
    .local v1, "i":I
    .restart local v21    # "price":Ljava/lang/String;
    :pswitch_2
    move/from16 v19, v1

    const/4 v0, 0x3

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v12, v2

    .line 127
    const-string v13, "LB"

    .line 128
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 129
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 112
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_3
    move/from16 v19, v1

    const/4 v0, 0x3

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v12, v2

    .line 113
    const-string v13, "KG"

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 100
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_4
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v11, v2

    .line 101
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 97
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_5
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v10, v2

    .line 98
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 94
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_6
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v9, v2

    .line 95
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 91
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_7
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v8, v2

    .line 92
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 88
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_8
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v7, v2

    .line 89
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 85
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_9
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v5, v2

    .line 86
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 82
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :pswitch_a
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    move-object v6, v2

    .line 83
    move-object/from16 v2, v18

    move-object/from16 v0, v21

    goto/16 :goto_0

    .line 158
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "ai":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v21    # "price":Ljava/lang/String;
    .restart local v0    # "price":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_4
    move-object/from16 v21, v0

    .end local v0    # "price":Ljava/lang/String;
    .restart local v21    # "price":Ljava/lang/String;
    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object/from16 v18, v15

    move-object/from16 v15, v21

    .end local v21    # "price":Ljava/lang/String;
    .local v15, "price":Ljava/lang/String;
    .local v18, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_22
        0x601 -> :sswitch_21
        0x61f -> :sswitch_20
        0x620 -> :sswitch_1f
        0x622 -> :sswitch_1e
        0x624 -> :sswitch_1d
        0x626 -> :sswitch_1c
        0x17ecde -> :sswitch_1b
        0x17ecdf -> :sswitch_1a
        0x17ece0 -> :sswitch_19
        0x17ece1 -> :sswitch_18
        0x17ece2 -> :sswitch_17
        0x17ece3 -> :sswitch_16
        0x17ece4 -> :sswitch_15
        0x17ece5 -> :sswitch_14
        0x17ece6 -> :sswitch_13
        0x17ece7 -> :sswitch_12
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_10
        0x17f0a1 -> :sswitch_f
        0x17f0a2 -> :sswitch_e
        0x17f0a3 -> :sswitch_d
        0x17f0a4 -> :sswitch_c
        0x17f0a5 -> :sswitch_b
        0x17f0a6 -> :sswitch_a
        0x17f0a7 -> :sswitch_9
        0x17f0a8 -> :sswitch_8
        0x180b24 -> :sswitch_7
        0x180b25 -> :sswitch_6
        0x180b26 -> :sswitch_5
        0x180b27 -> :sswitch_4
        0x180b43 -> :sswitch_3
        0x180b44 -> :sswitch_2
        0x180b45 -> :sswitch_1
        0x180b46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method

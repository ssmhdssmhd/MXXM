.class public Lcom/shenma/tvlauncher/utils/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z

    .line 9
    move/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 10
    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object v4, v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 12
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v4, v2

    .line 15
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-ge v0, v1, :cond_1

    .line 16
    const/4 v1, 0x0

    return-object v1

    .line 19
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 20
    .local v7, "w":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 22
    .local v11, "h":I
    mul-int v2, v7, v11

    new-array v5, v2, [I

    .line 23
    .local v5, "pix":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 25
    add-int/lit8 v2, v7, -0x1

    .line 26
    .local v2, "wm":I
    add-int/lit8 v12, v11, -0x1

    .line 27
    .local v12, "hm":I
    mul-int v13, v7, v11

    .line 28
    .local v13, "wh":I
    add-int v6, v0, v0

    add-int/lit8 v14, v6, 0x1

    .line 30
    .local v14, "div":I
    new-array v15, v13, [I

    .line 31
    .local v15, "r":[I
    new-array v6, v13, [I

    .line 32
    .local v6, "g":[I
    new-array v8, v13, [I

    .line 34
    .local v8, "b":[I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    .line 36
    .local v9, "vmin":[I
    add-int/lit8 v10, v14, 0x1

    shr-int/2addr v10, v1

    .line 37
    .local v10, "divsum":I
    mul-int v10, v10, v10

    .line 38
    const/16 v16, 0x1

    mul-int/lit16 v1, v10, 0x100

    new-array v1, v1, [I

    .line 39
    .local v1, "dv":[I
    const/16 v17, 0x0

    move-object/from16 v18, v1

    move/from16 v1, v17

    .local v1, "i":I
    .local v18, "dv":[I
    :goto_1
    mul-int/lit16 v3, v10, 0x100

    if-ge v1, v3, :cond_2

    .line 40
    div-int v3, v1, v10

    aput v3, v18, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p0

    goto :goto_1

    .line 43
    :cond_2
    const/4 v3, 0x0

    move/from16 v17, v3

    .local v17, "yi":I
    move/from16 v19, v3

    .line 45
    .local v19, "yw":I
    const/16 v20, 0x0

    const/4 v3, 0x2

    move/from16 v21, v1

    .end local v1    # "i":I
    .local v21, "i":I
    new-array v1, v3, [I

    const/16 v22, 0x3

    aput v22, v1, v16

    aput v14, v1, v20

    const/16 v22, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 50
    .local v1, "stack":[[I
    add-int/lit8 v3, v0, 0x1

    .line 54
    .local v3, "r1":I
    const/16 v23, 0x0

    move/from16 v41, v23

    move-object/from16 v23, v1

    move/from16 v1, v41

    .local v1, "y":I
    .local v23, "stack":[[I
    :goto_2
    if-ge v1, v11, :cond_7

    .line 55
    move/from16 v24, v20

    .local v24, "bsum":I
    move/from16 v25, v20

    .local v25, "gsum":I
    move/from16 v26, v20

    .local v26, "rsum":I
    move/from16 v27, v20

    .local v27, "boutsum":I
    move/from16 v28, v20

    .local v28, "goutsum":I
    move/from16 v29, v20

    .local v29, "routsum":I
    move/from16 v30, v20

    .local v30, "binsum":I
    move/from16 v31, v20

    .local v31, "ginsum":I
    move/from16 v32, v20

    .line 56
    .local v32, "rinsum":I
    move/from16 v33, v1

    .end local v1    # "y":I
    .local v33, "y":I
    neg-int v1, v0

    .end local v21    # "i":I
    .local v1, "i":I
    :goto_3
    const v21, 0xff00

    const/high16 v34, 0xff0000

    if-gt v1, v0, :cond_4

    .line 57
    move/from16 v35, v3

    move-object/from16 v36, v4

    const/4 v3, 0x0

    .end local v3    # "r1":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .local v35, "r1":I
    .local v36, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v17, v4

    aget v4, v5, v4

    .line 58
    .local v4, "p":I
    add-int v20, v1, v0

    aget-object v37, v23, v20

    .line 59
    .local v37, "sir":[I
    and-int v20, v4, v34

    shr-int/lit8 v20, v20, 0x10

    aput v20, v37, v3

    .line 60
    and-int v3, v4, v21

    shr-int/lit8 v3, v3, 0x8

    aput v3, v37, v16

    .line 61
    and-int/lit16 v3, v4, 0xff

    aput v3, v37, v22

    .line 62
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v35, v3

    .line 63
    .local v3, "rbs":I
    const/16 v20, 0x0

    aget v21, v37, v20

    mul-int v21, v21, v3

    add-int v26, v26, v21

    .line 64
    aget v21, v37, v16

    mul-int v21, v21, v3

    add-int v25, v25, v21

    .line 65
    aget v21, v37, v22

    mul-int v21, v21, v3

    add-int v24, v24, v21

    .line 66
    if-lez v1, :cond_3

    .line 67
    const/16 v20, 0x0

    aget v21, v37, v20

    add-int v32, v32, v21

    .line 68
    aget v21, v37, v16

    add-int v31, v31, v21

    .line 69
    aget v21, v37, v22

    add-int v30, v30, v21

    goto :goto_4

    .line 71
    :cond_3
    const/16 v20, 0x0

    aget v21, v37, v20

    add-int v29, v29, v21

    .line 72
    aget v21, v37, v16

    add-int v28, v28, v21

    .line 73
    aget v21, v37, v22

    add-int v27, v27, v21

    .line 56
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v35

    move-object/from16 v4, v36

    const/16 v20, 0x0

    goto :goto_3

    .line 76
    .end local v35    # "r1":I
    .end local v36    # "bitmap":Landroid/graphics/Bitmap;
    .end local v37    # "sir":[I
    .local v3, "r1":I
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    move/from16 v35, v3

    move-object/from16 v36, v4

    .end local v3    # "r1":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v35    # "r1":I
    .restart local v36    # "bitmap":Landroid/graphics/Bitmap;
    move/from16 v3, p1

    .line 78
    .local v3, "stackpointer":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_5
    if-ge v4, v7, :cond_6

    .line 80
    aget v37, v18, v26

    aput v37, v15, v17

    .line 81
    aget v37, v18, v25

    aput v37, v6, v17

    .line 82
    aget v37, v18, v24

    aput v37, v8, v17

    .line 84
    sub-int v26, v26, v29

    .line 85
    sub-int v25, v25, v28

    .line 86
    sub-int v24, v24, v27

    .line 88
    sub-int v37, v3, v0

    add-int v37, v37, v14

    .line 89
    .local v37, "stackstart":I
    rem-int v38, v37, v14

    aget-object v38, v23, v38

    .line 91
    .local v38, "sir":[I
    const/16 v20, 0x0

    aget v39, v38, v20

    sub-int v29, v29, v39

    .line 92
    aget v39, v38, v16

    sub-int v28, v28, v39

    .line 93
    aget v39, v38, v22

    sub-int v27, v27, v39

    .line 95
    if-nez v33, :cond_5

    .line 96
    add-int v39, v4, v0

    move/from16 v40, v1

    .end local v1    # "i":I
    .local v40, "i":I
    add-int/lit8 v1, v39, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v9, v4

    goto :goto_6

    .line 95
    .end local v40    # "i":I
    .restart local v1    # "i":I
    :cond_5
    move/from16 v40, v1

    .line 98
    .end local v1    # "i":I
    .restart local v40    # "i":I
    :goto_6
    aget v1, v9, v4

    add-int v1, v19, v1

    aget v1, v5, v1

    .line 100
    .local v1, "p":I
    and-int v39, v1, v34

    shr-int/lit8 v39, v39, 0x10

    const/16 v20, 0x0

    aput v39, v38, v20

    .line 101
    and-int v39, v1, v21

    shr-int/lit8 v39, v39, 0x8

    aput v39, v38, v16

    .line 102
    move/from16 v39, v2

    .end local v2    # "wm":I
    .local v39, "wm":I
    and-int/lit16 v2, v1, 0xff

    aput v2, v38, v22

    .line 104
    aget v2, v38, v20

    add-int v32, v32, v2

    .line 105
    aget v2, v38, v16

    add-int v31, v31, v2

    .line 106
    aget v2, v38, v22

    add-int v30, v30, v2

    .line 108
    add-int v26, v26, v32

    .line 109
    add-int v25, v25, v31

    .line 110
    add-int v24, v24, v30

    .line 112
    add-int/lit8 v2, v3, 0x1

    rem-int v3, v2, v14

    .line 113
    rem-int v2, v3, v14

    aget-object v2, v23, v2

    .line 115
    .end local v38    # "sir":[I
    .local v2, "sir":[I
    const/16 v20, 0x0

    aget v38, v2, v20

    add-int v29, v29, v38

    .line 116
    aget v38, v2, v16

    add-int v28, v28, v38

    .line 117
    aget v38, v2, v22

    add-int v27, v27, v38

    .line 119
    aget v38, v2, v20

    sub-int v32, v32, v38

    .line 120
    aget v38, v2, v16

    sub-int v31, v31, v38

    .line 121
    aget v38, v2, v22

    sub-int v30, v30, v38

    .line 123
    add-int/lit8 v17, v17, 0x1

    .line 78
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v39

    move/from16 v1, v40

    goto/16 :goto_5

    .line 125
    .end local v37    # "stackstart":I
    .end local v39    # "wm":I
    .end local v40    # "i":I
    .local v1, "i":I
    .local v2, "wm":I
    :cond_6
    move/from16 v40, v1

    move/from16 v39, v2

    .end local v1    # "i":I
    .end local v2    # "wm":I
    .restart local v39    # "wm":I
    .restart local v40    # "i":I
    add-int v19, v19, v7

    .line 54
    add-int/lit8 v1, v33, 0x1

    move/from16 v3, v35

    move-object/from16 v4, v36

    move/from16 v21, v40

    const/16 v20, 0x0

    .end local v33    # "y":I
    .local v1, "y":I
    goto/16 :goto_2

    .line 127
    .end local v24    # "bsum":I
    .end local v25    # "gsum":I
    .end local v26    # "rsum":I
    .end local v27    # "boutsum":I
    .end local v28    # "goutsum":I
    .end local v29    # "routsum":I
    .end local v30    # "binsum":I
    .end local v31    # "ginsum":I
    .end local v32    # "rinsum":I
    .end local v35    # "r1":I
    .end local v36    # "bitmap":Landroid/graphics/Bitmap;
    .end local v39    # "wm":I
    .end local v40    # "i":I
    .restart local v2    # "wm":I
    .local v3, "r1":I
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "i":I
    :cond_7
    move/from16 v33, v1

    move/from16 v39, v2

    move/from16 v35, v3

    move-object/from16 v36, v4

    .end local v1    # "y":I
    .end local v2    # "wm":I
    .end local v3    # "r1":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v33    # "y":I
    .restart local v35    # "r1":I
    .restart local v36    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v39    # "wm":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_7
    if-ge v1, v7, :cond_d

    .line 128
    const/4 v3, 0x0

    move v2, v3

    .local v2, "bsum":I
    move v4, v3

    .local v4, "gsum":I
    move/from16 v20, v3

    .local v20, "rsum":I
    move/from16 v24, v3

    .local v24, "boutsum":I
    move/from16 v25, v3

    .local v25, "goutsum":I
    move/from16 v26, v3

    .local v26, "routsum":I
    move/from16 v27, v3

    .local v27, "binsum":I
    move/from16 v28, v3

    .local v28, "ginsum":I
    move/from16 v29, v3

    .line 129
    .local v29, "rinsum":I
    neg-int v3, v0

    mul-int v3, v3, v7

    .line 130
    .local v3, "yp":I
    move/from16 v31, v1

    .end local v1    # "x":I
    .local v31, "x":I
    neg-int v1, v0

    move/from16 v21, v20

    .end local v20    # "rsum":I
    .local v1, "i":I
    .local v21, "rsum":I
    :goto_8
    if-gt v1, v0, :cond_a

    .line 131
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    add-int v17, v20, v31

    .line 133
    add-int v20, v1, p1

    aget-object v30, v23, v20

    .line 135
    .local v30, "sir":[I
    aget v20, v15, v17

    aput v20, v30, v0

    .line 136
    aget v0, v6, v17

    aput v0, v30, v16

    .line 137
    aget v0, v8, v17

    aput v0, v30, v22

    .line 139
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v35, v0

    .line 141
    .local v0, "rbs":I
    aget v32, v15, v17

    mul-int v32, v32, v0

    add-int v21, v21, v32

    .line 142
    aget v32, v6, v17

    mul-int v32, v32, v0

    add-int v4, v4, v32

    .line 143
    aget v32, v8, v17

    mul-int v32, v32, v0

    add-int v2, v2, v32

    .line 145
    if-lez v1, :cond_8

    .line 146
    const/16 v20, 0x0

    aget v32, v30, v20

    add-int v29, v29, v32

    .line 147
    aget v32, v30, v16

    add-int v28, v28, v32

    .line 148
    aget v32, v30, v22

    add-int v27, v27, v32

    goto :goto_9

    .line 150
    :cond_8
    const/16 v20, 0x0

    aget v32, v30, v20

    add-int v26, v26, v32

    .line 151
    aget v32, v30, v16

    add-int v25, v25, v32

    .line 152
    aget v32, v30, v22

    add-int v24, v24, v32

    .line 155
    :goto_9
    if-ge v1, v12, :cond_9

    .line 156
    add-int/2addr v3, v7

    .line 130
    :cond_9
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p1

    goto :goto_8

    .line 159
    .end local v0    # "rbs":I
    .end local v30    # "sir":[I
    :cond_a
    move/from16 v0, v31

    .line 160
    .end local v17    # "yi":I
    .local v0, "yi":I
    move/from16 v17, p1

    .line 161
    .local v17, "stackpointer":I
    const/16 v30, 0x0

    move/from16 v41, v30

    move/from16 v30, v0

    move/from16 v0, v41

    .end local v33    # "y":I
    .local v0, "y":I
    .local v30, "yi":I
    :goto_a
    if-ge v0, v11, :cond_c

    .line 163
    const/high16 v32, -0x1000000

    aget v33, v5, v30

    and-int v32, v33, v32

    aget v33, v18, v21

    shl-int/lit8 v33, v33, 0x10

    or-int v32, v32, v33

    aget v33, v18, v4

    shl-int/lit8 v33, v33, 0x8

    or-int v32, v32, v33

    aget v33, v18, v2

    or-int v32, v32, v33

    aput v32, v5, v30

    .line 165
    sub-int v21, v21, v26

    .line 166
    sub-int v4, v4, v25

    .line 167
    sub-int v2, v2, v24

    .line 169
    sub-int v32, v17, p1

    add-int v32, v32, v14

    .line 170
    .local v32, "stackstart":I
    rem-int v33, v32, v14

    aget-object v33, v23, v33

    .line 172
    .local v33, "sir":[I
    const/16 v20, 0x0

    aget v34, v33, v20

    sub-int v26, v26, v34

    .line 173
    aget v34, v33, v16

    sub-int v25, v25, v34

    .line 174
    aget v34, v33, v22

    sub-int v24, v24, v34

    .line 176
    if-nez v31, :cond_b

    .line 177
    move/from16 v34, v0

    .end local v0    # "y":I
    .local v34, "y":I
    add-int v0, v34, v35

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v7

    aput v0, v9, v34

    goto :goto_b

    .line 176
    .end local v34    # "y":I
    .restart local v0    # "y":I
    :cond_b
    move/from16 v34, v0

    .line 179
    .end local v0    # "y":I
    .restart local v34    # "y":I
    :goto_b
    aget v0, v9, v34

    add-int v0, v31, v0

    .line 181
    .local v0, "p":I
    aget v37, v15, v0

    const/16 v20, 0x0

    aput v37, v33, v20

    .line 182
    aget v37, v6, v0

    aput v37, v33, v16

    .line 183
    aget v37, v8, v0

    aput v37, v33, v22

    .line 185
    aget v37, v33, v20

    add-int v29, v29, v37

    .line 186
    aget v37, v33, v16

    add-int v28, v28, v37

    .line 187
    aget v37, v33, v22

    add-int v27, v27, v37

    .line 189
    add-int v21, v21, v29

    .line 190
    add-int v4, v4, v28

    .line 191
    add-int v2, v2, v27

    .line 193
    add-int/lit8 v37, v17, 0x1

    rem-int v17, v37, v14

    .line 194
    aget-object v33, v23, v17

    .line 196
    const/16 v20, 0x0

    aget v37, v33, v20

    add-int v26, v26, v37

    .line 197
    aget v37, v33, v16

    add-int v25, v25, v37

    .line 198
    aget v37, v33, v22

    add-int v24, v24, v37

    .line 200
    aget v37, v33, v20

    sub-int v29, v29, v37

    .line 201
    aget v37, v33, v16

    sub-int v28, v28, v37

    .line 202
    aget v37, v33, v22

    sub-int v27, v27, v37

    .line 204
    add-int v30, v30, v7

    .line 161
    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    goto/16 :goto_a

    .line 127
    .end local v32    # "stackstart":I
    .end local v33    # "sir":[I
    .end local v34    # "y":I
    .local v0, "y":I
    :cond_c
    move/from16 v34, v0

    const/16 v20, 0x0

    .end local v0    # "y":I
    .restart local v34    # "y":I
    add-int/lit8 v0, v31, 0x1

    move/from16 v21, v1

    move/from16 v17, v30

    move/from16 v33, v34

    move v1, v0

    move/from16 v0, p1

    .end local v31    # "x":I
    .local v0, "x":I
    goto/16 :goto_7

    .line 208
    .end local v0    # "x":I
    .end local v2    # "bsum":I
    .end local v3    # "yp":I
    .end local v4    # "gsum":I
    .end local v24    # "boutsum":I
    .end local v25    # "goutsum":I
    .end local v26    # "routsum":I
    .end local v27    # "binsum":I
    .end local v28    # "ginsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "yi":I
    .end local v34    # "y":I
    .local v1, "x":I
    .local v17, "yi":I
    .local v21, "i":I
    .local v33, "y":I
    :cond_d
    move/from16 v31, v1

    .end local v1    # "x":I
    .restart local v31    # "x":I
    move-object v0, v8

    .end local v8    # "b":[I
    .local v0, "b":[I
    const/4 v8, 0x0

    move-object v1, v9

    .end local v9    # "vmin":[I
    .local v1, "vmin":[I
    const/4 v9, 0x0

    move-object v2, v6

    .end local v6    # "g":[I
    .local v2, "g":[I
    const/4 v6, 0x0

    move v3, v10

    .end local v10    # "divsum":I
    .local v3, "divsum":I
    move v10, v7

    move-object/from16 v4, v36

    .end local v36    # "bitmap":Landroid/graphics/Bitmap;
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 209
    return-object v4
.end method

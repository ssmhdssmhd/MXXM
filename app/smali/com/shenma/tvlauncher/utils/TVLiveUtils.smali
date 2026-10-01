.class public Lcom/shenma/tvlauncher/utils/TVLiveUtils;
.super Ljava/lang/Object;
.source "TVLiveUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBase64Code(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "port"    # J

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 243
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/play?enc=base64&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&taskid=&mediatype=m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getData(I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 21
    const-string v1, "\u89c6\u9891\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v1, "\u753b\u9762\u6bd4\u4f8b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "\u504f\u597d\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v1, "\u5207\u6e90\u8d85\u65f6\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 27
    const-string v1, "\u8f6f\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v1, "\u786c\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 31
    const-string v1, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "4:3 \u7f29\u653e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "16:9\u7f29\u653e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "\u9ed8\u8ba4\u5168\u5c4f"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 37
    const-string v1, "\u4e0a\u4e0b\u952e\u6362\u53f0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "\u4e0a\u4e0b\u952e\u8c03\u8282\u97f3\u91cf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 41
    const-string v1, "5\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v1, "8\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "10\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "12\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "15\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static selectScales(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;III)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mVV"    # Lcom/baidu/cyberplayer/core/BVideoView;
    .param p2, "paramInt"    # I
    .param p3, "mWidth"    # I
    .param p4, "mHeight"    # I

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 143
    return-void

    .line 144
    :cond_0
    move/from16 v1, p3

    .line 145
    .local v1, "dw":I
    move/from16 v2, p4

    .line 146
    .local v2, "dh":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v3, "localRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/core/BVideoView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 149
    .local v4, "i1":I
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 150
    .local v5, "i2":I
    sub-int v6, v4, v5

    int-to-double v6, v6

    .line 151
    .local v6, "d1":D
    iget v8, v3, Landroid/graphics/Rect;->right:I

    .line 152
    .local v8, "i3":I
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 153
    .local v9, "i4":I
    sub-int v10, v8, v9

    int-to-double v10, v10

    .line 154
    .local v10, "d2":D
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "diplay = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "str2":Ljava/lang/String;
    const-wide/16 v13, 0x0

    cmpg-double v15, v6, v13

    if-gtz v15, :cond_1

    .line 157
    return-void

    .line 158
    :cond_1
    cmpg-double v15, v10, v13

    if-gtz v15, :cond_2

    .line 159
    return-void

    .line 160
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->getVideoHeight()I

    move-result v15

    .line 161
    .local v15, "mVideoHeight":I
    move-wide/from16 v16, v13

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->getVideoHeight()I

    move-result v13

    .line 162
    .local v13, "mVideoWidth":I
    move v14, v1

    move/from16 v18, v2

    .end local v1    # "dw":I
    .end local v2    # "dh":I
    .local v14, "dw":I
    .local v18, "dh":I
    int-to-double v1, v15

    cmpg-double v19, v1, v16

    if-gtz v19, :cond_3

    .line 163
    return-void

    .line 164
    :cond_3
    int-to-double v1, v13

    cmpg-double v19, v1, v16

    if-gtz v19, :cond_4

    .line 165
    return-void

    .line 166
    :cond_4
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 167
    .local v1, "localLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    packed-switch p2, :pswitch_data_0

    .line 232
    return-void

    .line 223
    :pswitch_0
    double-to-int v2, v10

    .line 224
    .local v2, "i24":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    move/from16 v16, v2

    .end local v2    # "i24":I
    .local v16, "i24":I
    add-int/lit8 v2, p4, 0x78

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void

    .line 208
    .end local v16    # "i24":I
    :pswitch_1
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v10, v6

    const-wide v19, 0x3ffc71c71c71c71dL    # 1.777777777777778

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const-wide/high16 v23, 0x4022000000000000L    # 9.0

    cmpl-double v2, v16, v19

    if-ltz v2, :cond_5

    .line 209
    double-to-int v2, v6

    .line 210
    .local v2, "i18":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v21, v21, v6

    move/from16 v17, v2

    move-object/from16 v16, v3

    .end local v2    # "i18":I
    .end local v3    # "localRect":Landroid/graphics/Rect;
    .local v16, "localRect":Landroid/graphics/Rect;
    .local v17, "i18":I
    div-double v2, v21, v23

    double-to-int v2, v2

    .line 212
    .local v2, "i19":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    .end local v2    # "i19":I
    .end local v17    # "i18":I
    goto :goto_0

    .line 214
    .end local v16    # "localRect":Landroid/graphics/Rect;
    .restart local v3    # "localRect":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v16, v3

    .end local v3    # "localRect":Landroid/graphics/Rect;
    .restart local v16    # "localRect":Landroid/graphics/Rect;
    double-to-int v2, v10

    .line 215
    .local v2, "i22":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v23, v23, v10

    move/from16 v17, v2

    .end local v2    # "i22":I
    .local v17, "i22":I
    div-double v2, v23, v21

    double-to-int v2, v2

    .line 217
    .local v2, "i23":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    .end local v2    # "i23":I
    .end local v17    # "i22":I
    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void

    .line 193
    .end local v16    # "localRect":Landroid/graphics/Rect;
    .restart local v3    # "localRect":Landroid/graphics/Rect;
    :pswitch_2
    move-object/from16 v16, v3

    .end local v3    # "localRect":Landroid/graphics/Rect;
    .restart local v16    # "localRect":Landroid/graphics/Rect;
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v10, v6

    const-wide v19, 0x3ff5555555555554L    # 1.333333333333333

    const-wide/high16 v21, 0x4010000000000000L    # 4.0

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    cmpl-double v17, v2, v19

    if-ltz v17, :cond_6

    .line 194
    double-to-int v2, v6

    .line 195
    .local v2, "i12":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v21, v21, v6

    move/from16 v17, v2

    .end local v2    # "i12":I
    .local v17, "i12":I
    div-double v2, v21, v23

    double-to-int v2, v2

    .line 197
    .local v2, "i13":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    .end local v2    # "i13":I
    .end local v17    # "i12":I
    goto :goto_1

    .line 199
    :cond_6
    double-to-int v2, v10

    .line 200
    .local v2, "i16":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v23, v23, v10

    move/from16 v17, v2

    .end local v2    # "i16":I
    .local v17, "i16":I
    div-double v2, v23, v21

    double-to-int v2, v2

    .line 202
    .local v2, "i17":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    .end local v2    # "i17":I
    .end local v17    # "i16":I
    :goto_1
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void

    .line 170
    .end local v16    # "localRect":Landroid/graphics/Rect;
    .restart local v3    # "localRect":Landroid/graphics/Rect;
    :pswitch_3
    move-object/from16 v16, v3

    .end local v3    # "localRect":Landroid/graphics/Rect;
    .restart local v16    # "localRect":Landroid/graphics/Rect;
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v10, v6

    .line 171
    .local v2, "d3":D
    move/from16 v17, v13

    .line 172
    .local v17, "i6":I
    move/from16 v19, v15

    .line 173
    .local v19, "i7":I
    move-wide/from16 v20, v2

    .end local v2    # "d3":D
    .local v20, "d3":D
    div-int v2, v17, v19

    int-to-double v2, v2

    .line 174
    .local v2, "d4":D
    cmpg-double v22, v20, v2

    if-gez v22, :cond_7

    .line 175
    move-wide/from16 v22, v2

    .end local v2    # "d4":D
    .local v22, "d4":D
    double-to-int v2, v10

    .line 176
    .local v2, "i24":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    move/from16 v24, v2

    .end local v2    # "i24":I
    .local v24, "i24":I
    int-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v10

    .line 178
    .local v2, "d7":D
    move-wide/from16 v25, v2

    .end local v2    # "d7":D
    .local v25, "d7":D
    int-to-double v2, v13

    .line 179
    .local v2, "d8":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v27, v2

    .end local v2    # "d8":D
    .local v27, "d8":D
    div-double v2, v25, v27

    double-to-int v2, v2

    .line 180
    .local v2, "i25":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    .end local v2    # "i25":I
    .end local v24    # "i24":I
    .end local v25    # "d7":D
    .end local v27    # "d8":D
    goto :goto_2

    .line 182
    .end local v22    # "d4":D
    .local v2, "d4":D
    :cond_7
    move-wide/from16 v22, v2

    .end local v2    # "d4":D
    .restart local v22    # "d4":D
    double-to-int v2, v6

    .line 183
    .local v2, "i8":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    move/from16 v24, v2

    .end local v2    # "i8":I
    .local v24, "i8":I
    int-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    .line 185
    .local v2, "d5":D
    move-wide/from16 v25, v2

    .end local v2    # "d5":D
    .local v25, "d5":D
    int-to-double v2, v15

    .line 186
    .local v2, "d6":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v27, v2

    .end local v2    # "d6":D
    .local v27, "d6":D
    div-double v2, v25, v27

    double-to-int v2, v2

    .line 187
    .local v2, "i9":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    .end local v2    # "i9":I
    .end local v24    # "i8":I
    .end local v25    # "d5":D
    .end local v27    # "d6":D
    :goto_2
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

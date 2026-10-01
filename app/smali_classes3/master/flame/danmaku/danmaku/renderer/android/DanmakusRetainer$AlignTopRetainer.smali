.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlignTopRetainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;
    }
.end annotation


# instance fields
.field protected mCancelFixingFlag:Z

.field protected mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;

.field protected mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mCancelFixingFlag:Z

    .line 190
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;)V
    .locals 0
    .param p1, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;

    .line 115
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mCancelFixingFlag:Z

    .line 290
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->clear()V

    .line 291
    return-void
.end method

.method public fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V
    .locals 20
    .param p1, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p3, "verifier"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    return-void

    .line 196
    :cond_0
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v1

    int-to-float v1, v1

    .line 197
    .local v1, "topPos":F
    const/4 v4, 0x0

    .line 198
    .local v4, "lines":I
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v5

    .line 199
    .local v5, "shown":Z
    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget-object v8, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v8}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 200
    .local v8, "willHit":Z
    :goto_0
    const/4 v9, 0x0

    .line 201
    .local v9, "isOutOfVertialEdge":Z
    const/4 v10, 0x0

    .line 202
    .local v10, "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getMargin()I

    move-result v11

    .line 203
    .local v11, "margin":I
    if-nez v5, :cond_d

    .line 204
    iput-boolean v6, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mCancelFixingFlag:Z

    .line 206
    const/4 v6, 0x0

    .local v6, "insertItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v12, 0x0

    .local v12, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v13, 0x0

    .local v13, "lastItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v14, 0x0

    .line 207
    .local v14, "minRightRow":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v15, 0x0

    .line 208
    .local v15, "overwriteInsert":Z
    move/from16 v16, v1

    .end local v1    # "topPos":F
    .local v16, "topPos":F
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;

    iput-object v3, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 209
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;

    iput-object v2, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 210
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;

    invoke-virtual {v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 211
    iget-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->result()Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;

    move-result-object v1

    .line 212
    .local v1, "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    if-eqz v1, :cond_2

    .line 213
    iget v4, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->lines:I

    .line 214
    iget-object v6, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 215
    iget-object v12, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 216
    iget-object v13, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 217
    iget-object v14, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 218
    iget-boolean v15, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->overwriteInsert:Z

    .line 219
    iget-boolean v5, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->shown:Z

    .line 220
    iget-boolean v8, v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->willHit:Z

    move v3, v8

    move v8, v4

    move-object v4, v12

    move-object v12, v6

    move-object v6, v13

    goto :goto_1

    .line 212
    :cond_2
    move v3, v8

    move v8, v4

    move-object v4, v12

    move-object v12, v6

    move-object v6, v13

    .line 222
    .end local v13    # "lastItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v3, "willHit":Z
    .local v4, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v6, "lastItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v8, "lines":I
    .local v12, "insertItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_1
    const/4 v13, 0x1

    .line 223
    .local v13, "checkEdge":Z
    if-eqz v12, :cond_5

    .line 224
    if-eqz v6, :cond_3

    .line 225
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v17

    int-to-float v0, v11

    add-float v17, v17, v0

    .end local v16    # "topPos":F
    .local v17, "topPos":F
    goto :goto_2

    .line 227
    .end local v17    # "topPos":F
    .restart local v16    # "topPos":F
    :cond_3
    invoke-virtual {v12}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v17

    .line 228
    .end local v16    # "topPos":F
    .restart local v17    # "topPos":F
    :goto_2
    if-eq v12, v2, :cond_4

    .line 229
    move-object v10, v12

    .line 230
    const/4 v0, 0x0

    move-object v5, v4

    move-object/from16 v16, v10

    move/from16 v4, v17

    move v10, v3

    move/from16 v17, v13

    move v13, v0

    .end local v5    # "shown":Z
    .local v0, "shown":Z
    goto/16 :goto_3

    .line 228
    .end local v0    # "shown":Z
    .restart local v5    # "shown":Z
    :cond_4
    move/from16 v16, v5

    move-object v5, v4

    move/from16 v4, v17

    move/from16 v17, v13

    move/from16 v13, v16

    move-object/from16 v16, v10

    move v10, v3

    goto/16 :goto_3

    .line 232
    .end local v17    # "topPos":F
    .restart local v16    # "topPos":F
    :cond_5
    if-eqz v15, :cond_6

    if-eqz v14, :cond_6

    .line 233
    invoke-virtual {v14}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v17

    .line 234
    .end local v16    # "topPos":F
    .restart local v17    # "topPos":F
    const/4 v13, 0x0

    .line 235
    const/4 v0, 0x0

    move-object v5, v4

    move-object/from16 v16, v10

    move/from16 v4, v17

    move v10, v3

    move/from16 v17, v13

    move v13, v0

    .end local v5    # "shown":Z
    .restart local v0    # "shown":Z
    goto :goto_3

    .line 236
    .end local v0    # "shown":Z
    .end local v17    # "topPos":F
    .restart local v5    # "shown":Z
    .restart local v16    # "topPos":F
    :cond_6
    if-eqz v6, :cond_7

    .line 237
    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v0

    move/from16 v17, v0

    int-to-float v0, v11

    add-float v17, v17, v0

    .line 238
    .end local v16    # "topPos":F
    .restart local v17    # "topPos":F
    const/4 v3, 0x0

    move/from16 v16, v5

    move-object v5, v4

    move/from16 v4, v17

    move/from16 v17, v13

    move/from16 v13, v16

    move-object/from16 v16, v10

    move v10, v3

    goto :goto_3

    .line 239
    .end local v17    # "topPos":F
    .restart local v16    # "topPos":F
    :cond_7
    if-eqz v4, :cond_8

    .line 240
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v17

    .line 241
    .end local v16    # "topPos":F
    .restart local v17    # "topPos":F
    move-object v10, v4

    .line 242
    const/4 v0, 0x0

    move-object v5, v4

    move-object/from16 v16, v10

    move/from16 v4, v17

    move v10, v3

    move/from16 v17, v13

    move v13, v0

    .end local v5    # "shown":Z
    .restart local v0    # "shown":Z
    goto :goto_3

    .line 244
    .end local v0    # "shown":Z
    .end local v17    # "topPos":F
    .restart local v5    # "shown":Z
    .restart local v16    # "topPos":F
    :cond_8
    invoke-interface/range {p2 .. p2}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v0

    int-to-float v0, v0

    move-object/from16 v16, v10

    move/from16 v17, v13

    move v10, v3

    move v13, v5

    move-object v5, v4

    move v4, v0

    .line 246
    .end local v3    # "willHit":Z
    .local v4, "topPos":F
    .local v5, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v10, "willHit":Z
    .local v13, "shown":Z
    .local v16, "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v17, "checkEdge":Z
    :goto_3
    if-eqz v17, :cond_9

    .line 247
    move v0, v15

    move-object v15, v1

    move v1, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    .local v1, "overwriteInsert":Z
    .local v15, "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->isOutVerticalEdge(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;FLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v9

    goto :goto_4

    .line 246
    .local v1, "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    .local v15, "overwriteInsert":Z
    :cond_9
    move v0, v15

    move-object v15, v1

    move v1, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    .line 250
    .local v1, "overwriteInsert":Z
    .local v15, "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    :goto_4
    if-eqz v9, :cond_a

    .line 251
    move/from16 v18, v1

    .end local v1    # "overwriteInsert":Z
    .local v18, "overwriteInsert":Z
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v1

    int-to-float v1, v1

    .line 252
    .end local v4    # "topPos":F
    .local v1, "topPos":F
    const/4 v4, 0x1

    .line 253
    .end local v10    # "willHit":Z
    .local v4, "willHit":Z
    const/4 v8, 0x1

    move/from16 v19, v8

    move v8, v4

    move/from16 v4, v19

    goto :goto_5

    .line 254
    .end local v18    # "overwriteInsert":Z
    .local v1, "overwriteInsert":Z
    .local v4, "topPos":F
    .restart local v10    # "willHit":Z
    :cond_a
    move/from16 v18, v1

    .end local v1    # "overwriteInsert":Z
    .restart local v18    # "overwriteInsert":Z
    if-eqz v16, :cond_b

    .line 255
    add-int/lit8 v8, v8, -0x1

    move v1, v4

    move v4, v8

    move v8, v10

    goto :goto_5

    .line 254
    :cond_b
    move v1, v4

    move v4, v8

    move v8, v10

    .line 257
    .end local v10    # "willHit":Z
    .local v1, "topPos":F
    .local v4, "lines":I
    .local v8, "willHit":Z
    :goto_5
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-nez v10, :cond_c

    .line 258
    const/4 v10, 0x0

    move v5, v10

    move-object/from16 v10, v16

    .end local v13    # "shown":Z
    .local v10, "shown":Z
    goto :goto_6

    .line 257
    .end local v10    # "shown":Z
    .restart local v13    # "shown":Z
    :cond_c
    move v5, v13

    move-object/from16 v10, v16

    goto :goto_6

    .line 203
    .end local v6    # "lastItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v12    # "insertItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v13    # "shown":Z
    .end local v14    # "minRightRow":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v15    # "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    .end local v16    # "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v17    # "checkEdge":Z
    .end local v18    # "overwriteInsert":Z
    .local v5, "shown":Z
    .local v10, "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_d
    move/from16 v16, v1

    .line 262
    :goto_6
    if-eqz v7, :cond_e

    invoke-interface {v7, v2, v1, v4, v8}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;->skipLayout(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FIZ)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 263
    return-void

    .line 266
    :cond_e
    if-eqz v9, :cond_f

    .line 267
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->clear()V

    .line 270
    :cond_f
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v6

    invoke-virtual {v2, v3, v6, v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V

    .line 272
    if-nez v5, :cond_10

    .line 273
    iget-object v6, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v6, v10}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 274
    iget-object v6, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v6, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 277
    :cond_10
    return-void
.end method

.method protected isOutVerticalEdge(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;FLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "overwriteInsert"    # Z
    .param p2, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p4, "topPos"    # F
    .param p5, "firstItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p6, "lastItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 281
    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_2

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v0, p4

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

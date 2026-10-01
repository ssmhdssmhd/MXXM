.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;
.super Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlignBottomRetainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;
    }
.end annotation


# instance fields
.field protected mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

.field protected mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;)V

    .line 371
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    .line 372
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;)V
    .locals 0
    .param p1, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;

    .line 308
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mCancelFixingFlag:Z

    .line 447
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->clear()V

    .line 448
    return-void
.end method

.method public fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V
    .locals 14
    .param p1, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p3, "verifier"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .line 376
    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v1

    .line 379
    .local v1, "shown":Z
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v4

    goto :goto_0

    :cond_1
    const/high16 v4, -0x40800000    # -1.0f

    .line 380
    .local v4, "topPos":F
    :goto_0
    const/4 v5, 0x0

    .line 381
    .local v5, "lines":I
    const/4 v6, 0x0

    if-nez v1, :cond_2

    iget-object v8, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v8}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 382
    .local v8, "willHit":Z
    :goto_1
    const/4 v9, 0x0

    .line 383
    .local v9, "isOutOfVerticalEdge":Z
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_3

    .line 384
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float v4, v10, v11

    .line 386
    :cond_3
    const/4 v10, 0x0

    .local v10, "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v11, 0x0

    .line 387
    .local v11, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-nez v1, :cond_8

    .line 388
    iput-boolean v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mCancelFixingFlag:Z

    .line 389
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    iput v4, v6, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;->topPos:F

    .line 390
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    iput-object v3, v6, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 391
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    iput-object p1, v6, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 392
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v12, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    invoke-virtual {v6, v12}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 393
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;->result()Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;

    move-result-object v12

    .line 394
    .local v12, "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;

    iget v4, v6, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer$RetainerConsumer;->topPos:F

    .line 395
    if-eqz v12, :cond_4

    .line 396
    iget v5, v12, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->lines:I

    .line 397
    iget-object v11, v12, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 398
    iget-object v10, v12, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->removeItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 399
    iget-boolean v1, v12, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->shown:Z

    .line 400
    iget-boolean v8, v12, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->willHit:Z

    move-object v13, v10

    move v10, v5

    move-object v5, v11

    move v11, v8

    move v8, v1

    goto :goto_2

    .line 395
    :cond_4
    move-object v13, v10

    move v10, v5

    move-object v5, v11

    move v11, v8

    move v8, v1

    .line 403
    .end local v1    # "shown":Z
    .local v5, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v8, "shown":Z
    .local v10, "lines":I
    .local v11, "willHit":Z
    .local v13, "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_2
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->isOutVerticalEdge(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;FLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v9

    .line 404
    if-eqz v9, :cond_5

    .line 405
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float v4, v1, v6

    .line 406
    const/4 v1, 0x1

    .line 407
    .end local v11    # "willHit":Z
    .local v1, "willHit":Z
    const/4 v6, 0x1

    move v10, v8

    move v8, v1

    move v1, v10

    move-object v11, v5

    move v5, v6

    move-object v10, v13

    .end local v10    # "lines":I
    .local v6, "lines":I
    goto :goto_4

    .line 409
    .end local v1    # "willHit":Z
    .end local v6    # "lines":I
    .restart local v10    # "lines":I
    .restart local v11    # "willHit":Z
    :cond_5
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_6

    .line 410
    const/4 v1, 0x0

    .end local v11    # "willHit":Z
    .restart local v1    # "willHit":Z
    goto :goto_3

    .line 409
    .end local v1    # "willHit":Z
    .restart local v11    # "willHit":Z
    :cond_6
    move v1, v11

    .line 412
    .end local v11    # "willHit":Z
    .restart local v1    # "willHit":Z
    :goto_3
    if-eqz v13, :cond_7

    .line 413
    add-int/lit8 v6, v10, -0x1

    move v10, v8

    move v8, v1

    move v1, v10

    move-object v11, v5

    move v5, v6

    move-object v10, v13

    .end local v10    # "lines":I
    .restart local v6    # "lines":I
    goto :goto_4

    .line 412
    .end local v6    # "lines":I
    .restart local v10    # "lines":I
    :cond_7
    move v11, v8

    move v8, v1

    move v1, v11

    move-object v11, v5

    move v5, v10

    move-object v10, v13

    .line 419
    .end local v12    # "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    .end local v13    # "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v1, "shown":Z
    .local v5, "lines":I
    .local v8, "willHit":Z
    .local v10, "removeItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v11, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    invoke-interface {v7, p1, v4, v5, v8}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;->skipLayout(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FIZ)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 420
    return-void

    .line 423
    :cond_9
    if-eqz v9, :cond_a

    .line 424
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->clear()V

    .line 427
    :cond_a
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v6

    invoke-virtual {p1, v3, v6, v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->layout(Lmaster/flame/danmaku/danmaku/model/IDisplayer;FF)V

    .line 429
    if-nez v1, :cond_b

    .line 430
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v6, v10}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 431
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignBottomRetainer;->mVisibleDanmakus:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v6, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 434
    :cond_b
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

    .line 438
    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getAllMarginTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v0

    invoke-interface {p3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 439
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

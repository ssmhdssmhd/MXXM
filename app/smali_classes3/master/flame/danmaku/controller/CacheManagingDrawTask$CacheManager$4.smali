.class Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->findReusableCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field mResult:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field final synthetic this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

.field final synthetic val$finalSlopPixel:I

.field final synthetic val$maximumTimes:I

.field final synthetic val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field final synthetic val$strictMode:Z


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;ILmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)V
    .locals 0
    .param p1, "this$1"    # Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 433
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iput p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$maximumTimes:I

    iput-object p3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-boolean p4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$strictMode:Z

    iput p5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$finalSlopPixel:I

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;-><init>()V

    .line 434
    const/4 p2, 0x0

    iput p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->count:I

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 433
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 7
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 444
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->count:I

    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$maximumTimes:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 445
    return v2

    .line 447
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDrawingCache()Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-result-object v0

    .line 448
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 451
    :cond_1
    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    if-ne v3, v4, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-ne v3, v4, :cond_2

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->tag:Ljava/lang/Object;

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->tag:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    .line 458
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->mResult:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 459
    return v2

    .line 461
    :cond_2
    iget-boolean v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$strictMode:Z

    if-eqz v3, :cond_3

    .line 462
    return v1

    .line 464
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-nez v3, :cond_4

    .line 465
    return v2

    .line 467
    :cond_4
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 468
    return v1

    .line 470
    :cond_5
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    sub-float/2addr v3, v4

    .line 471
    .local v3, "widthGap":F
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$refDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float/2addr v4, v5

    .line 472
    .local v4, "heightGap":F
    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_6

    iget v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$finalSlopPixel:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_6

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_6

    iget v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->val$finalSlopPixel:I

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_6

    .line 474
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->mResult:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 475
    return v2

    .line 477
    :cond_6
    return v1

    .line 449
    .end local v3    # "widthGap":F
    .end local v4    # "heightGap":F
    :cond_7
    :goto_0
    return v1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->result()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method public result()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1

    .line 439
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$4;->mResult:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    return-object v0
.end method

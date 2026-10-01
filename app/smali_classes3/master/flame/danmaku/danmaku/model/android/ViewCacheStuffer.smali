.class public abstract Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;
.super Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
.source "ViewCacheStuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;",
        ">",
        "Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;"
    }
.end annotation


# static fields
.field public static final CACHE_VIEW_TYPE:I = -0x3

.field public static final DRAW_VIEW_TYPE:I = -0x3

.field public static final INVALID_TYPE:I = -0x1

.field public static final MEASURE_VIEW_TYPE:I = -0x2


# instance fields
.field private final mMaximumHeightPixels:I

.field private final mMaximumWidthPixels:I

.field private mViewHolderArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "TVH;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;, "Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer<TVH;>;"
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mViewHolderArray:Landroid/util/SparseArray;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mMaximumWidthPixels:I

    .line 68
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mMaximumHeightPixels:I

    .line 69
    return-void
.end method


# virtual methods
.method public clearCaches()V
    .locals 0

    .line 94
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;, "Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer<TVH;>;"
    return-void
.end method

.method public drawDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)V
    .locals 22
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "fromWorkerThread"    # Z
    .param p6, "displayerConfig"    # Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;

    .line 104
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;, "Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer<TVH;>;"
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v6, p5

    move-object/from16 v4, p6

    iget v1, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    invoke-virtual {v0, v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->getItemViewType(ILmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v1

    .line 105
    .local v1, "viewType":I
    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mViewHolderArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 106
    .local v7, "viewHolders":Ljava/util/List;, "Ljava/util/List<TVH;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, "viewHolder":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;, "TVH;"
    if-eqz v7, :cond_1

    .line 108
    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;

    .line 110
    :cond_1
    if-nez v2, :cond_2

    .line 111
    return-void

    .line 114
    :cond_2
    invoke-virtual {v4, v6}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->definePaintParams(Z)V

    .line 115
    invoke-virtual {v4, v3, v6}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v5

    .line 116
    .local v5, "paint":Landroid/text/TextPaint;
    const/4 v8, 0x0

    invoke-virtual {v4, v3, v5, v8}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->applyPaintConfig(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 118
    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->onBindViewHolder(ILmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;Landroid/text/TextPaint;)V

    .line 119
    iget v0, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v10, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v2, v0, v9}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->measure(II)V

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "needRestore":Z
    if-nez v6, :cond_3

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    .line 123
    invoke-virtual/range {p2 .. p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    const/4 v0, 0x1

    .line 127
    :cond_3
    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    if-eqz v9, :cond_4

    .line 128
    invoke-virtual {v4, v3}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getUnderlinePaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v15

    .line 129
    .local v15, "linePaint":Landroid/graphics/Paint;
    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float v9, p4, v9

    iget v10, v4, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->UNDERLINE_HEIGHT:I

    int-to-float v10, v10

    sub-float v12, v9, v10

    .line 130
    .local v12, "bottom":F
    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v13, p3, v9

    move v14, v12

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    .end local v12    # "bottom":F
    .end local v15    # "linePaint":Landroid/graphics/Paint;
    :cond_4
    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v9, :cond_5

    .line 134
    invoke-virtual {v4, v3}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;->getBorderPaint(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v21

    .line 135
    .local v21, "borderPaint":Landroid/graphics/Paint;
    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v19, p3, v9

    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float v20, p4, v9

    move-object/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 139
    .end local v21    # "borderPaint":Landroid/graphics/Paint;
    :cond_5
    iget v9, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-int v9, v9

    iget v10, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    float-to-int v10, v10

    invoke-virtual {v2, v8, v8, v9, v10}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->layout(IIII)V

    .line 140
    move-object/from16 v10, p2

    invoke-virtual {v2, v10, v4}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->draw(Landroid/graphics/Canvas;Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;)V

    .line 142
    if-eqz v0, :cond_6

    .line 143
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 145
    :cond_6
    return-void
.end method

.method public getItemViewType(ILmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 63
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;, "Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public measure(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;Z)V
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "fromWorkerThread"    # Z

    .line 73
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;, "Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer<TVH;>;"
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->getItemViewType(ILmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v2

    .line 74
    .local v2, "viewType":I
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mViewHolderArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, "viewHolders":Ljava/util/List;, "Ljava/util/List<TVH;>;"
    if-nez v0, :cond_0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 77
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->onCreateViewHolder(I)Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->onCreateViewHolder(I)Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->onCreateViewHolder(I)Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mViewHolderArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    :cond_0
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;

    .line 84
    .local v3, "viewHolder":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;, "TVH;"
    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p2    # "paint":Landroid/text/TextPaint;
    .local v4, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v6, "paint":Landroid/text/TextPaint;
    invoke-virtual/range {v1 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->onBindViewHolder(ILmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;Landroid/text/TextPaint;)V

    .line 85
    iget p1, v1, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mMaximumWidthPixels:I

    const/high16 p2, -0x80000000

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v5, v1, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;->mMaximumHeightPixels:I

    invoke-static {v5, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->measure(II)V

    .line 86
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->getMeasureWidth()I

    move-result p1

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->getMeasureHeight()I

    move-result p2

    invoke-virtual {v3, v7, v7, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->layout(IIII)V

    .line 87
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->getMeasureWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 88
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;->getMeasureHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 89
    return-void
.end method

.method public abstract onBindViewHolder(ILmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;Landroid/text/TextPaint;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITVH;",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            "Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer$DisplayerConfig;",
            "Landroid/text/TextPaint;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(I)Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TVH;"
        }
    .end annotation
.end method

.method public releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 98
    .local p0, "this":Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer;, "Lmaster/flame/danmaku/danmaku/model/android/ViewCacheStuffer<TVH;>;"
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->tag:Ljava/lang/Object;

    .line 100
    return-void
.end method

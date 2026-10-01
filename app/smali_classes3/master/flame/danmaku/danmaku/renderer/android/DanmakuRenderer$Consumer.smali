.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "DanmakuRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Consumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer<",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        ">;"
    }
.end annotation


# instance fields
.field public disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

.field private lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

.field public startRenderTime:J

.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;
    .param p2, "x1"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;

    .line 32
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 10
    .param p1, "drawItem"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 40
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 41
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->recycle(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 43
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->isRunningDanmakus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 46
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->isRunningDanmakus:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    return v2

    .line 50
    :cond_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasPassedFilter()Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$000(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget v5, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->indexInScreen:I

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget v6, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalSizeInScreen:I

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-object v7, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$000(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v9

    const/4 v8, 0x0

    move-object v4, p1

    .end local p1    # "drawItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v4, "drawItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual/range {v3 .. v9}, Lmaster/flame/danmaku/controller/DanmakuFilters;->filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    goto :goto_1

    .line 50
    .end local v4    # "drawItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local p1    # "drawItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_3
    move-object v4, p1

    .line 53
    .end local p1    # "drawItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v4    # "drawItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :goto_1
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getActualTime()J

    move-result-wide v5

    iget-wide v7, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->startRenderTime:J

    cmp-long p1, v5, v7

    if-ltz p1, :cond_f

    iget-byte p1, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    if-nez p1, :cond_4

    .line 54
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isFiltered()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_3

    .line 58
    :cond_4
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLate()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 59
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDrawingCache()Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-result-object p1

    .line 60
    .local p1, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$100(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 61
    :cond_5
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$100(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    move-result-object v1

    invoke-interface {v1, v4}, Lmaster/flame/danmaku/danmaku/model/ICacheManager;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 63
    :cond_6
    return v0

    .line 66
    .end local p1    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    :cond_7
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 68
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget v3, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->indexInScreen:I

    add-int/2addr v3, v0

    iput v3, p1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->indexInScreen:I

    .line 72
    :cond_8
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result p1

    if-nez p1, :cond_9

    .line 73
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-virtual {v4, p1, v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 77
    :cond_9
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_a

    .line 78
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-virtual {v4, p1, v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->prepare(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 82
    :cond_a
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$300(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    move-result-object p1

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v5}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$200(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V

    .line 85
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 86
    iget-object p1, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-nez p1, :cond_b

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result p1

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_b

    .line 87
    return v2

    .line 89
    :cond_b
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-virtual {v4, p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)I

    move-result p1

    .line 90
    .local p1, "renderingType":I
    const-wide/16 v5, 0x1

    if-ne p1, v0, :cond_c

    .line 91
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v7, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    add-long/2addr v7, v5

    iput-wide v7, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    goto :goto_2

    .line 92
    :cond_c
    if-ne p1, v1, :cond_d

    .line 93
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v7, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    add-long/2addr v7, v5

    iput-wide v7, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    .line 94
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$100(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 95
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$100(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    move-result-object v1

    invoke-interface {v1, v4}, Lmaster/flame/danmaku/danmaku/model/ICacheManager;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 98
    :cond_d
    :goto_2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->addCount(II)I

    .line 99
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->addTotalCount(I)I

    .line 100
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v0, v4}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->appendToRunningDanmakus(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 102
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$400(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v0, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->firstShownFlag:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 103
    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$000(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    if-eq v0, v1, :cond_e

    .line 104
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$000(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    iput v0, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->firstShownFlag:I

    .line 105
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$400(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;->onDanmakuShown(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 108
    .end local p1    # "renderingType":I
    :cond_e
    return v2

    .line 55
    :cond_f
    :goto_3
    return v2
.end method

.method public after()V
    .locals 2

    .line 113
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->lastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 114
    invoke-super {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;->after()V

    .line 115
    return-void
.end method

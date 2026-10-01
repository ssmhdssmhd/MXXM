.class Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;
.source "DanmakuTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->touchHitDanmaku(FF)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer<",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

.field final synthetic val$hitDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;FFLmaster/flame/danmaku/danmaku/model/IDanmakus;)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    .line 107
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    iput p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$x:F

    iput p3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$y:F

    iput-object p4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$hitDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$DefaultConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 107
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 6
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->access$600(Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->access$600(Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$x:F

    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->access$100(Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$y:F

    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-static {v3}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->access$200(Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$x:F

    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-static {v4}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->access$100(Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;)F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$y:F

    iget-object v5, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->this$0:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-static {v5}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->access$200(Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper$2;->val$hitDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;
.source "FakeDanmakuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->parse()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

.field final synthetic val$danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;Lmaster/flame/danmaku/danmaku/model/IDanmakus;)V
    .locals 0
    .param p1, "this$1"    # Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    .line 54
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->val$danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 21
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 57
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTime()J

    move-result-wide v3

    .line 58
    .local v3, "time":J
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$000(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)J

    move-result-wide v5

    const/4 v0, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 59
    return v0

    .line 60
    :cond_0
    iget-object v5, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v5}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$100(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_1
    iget-object v5, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v5}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$300(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v5

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v6

    iget-object v7, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v7}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$200(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->createDanmaku(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v9

    .line 64
    .local v9, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v9, :cond_3

    .line 65
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTime()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTime(J)V

    .line 66
    iget-object v5, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v9, v5}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->fillText(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/CharSequence;)V

    .line 67
    iget v5, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    iput v5, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textSize:F

    .line 68
    iget v5, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    iput v5, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    .line 69
    iget v5, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    iput v5, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 71
    instance-of v5, v2, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    if-eqz v5, :cond_2

    .line 72
    move-object v5, v2

    check-cast v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    .line 73
    .local v5, "sdanmaku":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;
    iget v6, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    iput v6, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    .line 74
    new-instance v6, Lmaster/flame/danmaku/danmaku/model/Duration;

    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->getDuration()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lmaster/flame/danmaku/danmaku/model/Duration;-><init>(J)V

    iput-object v6, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->duration:Lmaster/flame/danmaku/danmaku/model/Duration;

    .line 75
    iget v6, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->rotateZ:F

    iput v6, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationZ:F

    .line 76
    iget v6, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->rotationY:F

    iput v6, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->rotationY:F

    .line 77
    move-object v6, v9

    check-cast v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;

    iget-boolean v7, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isQuadraticEaseOut:Z

    iput-boolean v7, v6, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->isQuadraticEaseOut:Z

    .line 79
    iget-object v6, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v6}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$600(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v6

    iget-object v8, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget v10, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginX:F

    iget v11, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginY:F

    iget v12, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endX:F

    iget v13, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endY:F

    iget-wide v14, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationDuration:J

    iget-wide v6, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->translationStartDelay:J

    const/16 v20, 0x0

    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    .line 80
    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$400(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)F

    move-result v18

    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$500(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)F

    move-result v19

    .line 79
    move-wide/from16 v16, v6

    invoke-virtual/range {v8 .. v19}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->fillTranslationData(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FFFFJJFF)V

    .line 81
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$700(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v8, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget v10, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->beginAlpha:I

    iget v11, v5, Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;->endAlpha:I

    invoke-virtual {v9}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v12

    invoke-virtual/range {v8 .. v13}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->fillAlphaData(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IIJ)V

    .line 85
    return v20

    .line 88
    .end local v5    # "sdanmaku":Lmaster/flame/danmaku/danmaku/model/SpecialDanmaku;
    :cond_2
    const/16 v20, 0x0

    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$800(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 89
    iget v0, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    iput v0, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 90
    iget v0, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    iput v0, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    .line 91
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->this$1:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;->access$900(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iput-object v0, v9, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    .line 92
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->val$danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->obtainSynchronizer()Ljava/lang/Object;

    move-result-object v5

    .line 93
    .local v5, "lock":Ljava/lang/Object;
    monitor-enter v5

    .line 94
    :try_start_0
    iget-object v0, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser$1;->val$danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, v9}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 95
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    .end local v5    # "lock":Ljava/lang/Object;
    :cond_3
    const/16 v20, 0x0

    .line 97
    :goto_0
    return v20
.end method

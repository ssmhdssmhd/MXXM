.class public Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;
.super Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RetainerConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer<",
        "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
        "Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;",
        ">;"
    }
.end annotation


# instance fields
.field public disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

.field public drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field lines:I

.field public minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field overwriteInsert:Z

.field shown:Z

.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;

.field willHit:Z


# direct methods
.method protected constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;)V
    .locals 2
    .param p1, "this$0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;

    .line 116
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lines:I

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 120
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->overwriteInsert:Z

    .line 121
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->shown:Z

    .line 122
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->willHit:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)I
    .locals 0

    .line 116
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result p1

    return p1
.end method

.method public accept(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 10
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 133
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer;->mCancelFixingFlag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lines:I

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lines:I

    .line 137
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 138
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 140
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->shown:Z

    .line 141
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->willHit:Z

    .line 142
    return v1

    .line 145
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_2

    .line 146
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 148
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTop()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 149
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->overwriteInsert:Z

    .line 150
    return v1

    .line 153
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_4

    .line 154
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRight()F

    move-result v0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getRight()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 157
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 162
    :cond_5
    :goto_0
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 163
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getDuration()J

    move-result-wide v6

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->drawItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-wide v8, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 162
    move-object v4, p1

    .end local p1    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v4, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-static/range {v3 .. v9}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->willHitInDuration(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;JJ)Z

    move-result p1

    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->willHit:Z

    .line 164
    iget-boolean p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->willHit:Z

    if-nez p1, :cond_6

    .line 165
    iput-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 166
    return v1

    .line 169
    :cond_6
    iput-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 170
    return v2
.end method

.method public before()V
    .locals 2

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lines:I

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 128
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->willHit:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->shown:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->overwriteInsert:Z

    .line 129
    return-void
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->result()Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;

    move-result-object v0

    return-object v0
.end method

.method public result()Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    .locals 2

    .line 175
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$1;)V

    .line 176
    .local v0, "retainerState":Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;
    iget v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lines:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->lines:I

    .line 177
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->firstItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 178
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->insertItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 179
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->lastItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 180
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->minRightRow:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 181
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->overwriteInsert:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->overwriteInsert:Z

    .line 182
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->shown:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->shown:Z

    .line 183
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$AlignTopRetainer$RetainerConsumer;->willHit:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$RetainerState;->willHit:Z

    .line 184
    return-object v0
.end method

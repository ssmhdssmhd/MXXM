.class public Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;
.super Lmaster/flame/danmaku/ui/widget/DanmakuView;
.source "FakeDanmakuView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/DrawHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;,
        Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;
    }
.end annotation


# instance fields
.field private mBeginTimeMills:J

.field private mBufferBitmap:Landroid/graphics/Bitmap;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mEndTimeMills:J

.field private mExpectBeginMills:J

.field private mFrameIntervalMills:J

.field private mHeight:I

.field private mIsRelease:Z

.field private mOnFrameAvailableListener:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

.field private mOuterTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

.field private mRetryCount:I

.field private mScale:F

.field private mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;-><init>(Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mWidth:I

    .line 141
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mHeight:I

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mScale:F

    .line 145
    const-wide/16 v1, 0x10

    iput-wide v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mFrameIntervalMills:J

    .line 150
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mRetryCount:I

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mExpectBeginMills:J

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scale"    # F

    .line 158
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;-><init>(Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mWidth:I

    .line 141
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mHeight:I

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mScale:F

    .line 145
    const-wide/16 v1, 0x10

    iput-wide v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mFrameIntervalMills:J

    .line 150
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mRetryCount:I

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mExpectBeginMills:J

    .line 159
    iput p2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mWidth:I

    .line 160
    iput p3, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mHeight:I

    .line 161
    iput p4, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mScale:F

    .line 162
    invoke-virtual {p0, p2, p3}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->initBufferCanvas(II)V

    .line 163
    return-void
.end method


# virtual methods
.method public danmakuShown(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 339
    return-void
.end method

.method public drawDanmakus()J
    .locals 10

    .line 172
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mIsRelease:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    return-wide v1

    .line 175
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 176
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    .line 177
    return-wide v1

    .line 179
    :cond_1
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 180
    .local v3, "bufferBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    .line 183
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 184
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mClearFlag:Z

    if-eqz v2, :cond_3

    .line 185
    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 186
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mClearFlag:Z

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v2, :cond_4

    .line 189
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v2, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->draw(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 192
    :cond_4
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOnFrameAvailableListener:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

    .line 193
    .local v2, "onFrameAvailableListener":Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;
    if-eqz v2, :cond_a

    .line 194
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOuterTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 196
    .local v4, "curr":J
    :try_start_0
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mExpectBeginMills:J

    iget-wide v8, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mFrameIntervalMills:J

    sub-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_6

    .line 198
    const/4 v6, 0x0

    .line 199
    .local v6, "recycle":Z
    iget v7, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mScale:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_5

    .line 200
    move-object v7, v3

    .local v7, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 202
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget v7, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mWidth:I

    int-to-float v7, v7

    iget v8, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mScale:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    iget v8, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mHeight:I

    int-to-float v8, v8

    iget v9, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mScale:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v3, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 203
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    .line 205
    :goto_1
    invoke-interface {v2, v4, v5, v7}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;->onFrameAvailable(JLandroid/graphics/Bitmap;)V

    .line 206
    if-eqz v6, :cond_6

    .line 207
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v6    # "recycle":Z
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mEndTimeMills:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_a

    .line 215
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->release()V

    .line 216
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v6, :cond_7

    .line 217
    :goto_2
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v7, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mEndTimeMills:J

    invoke-virtual {v6, v7, v8}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 219
    :cond_7
    invoke-interface {v2, v4, v5}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;->onFramesFinished(J)V

    goto :goto_4

    .line 214
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 210
    :catch_0
    move-exception v6

    .line 211
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->release()V

    .line 212
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    invoke-interface {v2, v8, v7}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;->onFailed(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v6    # "e":Ljava/lang/Exception;
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mEndTimeMills:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_a

    .line 215
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->release()V

    .line 216
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v6, :cond_7

    .line 217
    goto :goto_2

    .line 214
    :goto_3
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mEndTimeMills:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    .line 215
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->release()V

    .line 216
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    if-eqz v6, :cond_8

    .line 217
    iget-object v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v7, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mEndTimeMills:J

    invoke-virtual {v6, v7, v8}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 219
    :cond_8
    invoke-interface {v2, v4, v5}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;->onFramesFinished(J)V

    :cond_9
    throw v1

    .line 223
    .end local v4    # "curr":J
    :cond_a
    :goto_4
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mRequestRender:Z

    .line 224
    const-wide/16 v4, 0x2

    return-wide v4

    .line 181
    .end local v2    # "onFrameAvailableListener":Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;
    :cond_b
    :goto_5
    return-wide v1
.end method

.method public drawingFinished()V
    .locals 0

    .line 344
    return-void
.end method

.method public getFrameAtTime(I)V
    .locals 6
    .param p1, "frameRate"    # I

    .line 296
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mRetryCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 297
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->release()V

    .line 298
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOnFrameAvailableListener:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOnFrameAvailableListener:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

    const/16 v1, 0x64

    const-string v2, "not prepared"

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;->onFailed(ILjava/lang/String;)V

    .line 301
    :cond_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 305
    .local v0, "handler":Lmaster/flame/danmaku/controller/DrawHandler;
    if-nez v0, :cond_2

    .line 306
    return-void

    .line 308
    :cond_2
    new-instance v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$1;

    invoke-direct {v1, p0, p1}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    return-void

    .line 316
    .end local v0    # "handler":Lmaster/flame/danmaku/controller/DrawHandler;
    :cond_3
    const/16 v0, 0x3e8

    div-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mFrameIntervalMills:J

    .line 317
    invoke-virtual {p0, p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 318
    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mExpectBeginMills:J

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 319
    .local v0, "beginMills":J
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-direct {v2, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;-><init>(J)V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOuterTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 320
    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->start(J)V

    .line 321
    return-void
.end method

.method public getViewHeight()I
    .locals 1

    .line 256
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 251
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mWidth:I

    return v0
.end method

.method public initBufferCanvas(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 166
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 167
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 168
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public isViewReady()Z
    .locals 1

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 237
    return-void
.end method

.method public prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 7
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 261
    new-instance v0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;

    iget-wide v3, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBeginTimeMills:J

    iget-wide v5, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mEndTimeMills:J

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "parser":Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .local v2, "parser":Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    invoke-direct/range {v0 .. v6}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;-><init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;JJ)V

    move-object p1, v0

    .line 264
    .local p1, "newParser":Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$CustomParser;
    :try_start_0
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 265
    .local v0, "configCopy":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->resetContext()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 266
    sget v3, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    iput v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    .line 267
    iget v3, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    int-to-float v3, v3

    sget v4, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuTransparency(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 268
    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget-object v4, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 269
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuSync(Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 270
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->unregisterAllConfigChangedCallbacks()V

    .line 271
    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateAll()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 272
    .end local v0    # "configCopy":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 274
    move-object v3, p2

    move-object v0, v3

    .line 276
    .local v0, "configCopy":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    :goto_0
    const/4 v3, 0x1

    iput-byte v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->updateMethod:B

    .line 277
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOnFrameAvailableListener:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOnFrameAvailableListener:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

    invoke-interface {v4, v0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;->onConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 280
    :cond_0
    invoke-super {p0, p1, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 281
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->setIdleSleep(Z)V

    .line 282
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v4, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->enableNonBlockMode(Z)V

    .line 283
    return-void
.end method

.method public prepared()V
    .locals 0

    .line 326
    return-void
.end method

.method public release()V
    .locals 1

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mIsRelease:Z

    .line 230
    invoke-super {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->release()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 232
    return-void
.end method

.method public setOnFrameAvailableListener(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;)V
    .locals 0
    .param p1, "onFrameAvailableListener"    # Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

    .line 292
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOnFrameAvailableListener:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$OnFrameAvailableListener;

    .line 293
    return-void
.end method

.method public setTimeRange(JJ)V
    .locals 4
    .param p1, "beginMills"    # J
    .param p3, "endMills"    # J

    .line 286
    iput-wide p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mExpectBeginMills:J

    .line 287
    const-wide/16 v0, 0x7530

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mBeginTimeMills:J

    .line 288
    iput-wide p3, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mEndTimeMills:J

    .line 289
    return-void
.end method

.method public updateTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V
    .locals 3
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 330
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 331
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOuterTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 332
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mOuterTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mFrameIntervalMills:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 333
    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->mFrameIntervalMills:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 334
    return-void
.end method

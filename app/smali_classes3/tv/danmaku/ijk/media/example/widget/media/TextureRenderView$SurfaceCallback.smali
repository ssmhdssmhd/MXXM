.class final Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mDidDetachFromWindow:Z

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mOwnSurfaceTexture:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmSurfaceTexture(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;)V
    .locals 1
    .param p1, "renderView"    # Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 232
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 235
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 238
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 239
    return-void
.end method


# virtual methods
.method public addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 246
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 250
    if-nez v0, :cond_0

    .line 251
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2, v3, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    move-object v0, v1

    .line 252
    :cond_0
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V

    .line 255
    :cond_1
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 256
    if-nez v0, :cond_2

    .line 257
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2, v3, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    move-object v0, v1

    .line 258
    :cond_2
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V

    .line 260
    :cond_3
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    .line 359
    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 361
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 268
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 270
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 271
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 273
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 274
    .local v1, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 275
    .local v3, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v3, v1, v0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V

    .line 276
    .end local v3    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 294
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 296
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 297
    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 299
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 300
    .local v0, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 301
    .local v2, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v2, v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    .line 302
    .end local v2    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    goto :goto_0

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextureRenderView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 281
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 283
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 284
    iput p3, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 286
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 287
    .local v0, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 288
    .local v2, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, p2, p3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V

    .line 289
    .end local v2    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 310
    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 318
    const-string v0, "TextureRenderView"

    if-nez p1, :cond_0

    .line 319
    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_0
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_1

    .line 322
    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 324
    :cond_1
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v1, :cond_2

    .line 325
    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 328
    :cond_2
    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_3
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 331
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_4

    .line 332
    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 334
    :cond_4
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v1, :cond_5

    .line 335
    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 338
    :cond_5
    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_6
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_7

    .line 342
    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 344
    :cond_7
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v1, :cond_8

    .line 345
    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 348
    :cond_8
    const-string v1, "releaseSurfaceTexture: alive: will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return-void
.end method

.method public removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 263
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0
    .param p1, "ownSurfaceTexture"    # Z

    .line 242
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 243
    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    .line 354
    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 356
    return-void
.end method

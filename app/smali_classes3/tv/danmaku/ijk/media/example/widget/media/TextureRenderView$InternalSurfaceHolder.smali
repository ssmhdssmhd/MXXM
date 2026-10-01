.class final Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

.field private mTextureView:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V
    .locals 0
    .param p1, "textureView"    # Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "surfaceTextureHost"    # Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    .line 175
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 176
    iput-object p3, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTextureHost:Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;

    .line 177
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 181
    if-nez p1, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    instance-of v0, p1, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    if-eqz v0, :cond_2

    .line 186
    move-object v0, p1

    check-cast v0, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;

    .line 187
    .local v0, "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->-$$Nest$fgetmSurfaceCallback(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;)Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    .line 189
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 190
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_1

    .line 191
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 194
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->-$$Nest$fgetmSurfaceCallback(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;)Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTextureHost(Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 196
    .end local v0    # "textureHolder":Ltv/danmaku/ijk/media/player/ISurfaceTextureHolder;
    .end local v1    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :goto_0
    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 199
    :goto_1
    return-void
.end method

.method public getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;
    .locals 1

    .line 203
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mTextureView:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 213
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2

    .line 218
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

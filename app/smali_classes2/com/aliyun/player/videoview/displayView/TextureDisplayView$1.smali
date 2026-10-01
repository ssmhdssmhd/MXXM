.class Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;
.super Ljava/lang/Object;
.source "TextureDisplayView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->getRenderView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;


# direct methods
.method constructor <init>(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 41
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 45
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$000(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v0, p1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$002(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 47
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$102(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/view/Surface;)Landroid/view/Surface;

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$200(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$000(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 53
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v0, p1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$002(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 54
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$102(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 58
    :goto_0
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceTextureAvailable  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 62
    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 75
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceTextureDestroyed  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceDestroy()V

    .line 79
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 67
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    invoke-static {v2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceTextureSizeChanged  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceSizeChanged()V

    .line 71
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 84
    return-void
.end method

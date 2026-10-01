.class Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;
.super Ljava/lang/Object;
.source "SurfaceDisplayView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->getRenderView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;


# direct methods
.method constructor <init>(Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    .line 31
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 48
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surfaceChanged "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceSizeChanged()V

    .line 52
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 39
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 40
    .local v0, "surface":Landroid/view/Surface;
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceCreated  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v1, v1, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v1, v1, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    invoke-interface {v1, v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 44
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 56
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surfaceDestroyed "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v0, v0, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceDestroy()V

    .line 60
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 34
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surfaceRedrawNeeded "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

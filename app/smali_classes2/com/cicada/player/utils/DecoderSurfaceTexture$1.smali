.class Lcom/cicada/player/utils/DecoderSurfaceTexture$1;
.super Landroid/os/Handler;
.source "DecoderSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cicada/player/utils/DecoderSurfaceTexture;->createSurface(IJ)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cicada/player/utils/DecoderSurfaceTexture;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 36
    iput-object p1, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;->this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3039

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;->this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;->this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;

    invoke-static {v2}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->access$100(Lcom/cicada/player/utils/DecoderSurfaceTexture;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->access$002(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 41
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;->this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;

    invoke-static {v0}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->access$000(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/cicada/player/utils/DecoderSurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 42
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;->this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;->this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;

    invoke-static {v2}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->access$000(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->access$202(Lcom/cicada/player/utils/DecoderSurfaceTexture;Landroid/view/Surface;)Landroid/view/Surface;

    .line 43
    iget-object v0, p0, Lcom/cicada/player/utils/DecoderSurfaceTexture$1;->this$0:Lcom/cicada/player/utils/DecoderSurfaceTexture;

    invoke-static {v0}, Lcom/cicada/player/utils/DecoderSurfaceTexture;->access$300(Lcom/cicada/player/utils/DecoderSurfaceTexture;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    :goto_0
    return-void
.end method

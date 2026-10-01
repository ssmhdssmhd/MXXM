.class Lcom/aliyun/player/nativeclass/NativePlayerBase$29;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateViewCallback(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$finalDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 1342
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$finalDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1345
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$finalDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->createDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;Z)V

    .line 1346
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    move-result v0

    .line 1347
    .local v0, "width":I
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoHeight()I

    move-result v1

    .line 1348
    .local v1, "height":I
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-virtual {v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoRotation()F

    move-result v2

    .line 1349
    .local v2, "rotate":F
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    move-result-object v3

    float-to-int v4, v2

    invoke-virtual {v3, v0, v1, v4}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setVideoSize(III)V

    .line 1350
    return-void
.end method

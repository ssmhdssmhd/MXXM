.class Lcom/aliyun/player/nativeclass/NativePlayerBase$2;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->snapShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 472
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 475
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->snapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, "screenShot":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 477
    .local v1, "width":I
    const/4 v2, 0x0

    .line 478
    .local v2, "height":I
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 483
    :cond_0
    move v3, v1

    .line 484
    .local v3, "finalWidth":I
    move v4, v2

    .line 485
    .local v4, "finalHeight":I
    iget-object v5, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v5}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    move-result-object v5

    new-instance v6, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;

    invoke-direct {v6, p0, v0, v3, v4}, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase$2;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v5, v6}, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

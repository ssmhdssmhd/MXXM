.class Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

.field final synthetic val$finalHeight:I

.field final synthetic val$finalWidth:I

.field final synthetic val$screenShot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase$2;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

    .line 485
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->this$1:Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->val$screenShot:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->val$finalWidth:I

    iput p4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->val$finalHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->this$1:Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

    iget-object v0, v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->this$1:Lcom/aliyun/player/nativeclass/NativePlayerBase$2;

    iget-object v0, v0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->val$screenShot:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->val$finalWidth:I

    iget v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;->val$finalHeight:I

    invoke-interface {v0, v1, v2, v3}, Lcom/aliyun/player/IPlayer$OnSnapShotListener;->onSnapShot(Landroid/graphics/Bitmap;II)V

    .line 491
    :cond_0
    return-void
.end method

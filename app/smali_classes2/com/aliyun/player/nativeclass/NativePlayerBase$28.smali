.class Lcom/aliyun/player/nativeclass/NativePlayerBase$28;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onCaptureScreen(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$finalBOutput:Landroid/graphics/Bitmap;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 1211
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->val$finalBOutput:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->val$width:I

    iput p4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1215
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->val$finalBOutput:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->val$width:I

    iget v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$28;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Lcom/aliyun/player/IPlayer$OnSnapShotListener;->onSnapShot(Landroid/graphics/Bitmap;II)V

    .line 1218
    :cond_0
    return-void
.end method

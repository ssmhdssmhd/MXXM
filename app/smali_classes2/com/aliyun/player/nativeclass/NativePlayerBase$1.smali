.class Lcom/aliyun/player/nativeclass/NativePlayerBase$1;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$scaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 358
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;->val$scaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$1;->val$scaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 362
    return-void
.end method

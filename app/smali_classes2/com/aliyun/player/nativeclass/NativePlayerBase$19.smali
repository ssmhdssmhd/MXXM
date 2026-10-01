.class Lcom/aliyun/player/nativeclass/NativePlayerBase$19;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onLoadingProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$percent:F


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 1088
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;->val$percent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1091
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1500(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    move-result-object v0

    iget v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$19;->val$percent:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;->onLoadingProgress(IF)V

    .line 1094
    :cond_0
    return-void
.end method

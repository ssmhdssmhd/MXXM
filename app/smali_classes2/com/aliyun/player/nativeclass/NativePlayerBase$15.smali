.class Lcom/aliyun/player/nativeclass/NativePlayerBase$15;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onSwitchStreamFail(Lcom/aliyun/player/nativeclass/TrackInfo;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$code:I

.field final synthetic val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$targetInfo:Lcom/aliyun/player/nativeclass/TrackInfo;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;ILjava/lang/String;Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 1030
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    iput p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$code:I

    iput-object p4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$targetInfo:Lcom/aliyun/player/nativeclass/TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    new-instance v0, Lcom/aliyun/player/bean/ErrorInfo;

    invoke-direct {v0}, Lcom/aliyun/player/bean/ErrorInfo;-><init>()V

    .line 1036
    .local v0, "errorInfo":Lcom/aliyun/player/bean/ErrorInfo;
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setCode(Lcom/aliyun/player/bean/ErrorCode;)V

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setMsg(Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$15;->val$targetInfo:Lcom/aliyun/player/nativeclass/TrackInfo;

    invoke-interface {v1, v2, v0}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedFail(Lcom/aliyun/player/nativeclass/TrackInfo;Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 1040
    .end local v0    # "errorInfo":Lcom/aliyun/player/bean/ErrorInfo;
    :cond_0
    return-void
.end method

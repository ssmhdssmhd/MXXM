.class Lcom/aliyun/player/nativeclass/NativePlayerBase$7;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onError(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 901
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    iput-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    new-instance v0, Lcom/aliyun/player/bean/ErrorInfo;

    invoke-direct {v0}, Lcom/aliyun/player/bean/ErrorInfo;-><init>()V

    .line 906
    .local v0, "errorInfo":Lcom/aliyun/player/bean/ErrorInfo;
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setCode(Lcom/aliyun/player/bean/ErrorCode;)V

    .line 907
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setMsg(Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 910
    .end local v0    # "errorInfo":Lcom/aliyun/player/bean/ErrorInfo;
    :cond_0
    return-void
.end method

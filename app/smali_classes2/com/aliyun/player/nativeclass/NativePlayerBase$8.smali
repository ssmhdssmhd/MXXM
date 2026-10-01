.class Lcom/aliyun/player/nativeclass/NativePlayerBase$8;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onEvent(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$finalInfoCode:Lcom/aliyun/player/bean/InfoCode;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/InfoCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 926
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;->val$finalInfoCode:Lcom/aliyun/player/bean/InfoCode;

    iput-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    new-instance v0, Lcom/aliyun/player/bean/InfoBean;

    invoke-direct {v0}, Lcom/aliyun/player/bean/InfoBean;-><init>()V

    .line 931
    .local v0, "infoBean":Lcom/aliyun/player/bean/InfoBean;
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;->val$finalInfoCode:Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/InfoBean;->setCode(Lcom/aliyun/player/bean/InfoCode;)V

    .line 932
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/InfoBean;->setExtraMsg(Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$8;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 935
    .end local v0    # "infoBean":Lcom/aliyun/player/bean/InfoBean;
    :cond_0
    return-void
.end method

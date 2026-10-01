.class Lcom/aliyun/player/nativeclass/NativePlayerBase$20;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onCurrentDownloadSpeed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$speed:J


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 1099
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-wide p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;->val$speed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1102
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1103
    new-instance v0, Lcom/aliyun/player/bean/InfoBean;

    invoke-direct {v0}, Lcom/aliyun/player/bean/InfoBean;-><init>()V

    .line 1104
    .local v0, "infoBean":Lcom/aliyun/player/bean/InfoBean;
    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/InfoBean;->setCode(Lcom/aliyun/player/bean/InfoCode;)V

    .line 1105
    iget-wide v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;->val$speed:J

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/bean/InfoBean;->setExtraValue(J)V

    .line 1106
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$20;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 1108
    .end local v0    # "infoBean":Lcom/aliyun/player/bean/InfoBean;
    :cond_0
    return-void
.end method

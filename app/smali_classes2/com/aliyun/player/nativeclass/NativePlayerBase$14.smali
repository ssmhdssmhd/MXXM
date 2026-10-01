.class Lcom/aliyun/player/nativeclass/NativePlayerBase$14;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onSeiDataCallback(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$seiData:[B

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 1009
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$type:I

    iput-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$seiData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1012
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    move-result-object v0

    iget v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$type:I

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$seiData:[B

    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/IPlayer$OnSeiDataListener;->onSeiData(I[B)V

    .line 1015
    :cond_0
    return-void
.end method

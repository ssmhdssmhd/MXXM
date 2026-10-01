.class Lcom/aliyun/player/nativeclass/NativePlayerBase$13;
.super Ljava/lang/Object;
.source "NativePlayerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onSwitchStreamSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$newInfo:Lcom/aliyun/player/nativeclass/TrackInfo;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 998
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;->val$newInfo:Lcom/aliyun/player/nativeclass/TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnTrackChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$13;->val$newInfo:Lcom/aliyun/player/nativeclass/TrackInfo;

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer$OnTrackChangedListener;->onChangedSuccess(Lcom/aliyun/player/nativeclass/TrackInfo;)V

    .line 1004
    :cond_0
    return-void
.end method

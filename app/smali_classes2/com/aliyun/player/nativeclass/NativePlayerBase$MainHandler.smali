.class Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;
.super Landroid/os/Handler;
.source "NativePlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private playerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/nativeclass/NativePlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Looper;)V
    .locals 1
    .param p1, "saasPlayer"    # Lcom/aliyun/player/nativeclass/NativePlayerBase;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 55
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 62
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 63
    .local v0, "player":Lcom/aliyun/player/nativeclass/NativePlayerBase;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$000(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/os/Message;)V

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    return-void
.end method

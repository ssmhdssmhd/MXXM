.class public abstract Lcom/aliyun/utils/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/utils/BaseRequest$MsgDispatcher;,
        Lcom/aliyun/utils/BaseRequest$OnRequestListener;
    }
.end annotation


# static fields
.field public static final DATA_KEY_EXTRA:Ljava/lang/String; = "data_extra"

.field public static final WHAT_FAIL:I = 0x0

.field public static final WHAT_SUCCESS:I = 0x1

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

.field private innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

.field public mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

.field protected wantStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/BaseRequest;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 28
    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 29
    new-instance v0, Lcom/aliyun/utils/BaseRequest$1;

    invoke-direct {v0, p0}, Lcom/aliyun/utils/BaseRequest$1;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->mContextWeak:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object p2, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/BaseRequest;)Lcom/aliyun/utils/BaseRequest$OnRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/utils/BaseRequest;

    .line 16
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aliyun/utils/BaseRequest;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/utils/BaseRequest;
    .param p1, "x1"    # Landroid/os/Message;

    .line 16
    invoke-direct {p0, p1}, Lcom/aliyun/utils/BaseRequest;->dealMsg(Landroid/os/Message;)V

    return-void
.end method

.method private dealMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "data_extra"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "requestId":Ljava/lang/String;
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 79
    iget-object v2, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAsync()V
    .locals 2

    .line 66
    new-instance v0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    invoke-direct {v0, p0}, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    .line 67
    sget-object v0, Lcom/aliyun/utils/BaseRequest;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/utils/BaseRequest$2;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/BaseRequest$2;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public getSync()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/aliyun/utils/BaseRequest;->runInBackground()V

    .line 60
    return-void
.end method

.method public abstract runInBackground()V
.end method

.method public sendFailResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msgStr"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .line 114
    iget-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 123
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 124
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "data_extra"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 128
    iget-object v2, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    invoke-virtual {v2, v0}, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 130
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "data":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method public sendSuccessResult(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "requestInfo"    # Ljava/lang/Object;
    .param p2, "extra"    # Ljava/lang/String;

    .line 94
    iget-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "data_extra"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 106
    iget-object v2, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    invoke-virtual {v2, v0}, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "data":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    .line 87
    invoke-virtual {p0}, Lcom/aliyun/utils/BaseRequest;->stopInner()V

    .line 88
    return-void
.end method

.method public abstract stopInner()V
.end method

.class Lcom/aliyun/liveshift/LiveTimeUpdater$1;
.super Landroid/os/Handler;
.source "LiveTimeUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/liveshift/LiveTimeUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;


# direct methods
.method constructor <init>(Lcom/aliyun/liveshift/LiveTimeUpdater;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 42
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$100(Lcom/aliyun/liveshift/LiveTimeUpdater;)V

    .line 51
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$200(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    goto :goto_1

    .line 52
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$300()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$400(Lcom/aliyun/liveshift/LiveTimeUpdater;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$508(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$608(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    .line 62
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    .line 64
    :cond_2
    :goto_1
    return-void
.end method

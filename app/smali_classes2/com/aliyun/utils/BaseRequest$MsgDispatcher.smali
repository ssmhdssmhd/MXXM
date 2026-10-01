.class Lcom/aliyun/utils/BaseRequest$MsgDispatcher;
.super Landroid/os/Handler;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/utils/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgDispatcher"
.end annotation


# instance fields
.field private mBaseRequest:Lcom/aliyun/utils/BaseRequest;


# direct methods
.method public constructor <init>(Lcom/aliyun/utils/BaseRequest;)V
    .locals 0
    .param p1, "baseRequest"    # Lcom/aliyun/utils/BaseRequest;

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->mBaseRequest:Lcom/aliyun/utils/BaseRequest;

    .line 149
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 155
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->mBaseRequest:Lcom/aliyun/utils/BaseRequest;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;->mBaseRequest:Lcom/aliyun/utils/BaseRequest;

    invoke-static {v0, p1}, Lcom/aliyun/utils/BaseRequest;->access$100(Lcom/aliyun/utils/BaseRequest;Landroid/os/Message;)V

    .line 158
    :cond_0
    return-void
.end method

.class Lcom/aliyun/liveshift/LiveTimeUpdater$2;
.super Ljava/lang/Object;
.source "LiveTimeUpdater.java"

# interfaces
.implements Lcom/aliyun/utils/BaseRequest$OnRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/liveshift/LiveTimeUpdater;->updateLiveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/utils/BaseRequest$OnRequestListener<",
        "Lcom/aliyun/liveshift/bean/TimeLineContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;


# direct methods
.method constructor <init>(Lcom/aliyun/liveshift/LiveTimeUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/liveshift/LiveTimeUpdater;

    .line 77
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .line 99
    return-void
.end method

.method public onSuccess(Lcom/aliyun/liveshift/bean/TimeLineContent;Ljava/lang/String;)V
    .locals 11
    .param p1, "requestInfo"    # Lcom/aliyun/liveshift/bean/TimeLineContent;
    .param p2, "requestId"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-wide v2, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->current:J

    .line 83
    .local v2, "currentTime":J
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$900(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v4

    .line 84
    .local v4, "shiftStartTime":J
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$1000(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    move-result-wide v6

    .line 86
    .local v6, "shiftEndTime":J
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0, v2, v3}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$602(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J

    .line 87
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$500(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-gez v10, :cond_0

    .line 88
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$600(Lcom/aliyun/liveshift/LiveTimeUpdater;)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$502(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V

    .line 92
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->this$0:Lcom/aliyun/liveshift/LiveTimeUpdater;

    invoke-static {v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    move-result-object v1

    invoke-interface/range {v1 .. v7}, Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;->onUpdater(JJJ)V

    .line 94
    .end local v2    # "currentTime":J
    .end local v4    # "shiftStartTime":J
    .end local v6    # "shiftEndTime":J
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/aliyun/liveshift/bean/TimeLineContent;

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/liveshift/LiveTimeUpdater$2;->onSuccess(Lcom/aliyun/liveshift/bean/TimeLineContent;Ljava/lang/String;)V

    return-void
.end method

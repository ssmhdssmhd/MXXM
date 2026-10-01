.class Lcom/aliyun/utils/CpuProcessTracker$3;
.super Ljava/lang/Object;
.source "CpuProcessTracker.java"

# interfaces
.implements Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageAfter25()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/utils/CpuProcessTracker;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/CpuProcessTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/utils/CpuProcessTracker;

    .line 173
    iput-object p1, p0, Lcom/aliyun/utils/CpuProcessTracker$3;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 177
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 178
    .local v0, "cpuUsage":F
    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->getCPUCoresNum()I

    move-result v1

    .line 179
    .local v1, "cpuCoreNum":I
    iget-object v2, p0, Lcom/aliyun/utils/CpuProcessTracker$3;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    int-to-float v3, v1

    div-float v3, v0, v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/aliyun/utils/CpuProcessTracker;->access$202(Lcom/aliyun/utils/CpuProcessTracker;I)I

    .line 180
    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCpuUsageAfter25 mMyPidPercent update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aliyun/utils/CpuProcessTracker$3;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-static {v4}, Lcom/aliyun/utils/CpuProcessTracker;->access$200(Lcom/aliyun/utils/CpuProcessTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "cpuUsage":F
    .end local v1    # "cpuCoreNum":I
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    :goto_0
    return-void
.end method

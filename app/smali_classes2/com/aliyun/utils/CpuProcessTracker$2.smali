.class Lcom/aliyun/utils/CpuProcessTracker$2;
.super Ljava/lang/Object;
.source "CpuProcessTracker.java"

# interfaces
.implements Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageBefore26()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cpuValueIndex:I

.field final synthetic this$0:Lcom/aliyun/utils/CpuProcessTracker;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/CpuProcessTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aliyun/utils/CpuProcessTracker;

    .line 130
    iput-object p1, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/utils/CpuProcessTracker;->access$100([Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 137
    .local v0, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, "cpuValue":Ljava/lang/String;
    iget v2, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    const-string v3, "%"

    if-gez v2, :cond_2

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    iput v2, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    .line 146
    goto :goto_1

    .line 143
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget v2, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    if-ltz v2, :cond_4

    .line 151
    iget v2, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 158
    .local v2, "cpuUsage":F
    iget-object v3, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    float-to-int v4, v2

    invoke-static {v3, v4}, Lcom/aliyun/utils/CpuProcessTracker;->access$202(Lcom/aliyun/utils/CpuProcessTracker;I)I

    .line 159
    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCpuUsageBefore26 mMyPidPercent update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-static {v5}, Lcom/aliyun/utils/CpuProcessTracker;->access$200(Lcom/aliyun/utils/CpuProcessTracker;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "cpuUsage":F
    goto :goto_2

    .line 160
    :catch_0
    move-exception v2

    .line 161
    :goto_2
    goto :goto_3

    .line 163
    :cond_4
    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCpuUsageBefore26 unknow "

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v0    # "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v1    # "cpuValue":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void
.end method

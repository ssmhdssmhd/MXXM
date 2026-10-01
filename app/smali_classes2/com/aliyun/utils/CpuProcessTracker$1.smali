.class Lcom/aliyun/utils/CpuProcessTracker$1;
.super Ljava/lang/Object;
.source "CpuProcessTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/CpuProcessTracker;-><init>()V
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

    .line 26
    iput-object p1, p0, Lcom/aliyun/utils/CpuProcessTracker$1;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aliyun/utils/CpuProcessTracker$1;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-static {v0}, Lcom/aliyun/utils/CpuProcessTracker;->access$000(Lcom/aliyun/utils/CpuProcessTracker;)V

    .line 30
    return-void
.end method

.class Lcom/aliyun/utils/BaseRequest$2;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/BaseRequest;->getAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/utils/BaseRequest;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/BaseRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/utils/BaseRequest;

    .line 67
    iput-object p1, p0, Lcom/aliyun/utils/BaseRequest$2;->this$0:Lcom/aliyun/utils/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$2;->this$0:Lcom/aliyun/utils/BaseRequest;

    invoke-virtual {v0}, Lcom/aliyun/utils/BaseRequest;->runInBackground()V

    .line 71
    return-void
.end method

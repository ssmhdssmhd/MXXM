.class Lnet/tsz/afinal/core/AsyncTask$2;
.super Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/tsz/afinal/core/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tsz/afinal/core/AsyncTask;


# direct methods
.method constructor <init>(Lnet/tsz/afinal/core/AsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/tsz/afinal/core/AsyncTask$2;->this$0:Lnet/tsz/afinal/core/AsyncTask;

    .line 139
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;-><init>(Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask$2;->this$0:Lnet/tsz/afinal/core/AsyncTask;

    invoke-static {v0}, Lnet/tsz/afinal/core/AsyncTask;->access$1(Lnet/tsz/afinal/core/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 145
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask$2;->this$0:Lnet/tsz/afinal/core/AsyncTask;

    iget-object v1, p0, Lnet/tsz/afinal/core/AsyncTask$2;->this$0:Lnet/tsz/afinal/core/AsyncTask;

    iget-object v2, p0, Lnet/tsz/afinal/core/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/core/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/tsz/afinal/core/AsyncTask;->access$2(Lnet/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

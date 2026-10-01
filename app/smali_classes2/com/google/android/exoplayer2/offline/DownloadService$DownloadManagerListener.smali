.class final Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/DownloadService;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/offline/DownloadService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadService;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/offline/DownloadService$1;

    .line 423
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    return-void
.end method


# virtual methods
.method public final onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 1
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$400(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    .line 444
    return-void
.end method

.method public onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 2
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$200(Lcom/google/android/exoplayer2/offline/DownloadService;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    .line 427
    return-void
.end method

.method public onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V
    .locals 2
    .param p1, "downloadManager"    # Lcom/google/android/exoplayer2/offline/DownloadManager;
    .param p2, "taskState"    # Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadService;->onTaskStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;)V

    .line 432
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    iget v0, p2, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService$DownloadManagerListener;->this$0:Lcom/google/android/exoplayer2/offline/DownloadService;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->access$300(Lcom/google/android/exoplayer2/offline/DownloadService;)Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadService$ForegroundNotificationUpdater;->update()V

    .line 439
    :cond_1
    :goto_0
    return-void
.end method

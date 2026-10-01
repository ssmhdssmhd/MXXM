.class public final Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState$State;
    }
.end annotation


# static fields
.field public static final STATE_CANCELED:I = 0x3

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_QUEUED:I = 0x0

.field public static final STATE_STARTED:I = 0x1


# instance fields
.field public final action:Lcom/google/android/exoplayer2/offline/DownloadAction;

.field public final downloadPercentage:F

.field public final downloadedBytes:J

.field public final error:Ljava/lang/Throwable;

.field public final state:I

.field public final taskId:I


# direct methods
.method private constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "action"    # Lcom/google/android/exoplayer2/offline/DownloadAction;
    .param p3, "state"    # I
    .param p4, "downloadPercentage"    # F
    .param p5, "downloadedBytes"    # J
    .param p7, "error"    # Ljava/lang/Throwable;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->taskId:I

    .line 595
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    .line 596
    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    .line 597
    iput p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadPercentage:F

    .line 598
    iput-wide p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadedBytes:J

    .line 599
    iput-object p7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->error:Ljava/lang/Throwable;

    .line 600
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/android/exoplayer2/offline/DownloadAction;
    .param p3, "x2"    # I
    .param p4, "x3"    # F
    .param p5, "x4"    # J
    .param p7, "x5"    # Ljava/lang/Throwable;
    .param p8, "x6"    # Lcom/google/android/exoplayer2/offline/DownloadManager$1;

    .line 522
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;-><init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V

    return-void
.end method

.method public static getStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 553
    packed-switch p0, :pswitch_data_0

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 563
    :pswitch_0
    const-string v0, "FAILED"

    return-object v0

    .line 561
    :pswitch_1
    const-string v0, "CANCELED"

    return-object v0

    .line 559
    :pswitch_2
    const-string v0, "COMPLETED"

    return-object v0

    .line 557
    :pswitch_3
    const-string v0, "STARTED"

    return-object v0

    .line 555
    :pswitch_4
    const-string v0, "QUEUED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

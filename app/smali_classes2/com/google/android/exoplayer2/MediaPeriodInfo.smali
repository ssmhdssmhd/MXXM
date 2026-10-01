.class final Lcom/google/android/exoplayer2/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# instance fields
.field public final contentPositionUs:J

.field public final durationUs:J

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isLastInTimelinePeriod:Z

.field public final startPositionUs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZZ)V
    .locals 0
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "startPositionUs"    # J
    .param p4, "contentPositionUs"    # J
    .param p6, "durationUs"    # J
    .param p8, "isLastInTimelinePeriod"    # Z
    .param p9, "isFinal"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 58
    iput-wide p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    .line 59
    iput-wide p4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    .line 60
    iput-wide p6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 61
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 62
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    .line 63
    return-void
.end method


# virtual methods
.method public copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 10
    .param p1, "startPositionUs"    # J

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-wide v2, p1

    .end local p1    # "startPositionUs":J
    .local v2, "startPositionUs":J
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZZ)V

    return-object v0
.end method

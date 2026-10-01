.class public final Lcom/google/android/exoplayer2/offline/TrackKey;
.super Ljava/lang/Object;
.source "TrackKey.java"


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final trackIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "periodIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/exoplayer2/offline/TrackKey;->periodIndex:I

    .line 38
    iput p2, p0, Lcom/google/android/exoplayer2/offline/TrackKey;->groupIndex:I

    .line 39
    iput p3, p0, Lcom/google/android/exoplayer2/offline/TrackKey;->trackIndex:I

    .line 40
    return-void
.end method

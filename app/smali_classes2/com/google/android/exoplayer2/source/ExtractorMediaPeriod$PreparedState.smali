.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$PreparedState;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreparedState"
.end annotation


# instance fields
.field public final seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field public final trackEnabledStates:[Z

.field public final trackIsAudioVideoFlags:[Z

.field public final trackNotifiedDownstreamFormats:[Z

.field public final tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/SeekMap;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V
    .locals 1
    .param p1, "seekMap"    # Lcom/google/android/exoplayer2/extractor/SeekMap;
    .param p2, "tracks"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "trackIsAudioVideoFlags"    # [Z

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$PreparedState;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 999
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$PreparedState;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1000
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 1001
    iget v0, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$PreparedState;->trackEnabledStates:[Z

    .line 1002
    iget v0, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$PreparedState;->trackNotifiedDownstreamFormats:[Z

    .line 1003
    return-void
.end method

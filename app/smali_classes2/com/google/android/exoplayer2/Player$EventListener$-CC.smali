.class public final synthetic Lcom/google/android/exoplayer2/Player$EventListener$-CC;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method public static $default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "isLoading"    # Z

    .line 338
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 395
    return-void
.end method

.method public static $default$onPlayerError(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "error"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 370
    return-void
.end method

.method public static $default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .line 347
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "reason"    # I

    .line 385
    return-void
.end method

.method public static $default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "repeatMode"    # I

    .line 354
    return-void
.end method

.method public static $default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;

    .line 402
    return-void
.end method

.method public static $default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "shuffleModeEnabled"    # Z

    .line 361
    return-void
.end method

.method public static $default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
    .param p3, "reason"    # I

    .line 321
    return-void
.end method

.method public static $default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 331
    return-void
.end method

.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I

.field private static final WITHIN_RENDERER_CAPABILITIES_BONUS:I = 0x3e8


# instance fields
.field private final adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final parametersReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1108
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1116
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 1117
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V
    .locals 2
    .param p1, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1134
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 1135
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1137
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 1
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1126
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 1127
    return-void
.end method

.method static synthetic access$300(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 156
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I

    move-result v0

    return v0
.end method

.method private static compareFormatValues(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 2026
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static compareInts(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .line 2205
    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V
    .locals 11
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1585
    .local p8, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1586
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1587
    .local v2, "trackIndex":I
    nop

    .line 1588
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aget v5, p1, v2

    .line 1587
    move v6, p2

    move-object v4, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIII)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1596
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1585
    .end local v2    # "trackIndex":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1599
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected static formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 1
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "language"    # Ljava/lang/String;

    .line 2070
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 2071
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2070
    :goto_0
    return v0
.end method

.method protected static formatHasNoLanguage(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 2057
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I
    .locals 4
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 1793
    const/4 v0, 0x0

    .line 1794
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_1

    .line 1795
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1796
    add-int/lit8 v0, v0, 0x1

    .line 1794
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1799
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I
    .locals 9
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z

    .line 1760
    const/4 v0, 0x0

    .line 1761
    .local v0, "selectedConfigurationTrackCount":I
    const/4 v1, 0x0

    .line 1762
    .local v1, "selectedConfiguration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1763
    .local v2, "seenConfigurationTuples":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_2

    .line 1764
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 1765
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v7, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    iget-object v8, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    :goto_1
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 1768
    .local v5, "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1769
    invoke-static {p0, p1, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I

    move-result v6

    .line 1770
    .local v6, "configurationCount":I
    if-le v6, v0, :cond_1

    .line 1771
    move-object v1, v5

    .line 1772
    move v0, v6

    .line 1763
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v5    # "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    .end local v6    # "configurationCount":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1777
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x1

    if-le v0, v3, :cond_5

    .line 1778
    new-array v3, v0, [I

    .line 1779
    .local v3, "adaptiveIndices":[I
    const/4 v4, 0x0

    .line 1780
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v6, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_4

    .line 1781
    nop

    .line 1782
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    aget v7, p1, v5

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 1781
    invoke-static {v6, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1783
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "index":I
    .local v6, "index":I
    aput v5, v3, v4

    move v4, v6

    .line 1780
    .end local v6    # "index":I
    .restart local v4    # "index":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1786
    .end local v5    # "i":I
    :cond_4
    return-object v3

    .line 1788
    .end local v3    # "adaptiveIndices":[I
    .end local v4    # "index":I
    :cond_5
    sget-object v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v3
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I
    .locals 12
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1557
    .local p8, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1558
    .local v0, "adaptiveTrackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1559
    move-object/from16 v2, p8

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1560
    .local v3, "trackIndex":I
    nop

    .line 1561
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aget v6, p1, v3

    .line 1560
    move v7, p2

    move-object v5, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1569
    add-int/lit8 v0, v0, 0x1

    .line 1558
    .end local v3    # "trackIndex":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p8

    .line 1572
    .end local v1    # "i":I
    return v0
.end method

.method private static getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIIZ)[I
    .locals 18
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I
    .param p8, "viewportWidth"    # I
    .param p9, "viewportHeight"    # I
    .param p10, "viewportOrientationMayChange"    # Z

    .line 1494
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v9, 0x2

    if-ge v1, v9, :cond_0

    .line 1495
    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v1

    .line 1498
    :cond_0
    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-static {v0, v10, v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v8

    .line 1500
    .local v8, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v9, :cond_1

    .line 1501
    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v1

    .line 1504
    :cond_1
    const/4 v1, 0x0

    .line 1505
    .local v1, "selectedMimeType":Ljava/lang/String;
    if-nez p2, :cond_5

    .line 1507
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v13, v2

    .line 1508
    .local v13, "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1509
    .local v2, "selectedMimeTypeTrackCount":I
    const/4 v3, 0x0

    move-object v14, v1

    move v15, v2

    move v1, v3

    .end local v2    # "selectedMimeTypeTrackCount":I
    .local v1, "i":I
    .local v14, "selectedMimeType":Ljava/lang/String;
    .local v15, "selectedMimeTypeTrackCount":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1510
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1511
    .local v2, "trackIndex":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1512
    .local v3, "sampleMimeType":Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1513
    nop

    .line 1514
    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v1, p1

    move/from16 v2, p3

    .end local v1    # "i":I
    .end local v2    # "trackIndex":I
    .local v16, "i":I
    .local v17, "trackIndex":I
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I

    move-result v9

    .line 1524
    .local v9, "countForMimeType":I
    if-le v9, v15, :cond_3

    .line 1525
    move-object v14, v3

    .line 1526
    move v0, v9

    move v15, v0

    .end local v15    # "selectedMimeTypeTrackCount":I
    .local v0, "selectedMimeTypeTrackCount":I
    goto :goto_1

    .line 1512
    .end local v0    # "selectedMimeTypeTrackCount":I
    .end local v9    # "countForMimeType":I
    .end local v16    # "i":I
    .end local v17    # "trackIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "trackIndex":I
    .restart local v15    # "selectedMimeTypeTrackCount":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    .line 1509
    .end local v1    # "i":I
    .end local v2    # "trackIndex":I
    .end local v3    # "sampleMimeType":Ljava/lang/String;
    .restart local v16    # "i":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v16, 0x1

    const/4 v9, 0x2

    move-object/from16 v0, p0

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_4
    move/from16 v16, v1

    .end local v1    # "i":I
    .restart local v16    # "i":I
    move-object v3, v14

    goto :goto_2

    .line 1505
    .end local v13    # "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "selectedMimeType":Ljava/lang/String;
    .end local v15    # "selectedMimeTypeTrackCount":I
    .end local v16    # "i":I
    .local v1, "selectedMimeType":Ljava/lang/String;
    :cond_5
    move-object v3, v1

    .line 1533
    .end local v1    # "selectedMimeType":Ljava/lang/String;
    .local v3, "selectedMimeType":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V

    .line 1544
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_3

    :cond_6
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 3
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .line 2127
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_2

    .line 2129
    move v0, p1

    .line 2130
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 2131
    move p2, v0

    .line 2134
    .end local v0    # "tempViewportWidth":I
    :cond_2
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    .line 2136
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 2139
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 10
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2077
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2078
    .local v0, "selectedTrackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 2079
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2082
    .end local v1    # "i":I
    :cond_0
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_7

    if-ne p2, v1, :cond_1

    goto :goto_3

    .line 2087
    :cond_1
    const v2, 0x7fffffff

    .line 2088
    .local v2, "maxVideoPixelsToRetain":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_3

    .line 2089
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 2093
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v5, :cond_2

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v5, :cond_2

    .line 2094
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p3, p1, p2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 2096
    .local v5, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v6, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v7, v4, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v6, v6, v7

    .line 2097
    .local v6, "videoPixels":I
    iget v7, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v7, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    if-ge v6, v2, :cond_2

    .line 2100
    move v2, v6

    .line 2088
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v5    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v6    # "videoPixels":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2108
    .end local v3    # "i":I
    :cond_3
    if-eq v2, v1, :cond_6

    .line 2109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 2110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 2111
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v4

    .line 2112
    .local v4, "pixelCount":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-le v4, v2, :cond_5

    .line 2113
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2109
    .end local v3    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v4    # "pixelCount":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2118
    .end local v1    # "i":I
    :cond_6
    return-object v0

    .line 2084
    .end local v2    # "maxVideoPixelsToRetain":I
    :cond_7
    :goto_3
    return-object v0
.end method

.method protected static isSupported(IZ)Z
    .locals 2
    .param p0, "formatSupport"    # I
    .param p1, "allowExceedsCapabilities"    # Z

    .line 2045
    and-int/lit8 v0, p0, 0x7

    .line 2046
    .local v0, "maskedSupport":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z
    .locals 3
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "formatSupport"    # I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 1804
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne v1, v2, :cond_1

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1807
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1804
    :goto_0
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIII)Z
    .locals 4
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "formatSupport"    # I
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoFrameRate"    # I
    .param p7, "maxVideoBitrate"    # I

    .line 1610
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int v1, p2, p3

    if-eqz v1, :cond_5

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1612
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt v1, p4, :cond_5

    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt v1, p5, :cond_5

    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    int-to-float v3, p6

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5

    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt v1, p7, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 1610
    :goto_0
    return v0
.end method

.method private static maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V
    .locals 10
    .param p0, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "renderererFormatSupports"    # [[[I
    .param p2, "rendererConfigurations"    # [Lcom/google/android/exoplayer2/RendererConfiguration;
    .param p3, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p4, "tunnelingAudioSessionId"    # I

    .line 1949
    if-nez p4, :cond_0

    .line 1950
    return-void

    .line 1954
    :cond_0
    const/4 v0, -0x1

    .line 1955
    .local v0, "tunnelingAudioRendererIndex":I
    const/4 v1, -0x1

    .line 1956
    .local v1, "tunnelingVideoRendererIndex":I
    const/4 v2, 0x1

    .line 1957
    .local v2, "enableTunneling":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ge v3, v4, :cond_6

    .line 1958
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    .line 1959
    .local v4, "rendererType":I
    aget-object v7, p3, v3

    .line 1960
    .local v7, "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eq v4, v5, :cond_1

    const/4 v8, 0x2

    if-ne v4, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 1962
    aget-object v8, p1, v3

    .line 1963
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    .line 1962
    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1964
    if-ne v4, v5, :cond_3

    .line 1965
    if-eq v0, v6, :cond_2

    .line 1966
    const/4 v2, 0x0

    .line 1967
    goto :goto_2

    .line 1969
    :cond_2
    move v0, v3

    goto :goto_1

    .line 1972
    :cond_3
    if-eq v1, v6, :cond_4

    .line 1973
    const/4 v2, 0x0

    .line 1974
    goto :goto_2

    .line 1976
    :cond_4
    move v1, v3

    .line 1957
    .end local v4    # "rendererType":I
    .end local v7    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1982
    .end local v3    # "i":I
    :cond_6
    :goto_2
    if-eq v0, v6, :cond_7

    if-eq v1, v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    and-int/2addr v2, v5

    .line 1983
    if-eqz v2, :cond_8

    .line 1984
    new-instance v3, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {v3, p4}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(I)V

    .line 1986
    .local v3, "tunnelingRendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    aput-object v3, p2, v0

    .line 1987
    aput-object v3, p2, v1

    .line 1989
    .end local v3    # "tunnelingRendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    :cond_8
    return-void
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .locals 6
    .param p0, "formatSupports"    # [[I
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "selection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 2002
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2003
    return v0

    .line 2005
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v1

    .line 2006
    .local v1, "trackGroupIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2007
    aget-object v3, p0, v1

    invoke-interface {p2, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    aget v3, v3, v4

    .line 2008
    .local v3, "trackFormatSupport":I
    and-int/lit8 v4, v3, 0x20

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 2010
    return v0

    .line 2006
    .end local v3    # "trackFormatSupport":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2013
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .param p0, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p1, "formatSupport"    # [[I
    .param p2, "mixedMimeTypeAdaptationSupports"    # I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .param p5, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1453
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    move v5, v1

    .line 1456
    .local v5, "requiredAdaptiveSupport":I
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-eqz v1, :cond_1

    and-int v1, p2, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1459
    .local v4, "allowMixedMimeTypes":Z
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v2, :cond_3

    .line 1460
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    .line 1461
    .local v2, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v3, p1, v1

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    .line 1462
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIIZ)[I

    move-result-object v3

    .line 1474
    .local v3, "adaptiveTracks":[I
    array-length v6, v3

    if-lez v6, :cond_2

    .line 1475
    invoke-static/range {p4 .. p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1476
    move-object/from16 v7, p5

    invoke-interface {v6, v2, v7, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v6

    .line 1475
    return-object v6

    .line 1474
    :cond_2
    move-object/from16 v7, p5

    .line 1459
    .end local v2    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v3    # "adaptiveTracks":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v7, p5

    .line 1479
    .end local v1    # "i":I
    const/4 v1, 0x0

    return-object v1
.end method

.method private static selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 20
    .param p0, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p1, "formatSupports"    # [[I
    .param p2, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1621
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1622
    .local v2, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v3, 0x0

    .line 1623
    .local v3, "selectedTrackIndex":I
    const/4 v4, 0x0

    .line 1624
    .local v4, "selectedTrackScore":I
    const/4 v5, -0x1

    .line 1625
    .local v5, "selectedBitrate":I
    const/4 v6, -0x1

    .line 1626
    .local v6, "selectedPixelCount":I
    const/4 v7, 0x0

    .local v7, "groupIndex":I
    :goto_0
    iget v8, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_11

    .line 1627
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 1628
    .local v8, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget v9, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static {v8, v9, v10, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v9

    .line 1630
    .local v9, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v10, p1, v7

    .line 1631
    .local v10, "trackFormatSupport":[I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_1
    iget v12, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_10

    .line 1632
    aget v12, v10, v11

    iget-boolean v13, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1634
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 1635
    .local v12, "format":Lcom/google/android/exoplayer2/Format;
    nop

    .line 1636
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget v13, v12, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v15, -0x1

    if-eq v13, v15, :cond_0

    iget v13, v12, Lcom/google/android/exoplayer2/Format;->width:I

    iget v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-gt v13, v14, :cond_4

    :cond_0
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v13, v15, :cond_1

    iget v13, v12, Lcom/google/android/exoplayer2/Format;->height:I

    iget v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-gt v13, v14, :cond_4

    :cond_1
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_2

    iget v13, v12, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_4

    :cond_2
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v13, v15, :cond_3

    iget v13, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-gt v13, v14, :cond_4

    :cond_3
    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 1643
    .local v13, "isWithinConstraints":Z
    :goto_2
    if-nez v13, :cond_5

    iget-boolean v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v14, :cond_5

    .line 1645
    goto/16 :goto_a

    .line 1647
    :cond_5
    if-eqz v13, :cond_6

    const/4 v14, 0x2

    goto :goto_3

    :cond_6
    const/4 v14, 0x1

    .line 1648
    .local v14, "trackScore":I
    :goto_3
    aget v15, v10, v11

    const/4 v0, 0x0

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v15

    .line 1649
    .local v15, "isWithinCapabilities":Z
    if-eqz v15, :cond_7

    .line 1650
    add-int/lit16 v14, v14, 0x3e8

    .line 1652
    :cond_7
    if-le v14, v4, :cond_8

    const/16 v17, 0x1

    goto :goto_4

    :cond_8
    const/16 v17, 0x0

    .line 1653
    .local v17, "selectTrack":Z
    :goto_4
    if-ne v14, v4, :cond_e

    .line 1654
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v0, :cond_a

    .line 1656
    iget v0, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    if-gez v0, :cond_9

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_5
    move/from16 v17, v16

    goto :goto_9

    .line 1662
    :cond_a
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v0

    .line 1663
    .local v0, "formatPixelCount":I
    if-eq v0, v6, :cond_b

    .line 1664
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v18

    move/from16 v19, v18

    move/from16 v18, v0

    move/from16 v0, v19

    goto :goto_6

    :cond_b
    move/from16 v18, v0

    .end local v0    # "formatPixelCount":I
    .local v18, "formatPixelCount":I
    iget v0, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 1665
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    :goto_6
    nop

    .line 1666
    .local v0, "comparisonResult":I
    if-eqz v15, :cond_c

    if-eqz v13, :cond_c

    if-lez v0, :cond_d

    goto :goto_7

    :cond_c
    if-gez v0, :cond_d

    :goto_7
    const/16 v16, 0x1

    goto :goto_8

    :cond_d
    const/16 v16, 0x0

    :goto_8
    move/from16 v17, v16

    .line 1670
    .end local v0    # "comparisonResult":I
    .end local v18    # "formatPixelCount":I
    :cond_e
    :goto_9
    if-eqz v17, :cond_f

    .line 1671
    move-object v2, v8

    .line 1672
    move v3, v11

    .line 1673
    move v4, v14

    .line 1674
    iget v5, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 1675
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v6

    .line 1631
    .end local v12    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v13    # "isWithinConstraints":Z
    .end local v14    # "trackScore":I
    .end local v15    # "isWithinCapabilities":Z
    .end local v17    # "selectTrack":Z
    :cond_f
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 1626
    .end local v8    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v9    # "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "trackFormatSupport":[I
    .end local v11    # "trackIndex":I
    :cond_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 1680
    .end local v7    # "groupIndex":I
    :cond_11
    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    :goto_b
    return-object v0
.end method


# virtual methods
.method public buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 1171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1212
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1213
    return-void
.end method

.method public final clearSelectionOverrides()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1224
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1225
    return-void
.end method

.method public final clearSelectionOverrides(I)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1218
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1219
    return-void
.end method

.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1
    .param p1, "rendererIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v0

    return v0
.end method

.method public final getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v0

    return-object v0
.end method

.method public final hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v0

    return v0
.end method

.method protected selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 19
    .param p1, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1325
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v7

    .line 1326
    .local v7, "rendererCount":I
    new-array v8, v7, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 1328
    .local v8, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v1, 0x0

    .line 1329
    .local v1, "seenVideoRendererWithMappedTracks":Z
    const/4 v2, 0x0

    .line 1330
    .local v2, "selectedVideoTracks":Z
    const/4 v3, 0x0

    move v9, v1

    move v10, v2

    move v11, v3

    .end local v1    # "seenVideoRendererWithMappedTracks":Z
    .end local v2    # "selectedVideoTracks":Z
    .local v9, "seenVideoRendererWithMappedTracks":Z
    .local v10, "selectedVideoTracks":Z
    .local v11, "i":I
    :goto_0
    if-ge v11, v7, :cond_4

    .line 1331
    const/4 v1, 0x2

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1332
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v10, :cond_1

    .line 1333
    nop

    .line 1335
    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v11

    aget v3, p3, v11

    iget-object v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1334
    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v8, v11

    .line 1340
    aget-object v1, v8, v11

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    move v10, v1

    goto :goto_2

    .line 1332
    :cond_1
    move-object/from16 v4, p4

    .line 1342
    :goto_2
    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_2

    const/4 v12, 0x1

    :cond_2
    or-int v1, v9, v12

    move v9, v1

    .end local v9    # "seenVideoRendererWithMappedTracks":Z
    .restart local v1    # "seenVideoRendererWithMappedTracks":Z
    goto :goto_3

    .line 1331
    .end local v1    # "seenVideoRendererWithMappedTracks":Z
    .restart local v9    # "seenVideoRendererWithMappedTracks":Z
    :cond_3
    move-object/from16 v4, p4

    .line 1330
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v4, p4

    .line 1346
    .end local v11    # "i":I
    const/4 v1, 0x0

    .line 1347
    .local v1, "selectedAudioTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    const/4 v2, -0x1

    .line 1348
    .local v2, "selectedAudioRendererIndex":I
    const/high16 v3, -0x80000000

    .line 1349
    .local v3, "selectedTextTrackScore":I
    const/4 v5, -0x1

    .line 1350
    .local v5, "selectedTextRendererIndex":I
    const/4 v11, 0x0

    move v12, v2

    move v13, v3

    move v14, v5

    move v15, v11

    move-object v11, v1

    .end local v1    # "selectedAudioTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    .end local v2    # "selectedAudioRendererIndex":I
    .end local v3    # "selectedTextTrackScore":I
    .end local v5    # "selectedTextRendererIndex":I
    .local v11, "selectedAudioTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    .local v12, "selectedAudioRendererIndex":I
    .local v13, "selectedTextTrackScore":I
    .local v14, "selectedTextRendererIndex":I
    .local v15, "i":I
    :goto_4
    if-ge v15, v7, :cond_b

    .line 1351
    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    .line 1352
    .local v1, "trackType":I
    const/4 v2, -0x1

    const/16 v16, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1392
    move/from16 v18, v7

    move-object/from16 v17, v8

    move v7, v1

    .line 1394
    .end local v1    # "trackType":I
    .end local v8    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .local v7, "trackType":I
    .local v17, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .local v18, "rendererCount":I
    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v15

    .line 1393
    invoke-virtual {v0, v7, v1, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v17, v15

    goto/16 :goto_6

    .line 1378
    .end local v17    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v18    # "rendererCount":I
    .restart local v1    # "trackType":I
    .local v7, "rendererCount":I
    .restart local v8    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :pswitch_0
    nop

    .line 1379
    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    aget-object v5, p2, v15

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v3

    .line 1380
    .local v3, "textSelection":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/trackselection/TrackSelection;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_6

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v13, :cond_6

    .line 1381
    if-eq v14, v2, :cond_5

    .line 1384
    aput-object v16, v8, v14

    .line 1386
    :cond_5
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    aput-object v2, v8, v15

    .line 1387
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1388
    .end local v13    # "selectedTextTrackScore":I
    .local v2, "selectedTextTrackScore":I
    move v5, v15

    move v13, v2

    move v14, v5

    move/from16 v18, v7

    move-object/from16 v17, v8

    .end local v14    # "selectedTextRendererIndex":I
    .restart local v5    # "selectedTextRendererIndex":I
    goto :goto_6

    .line 1380
    .end local v2    # "selectedTextTrackScore":I
    .end local v5    # "selectedTextRendererIndex":I
    .restart local v13    # "selectedTextTrackScore":I
    .restart local v14    # "selectedTextRendererIndex":I
    :cond_6
    move/from16 v18, v7

    move-object/from16 v17, v8

    goto :goto_6

    .line 1355
    .end local v3    # "textSelection":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/trackselection/TrackSelection;Ljava/lang/Integer;>;"
    :pswitch_1
    move/from16 v18, v7

    move-object/from16 v17, v8

    goto :goto_6

    .line 1357
    :pswitch_2
    nop

    .line 1359
    move v3, v1

    .end local v1    # "trackType":I
    .local v3, "trackType":I
    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    const/4 v5, -0x1

    aget-object v2, p2, v15

    move/from16 v17, v3

    .end local v3    # "trackType":I
    .local v17, "trackType":I
    aget v3, p3, v15

    if-eqz v9, :cond_7

    move-object/from16 v5, v16

    goto :goto_5

    :cond_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1358
    :goto_5
    move/from16 v18, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    const/4 v8, -0x1

    .end local v8    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .local v7, "trackType":I
    .local v17, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .restart local v18    # "rendererCount":I
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Landroid/util/Pair;

    move-result-object v1

    .line 1364
    .local v1, "audioSelection":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;>;"
    if-eqz v1, :cond_a

    if-eqz v11, :cond_8

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 1366
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v2

    if-lez v2, :cond_a

    .line 1367
    :cond_8
    if-eq v12, v8, :cond_9

    .line 1370
    aput-object v16, v17, v12

    .line 1372
    :cond_9
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    aput-object v2, v17, v15

    .line 1373
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 1374
    .end local v11    # "selectedAudioTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    .local v2, "selectedAudioTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    move v3, v15

    move-object v11, v2

    move v12, v3

    .line 1350
    .end local v1    # "audioSelection":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;>;"
    .end local v2    # "selectedAudioTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    .end local v7    # "trackType":I
    .restart local v11    # "selectedAudioTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    :cond_a
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v17

    move/from16 v7, v18

    goto/16 :goto_4

    .end local v17    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v18    # "rendererCount":I
    .local v7, "rendererCount":I
    .restart local v8    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_b
    move-object/from16 v17, v8

    .line 1399
    .end local v8    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .end local v15    # "i":I
    .restart local v17    # "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Landroid/util/Pair;
    .locals 10
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupports"    # [[I
    .param p3, "mixedMimeTypeAdaptationSupports"    # I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[[II",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1709
    const/4 v0, -0x1

    .line 1710
    .local v0, "selectedTrackIndex":I
    const/4 v1, -0x1

    .line 1711
    .local v1, "selectedGroupIndex":I
    const/4 v2, 0x0

    .line 1712
    .local v2, "selectedTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_0
    iget v4, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_3

    .line 1713
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 1714
    .local v4, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v5, p2, v3

    .line 1715
    .local v5, "trackFormatSupport":[I
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_2

    .line 1716
    aget v7, v5, v6

    iget-boolean v8, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1718
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 1719
    .local v7, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    aget v9, v5, v6

    invoke-direct {v8, v7, p4, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 1721
    .local v8, "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    if-eqz v2, :cond_0

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v9

    if-lez v9, :cond_1

    .line 1722
    :cond_0
    move v1, v3

    .line 1723
    move v0, v6

    .line 1724
    move-object v2, v8

    .line 1715
    .end local v7    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v8    # "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1712
    .end local v4    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v5    # "trackFormatSupport":[I
    .end local v6    # "trackIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1730
    .end local v3    # "groupIndex":I
    :cond_3
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 1731
    const/4 v3, 0x0

    return-object v3

    .line 1734
    :cond_4
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 1736
    .local v3, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v4, 0x0

    .line 1737
    .local v4, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-boolean v5, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v5, :cond_5

    iget-boolean v5, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v5, :cond_5

    if-eqz p5, :cond_5

    .line 1741
    aget-object v5, p2, v1

    iget-boolean v6, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    .line 1742
    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I

    move-result-object v5

    .line 1744
    .local v5, "adaptiveTracks":[I
    array-length v6, v5

    if-lez v6, :cond_5

    .line 1745
    nop

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v6

    .line 1746
    invoke-interface {p5, v3, v6, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v4

    .line 1750
    .end local v5    # "adaptiveTracks":[I
    :cond_5
    if-nez v4, :cond_6

    .line 1752
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v5, v3, v0}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    move-object v4, v5

    .line 1755
    :cond_6
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 14
    .param p1, "trackType"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1902
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 1903
    .local v1, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v2, 0x0

    .line 1904
    .local v2, "selectedTrackIndex":I
    const/4 v3, 0x0

    .line 1905
    .local v3, "selectedTrackScore":I
    const/4 v4, 0x0

    .local v4, "groupIndex":I
    :goto_0
    iget v5, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_5

    .line 1906
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 1907
    .local v5, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v6, p3, v4

    .line 1908
    .local v6, "trackFormatSupport":[I
    const/4 v7, 0x0

    .local v7, "trackIndex":I
    :goto_1
    iget v8, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_4

    .line 1909
    aget v8, v6, v7

    move-object/from16 v9, p4

    iget-boolean v10, v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1911
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 1912
    .local v8, "format":Lcom/google/android/exoplayer2/Format;
    iget v10, v8, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/4 v11, 0x1

    and-int/2addr v10, v11

    const/4 v12, 0x0

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    .line 1913
    .local v10, "isDefault":Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v11, 0x2

    .line 1914
    .local v11, "trackScore":I
    :cond_1
    aget v13, v6, v7

    invoke-static {v13, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1915
    add-int/lit16 v11, v11, 0x3e8

    .line 1917
    :cond_2
    if-le v11, v3, :cond_3

    .line 1918
    move-object v1, v5

    .line 1919
    move v2, v7

    .line 1920
    move v3, v11

    .line 1908
    .end local v8    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v10    # "isDefault":Z
    .end local v11    # "trackScore":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v9, p4

    .line 1905
    .end local v5    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v6    # "trackFormatSupport":[I
    .end local v7    # "trackIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v9, p4

    .line 1925
    .end local v4    # "groupIndex":I
    if-nez v1, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v4, v1, v2}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    :goto_3
    return-object v4
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 16
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1827
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 1828
    .local v2, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v3, 0x0

    .line 1829
    .local v3, "selectedTrackIndex":I
    const/4 v4, 0x0

    .line 1830
    .local v4, "selectedTrackScore":I
    const/4 v5, 0x0

    .local v5, "groupIndex":I
    :goto_0
    iget v6, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_b

    .line 1831
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 1832
    .local v6, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v7, p2, v5

    .line 1833
    .local v7, "trackFormatSupport":[I
    const/4 v8, 0x0

    .local v8, "trackIndex":I
    :goto_1
    iget v9, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_a

    .line 1834
    aget v9, v7, v8

    iget-boolean v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1836
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 1837
    .local v9, "format":Lcom/google/android/exoplayer2/Format;
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    .line 1839
    .local v10, "maskedSelectionFlags":I
    and-int/lit8 v11, v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_2

    :cond_0
    const/4 v11, 0x0

    .line 1840
    .local v11, "isDefault":Z
    :goto_2
    and-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_1

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    .line 1842
    .local v13, "isForced":Z
    :goto_3
    iget-object v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v9, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v14

    .line 1843
    .local v14, "preferredLanguageFound":Z
    if-nez v14, :cond_5

    iget-boolean v15, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    if-eqz v15, :cond_2

    .line 1844
    invoke-static {v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasNoLanguage(Lcom/google/android/exoplayer2/Format;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_4

    .line 1856
    :cond_2
    if-eqz v11, :cond_3

    .line 1857
    const/4 v15, 0x3

    .local v15, "trackScore":I
    goto :goto_6

    .line 1858
    .end local v15    # "trackScore":I
    :cond_3
    if-eqz v13, :cond_9

    .line 1859
    iget-object v15, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v9, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1860
    const/4 v15, 0x2

    .restart local v15    # "trackScore":I
    goto :goto_6

    .line 1862
    .end local v15    # "trackScore":I
    :cond_4
    const/4 v15, 0x1

    .restart local v15    # "trackScore":I
    goto :goto_6

    .line 1845
    .end local v15    # "trackScore":I
    :cond_5
    :goto_4
    if-eqz v11, :cond_6

    .line 1846
    const/16 v15, 0x8

    .restart local v15    # "trackScore":I
    goto :goto_5

    .line 1847
    .end local v15    # "trackScore":I
    :cond_6
    if-nez v13, :cond_7

    .line 1851
    const/4 v15, 0x6

    .restart local v15    # "trackScore":I
    goto :goto_5

    .line 1853
    .end local v15    # "trackScore":I
    :cond_7
    const/4 v15, 0x4

    .line 1855
    .restart local v15    # "trackScore":I
    :goto_5
    add-int/2addr v15, v14

    .line 1868
    :goto_6
    aget v0, v7, v8

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1869
    add-int/lit16 v15, v15, 0x3e8

    .line 1871
    :cond_8
    if-le v15, v4, :cond_9

    .line 1872
    move-object v2, v6

    .line 1873
    move v3, v8

    .line 1874
    move v4, v15

    .line 1833
    .end local v9    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v10    # "maskedSelectionFlags":I
    .end local v11    # "isDefault":Z
    .end local v13    # "isForced":Z
    .end local v14    # "preferredLanguageFound":Z
    .end local v15    # "trackScore":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    .line 1830
    .end local v6    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v7    # "trackFormatSupport":[I
    .end local v8    # "trackIndex":I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    .line 1879
    .end local v5    # "groupIndex":I
    :cond_b
    if-nez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    .line 1882
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1881
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1879
    :goto_7
    return-object v0
.end method

.method protected final selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
    .locals 11
    .param p1, "mappedTrackInfo"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererMixedMimeTypeAdaptationSupports"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1243
    .local v0, "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    .line 1244
    .local v1, "rendererCount":I
    nop

    .line 1245
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 1252
    .local v2, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v1, :cond_4

    .line 1253
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1254
    aput-object v5, v2, v3

    goto :goto_1

    .line 1256
    :cond_0
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v7

    .line 1257
    .local v7, "rendererTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v0, v3, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1258
    invoke-virtual {v0, v3, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v8

    .line 1259
    .local v8, "override":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    if-nez v8, :cond_1

    .line 1260
    aput-object v5, v2, v3

    goto :goto_1

    .line 1261
    :cond_1
    iget v5, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    if-ne v5, v6, :cond_2

    .line 1262
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget v6, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1264
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    iget-object v9, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    aget v4, v9, v4

    invoke-direct {v5, v6, v4}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    aput-object v5, v2, v3

    goto :goto_1

    .line 1266
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1267
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    iget v5, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1269
    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 1270
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v6

    iget-object v9, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 1268
    invoke-interface {v4, v5, v6, v9}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1252
    .end local v7    # "rendererTrackGroups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v8    # "override":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1279
    .end local v3    # "i":I
    :cond_4
    new-array v3, v1, [Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 1281
    .local v3, "rendererConfigurations":[Lcom/google/android/exoplayer2/RendererConfiguration;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v1, :cond_8

    .line 1282
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v8

    .line 1283
    .local v8, "forceRendererDisabled":Z
    if-nez v8, :cond_6

    .line 1285
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_5

    aget-object v9, v2, v7

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    .line 1287
    .local v9, "rendererEnabled":Z
    :goto_3
    if-eqz v9, :cond_7

    sget-object v10, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_4

    :cond_7
    move-object v10, v5

    :goto_4
    aput-object v10, v3, v7

    .line 1281
    .end local v8    # "forceRendererDisabled":Z
    .end local v9    # "rendererEnabled":Z
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1291
    .end local v7    # "i":I
    :cond_8
    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    invoke-static {p1, p2, v3, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V

    .line 1298
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 8
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupports"    # [[I
    .param p3, "mixedMimeTypeAdaptationSupports"    # I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1426
    const/4 v0, 0x0

    .line 1427
    .local v0, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-boolean v1, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v1, :cond_0

    if-eqz p5, :cond_0

    .line 1430
    nop

    .line 1437
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v7

    .line 1431
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local p2    # "formatSupports":[[I
    .end local p3    # "mixedMimeTypeAdaptationSupports":I
    .end local p4    # "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .end local p5    # "adaptiveTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .local v2, "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .local v3, "formatSupports":[[I
    .local v4, "mixedMimeTypeAdaptationSupports":I
    .local v5, "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .local v6, "adaptiveTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    goto :goto_0

    .line 1427
    .end local v2    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v3    # "formatSupports":[[I
    .end local v4    # "mixedMimeTypeAdaptationSupports":I
    .end local v5    # "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .end local v6    # "adaptiveTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .restart local p1    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local p2    # "formatSupports":[[I
    .restart local p3    # "mixedMimeTypeAdaptationSupports":I
    .restart local p4    # "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .restart local p5    # "adaptiveTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1439
    .end local p1    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local p2    # "formatSupports":[[I
    .end local p3    # "mixedMimeTypeAdaptationSupports":I
    .end local p4    # "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .end local p5    # "adaptiveTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .restart local v2    # "groups":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .restart local v3    # "formatSupports":[[I
    .restart local v4    # "mixedMimeTypeAdaptationSupports":I
    .restart local v5    # "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .restart local v6    # "adaptiveTrackSelectionFactory":Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    :goto_0
    if-nez v0, :cond_1

    .line 1440
    invoke-static {v2, v3, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 1442
    :cond_1
    return-object v0
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1145
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 1149
    :cond_0
    return-void
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .locals 1
    .param p1, "parametersBuilder"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 1157
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 1158
    return-void
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1178
    return-void
.end method

.method public final setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "override"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1194
    return-void
.end method

.method public setTunnelingAudioSessionId(I)V
    .locals 1
    .param p1, "tunnelingAudioSessionId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setTunnelingAudioSessionId(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1231
    return-void
.end method

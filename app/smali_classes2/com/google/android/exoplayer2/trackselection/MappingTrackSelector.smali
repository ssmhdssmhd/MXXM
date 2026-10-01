.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    return-void
.end method

.method private static findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 7
    .param p0, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 442
    array-length v0, p0

    .line 443
    .local v0, "bestRendererIndex":I
    const/4 v1, 0x0

    .line 444
    .local v1, "bestFormatSupportLevel":I
    const/4 v2, 0x0

    .local v2, "rendererIndex":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 445
    aget-object v3, p0, v2

    .line 446
    .local v3, "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    const/4 v4, 0x0

    .local v4, "trackIndex":I
    :goto_1
    iget v5, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_1

    .line 447
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    .line 449
    .local v5, "formatSupportLevel":I
    if-le v5, v1, :cond_0

    .line 450
    move v0, v2

    .line 451
    move v1, v5

    .line 452
    const/4 v6, 0x4

    if-ne v1, v6, :cond_0

    .line 454
    return v0

    .line 446
    .end local v5    # "formatSupportLevel":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 444
    .end local v3    # "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    .end local v4    # "trackIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v2    # "rendererIndex":I
    :cond_2
    return v0
.end method

.method private static getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 474
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v0, [I

    .line 475
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 476
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupports([Lcom/google/android/exoplayer2/RendererCapabilities;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 492
    array-length v0, p0

    new-array v0, v0, [I

    .line 493
    .local v0, "mixedMimeTypeAdaptationSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 494
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v0, v1

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 328
    return-void
.end method

.method protected abstract selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
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
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 13
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 336
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 337
    .local v0, "rendererTrackGroupCounts":[I
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 338
    .local v1, "rendererTrackGroups":[[Lcom/google/android/exoplayer2/source/TrackGroup;
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v7, v2, [[[I

    .line 339
    .local v7, "rendererFormatSupports":[[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 340
    iget v3, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v3, v1, v2

    .line 341
    iget v3, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v3, v3, [[I

    aput-object v3, v7, v2

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "i":I
    :cond_0
    nop

    .line 346
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Lcom/google/android/exoplayer2/RendererCapabilities;)[I

    move-result-object v6

    .line 350
    .local v6, "rendererMixedMimeTypeAdaptationSupports":[I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_1
    iget v3, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v3, :cond_2

    .line 351
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    .line 353
    .local v3, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 355
    .local v4, "rendererIndex":I
    array-length v5, p1

    if-ne v4, v5, :cond_1

    iget v5, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v5, v5, [I

    goto :goto_2

    :cond_1
    aget-object v5, p1, v4

    .line 356
    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    move-result-object v5

    :goto_2
    nop

    .line 358
    .local v5, "rendererFormatSupport":[I
    aget v8, v0, v4

    .line 359
    .local v8, "rendererTrackGroupCount":I
    aget-object v9, v1, v4

    aput-object v3, v9, v8

    .line 360
    aget-object v9, v7, v4

    aput-object v5, v9, v8

    .line 361
    aget v9, v0, v4

    add-int/lit8 v9, v9, 0x1

    aput v9, v0, v4

    .line 350
    .end local v3    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v4    # "rendererIndex":I
    .end local v5    # "rendererFormatSupport":[I
    .end local v8    # "rendererTrackGroupCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    .end local v2    # "groupIndex":I
    :cond_2
    array-length v2, p1

    new-array v5, v2, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 366
    .local v5, "rendererTrackGroupArrays":[Lcom/google/android/exoplayer2/source/TrackGroupArray;
    array-length v2, p1

    new-array v4, v2, [I

    .line 367
    .local v4, "rendererTrackTypes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 368
    aget v3, v0, v2

    .line 369
    .local v3, "rendererTrackGroupCount":I
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v9, v1, v2

    .line 371
    invoke-static {v9, v3}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v8, v5, v2

    .line 372
    aget-object v8, v7, v2

    .line 373
    invoke-static {v8, v3}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    aput-object v8, v7, v2

    .line 374
    aget-object v8, p1, v2

    invoke-interface {v8}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v8

    aput v8, v4, v2

    .line 367
    .end local v3    # "rendererTrackGroupCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 378
    .end local v2    # "i":I
    :cond_3
    array-length v2, p1

    aget v2, v0, v2

    .line 379
    .local v2, "unmappedTrackGroupCount":I
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v3, p1

    aget-object v3, v1, v3

    .line 381
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v8, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 385
    .local v8, "unmappedTrackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 393
    .local v3, "mappedTrackInfo":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    nop

    .line 394
    invoke-virtual {p0, v3, v7, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;

    move-result-object v9

    .line 396
    .local v9, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;>;"
    new-instance v10, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, [Lcom/google/android/exoplayer2/RendererConfiguration;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-direct {v10, v11, v12, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;Ljava/lang/Object;)V

    return-object v10
.end method

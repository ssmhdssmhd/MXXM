.class public final Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 0
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p3, "constructorHelper"    # Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;",
            ")V"
        }
    .end annotation

    .line 72
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    .line 73
    return-void
.end method

.method private static addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "startTimeUs"    # J
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "rangedUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 154
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 155
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method private static addSegmentsForAdaptationSet(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V
    .locals 23
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "adaptationSet"    # Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .param p2, "periodStartUs"    # J
    .param p4, "periodDurationUs"    # J
    .param p6, "allowIncompleteList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            "JJZ",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    .local p7, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p7

    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 112
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 115
    .local v6, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :try_start_0
    iget v0, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v7, p0

    :try_start_1
    invoke-static {v7, v0, v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .local v0, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v0, :cond_4

    .line 127
    nop

    .line 129
    move-wide/from16 v8, p4

    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v10

    .line 130
    .local v10, "segmentCount":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 134
    iget-object v11, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 135
    .local v11, "baseUrl":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v12

    .line 136
    .local v12, "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v12, :cond_0

    .line 137
    invoke-static {v2, v3, v11, v12, v4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V

    .line 139
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v13

    .line 140
    .local v13, "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v13, :cond_1

    .line 141
    invoke-static {v2, v3, v11, v13, v4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V

    .line 143
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v14

    .line 144
    .local v14, "firstSegmentNum":J
    int-to-long v1, v10

    add-long/2addr v1, v14

    const-wide/16 v16, 0x1

    sub-long v1, v1, v16

    .line 145
    .local v1, "lastSegmentNum":J
    move-wide/from16 v18, v14

    move-wide/from16 v20, v1

    move-wide/from16 v1, v18

    .local v1, "j":J
    .local v20, "lastSegmentNum":J
    :goto_1
    cmp-long v3, v1, v20

    if-gtz v3, :cond_2

    .line 146
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v18

    move v3, v5

    move-object/from16 v22, v6

    .end local v5    # "i":I
    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v3, "i":I
    .local v22, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    add-long v5, p2, v18

    move/from16 v18, v3

    .end local v3    # "i":I
    .local v18, "i":I
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    invoke-static {v5, v6, v11, v3, v4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/util/ArrayList;)V

    .line 145
    add-long v1, v1, v16

    move/from16 v5, v18

    move-object/from16 v6, v22

    goto :goto_1

    .end local v18    # "i":I
    .end local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v5    # "i":I
    .restart local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_2
    move/from16 v18, v5

    move-object/from16 v22, v6

    .end local v5    # "i":I
    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v18    # "i":I
    .restart local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    goto :goto_4

    .line 131
    .end local v1    # "j":J
    .end local v11    # "baseUrl":Ljava/lang/String;
    .end local v12    # "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v13    # "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v14    # "firstSegmentNum":J
    .end local v18    # "i":I
    .end local v20    # "lastSegmentNum":J
    .end local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v5    # "i":I
    .restart local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v2, "Unbounded segment index"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v10    # "segmentCount":I
    :cond_4
    move-wide/from16 v8, p4

    move/from16 v18, v5

    move-object/from16 v22, v6

    .end local v5    # "i":I
    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v18    # "i":I
    .restart local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v2, "Missing segment index"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    .end local v18    # "i":I
    .end local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local p0    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local p2    # "periodStartUs":J
    .end local p4    # "periodDurationUs":J
    .end local p6    # "allowIncompleteList":Z
    .end local p7    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .end local v0    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .restart local v18    # "i":I
    .restart local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local p0    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local p1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local p2    # "periodStartUs":J
    .restart local p4    # "periodDurationUs":J
    .restart local p6    # "allowIncompleteList":Z
    .restart local p7    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v18    # "i":I
    .end local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v5    # "i":I
    .restart local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    :goto_2
    move-wide/from16 v8, p4

    move/from16 v18, v5

    move-object/from16 v22, v6

    .line 121
    .end local v5    # "i":I
    .end local v6    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "i":I
    .restart local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :goto_3
    if-eqz p6, :cond_5

    .line 126
    nop

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    .end local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :goto_4
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .end local v18    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_0

    .line 122
    .end local v5    # "i":I
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v18    # "i":I
    .restart local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_5
    throw v0

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v18    # "i":I
    .end local v22    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_6
    return-void
.end method

.method private static getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .locals 5
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 161
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    .line 162
    .local v0, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v0, :cond_0

    .line 163
    return-object v0

    .line 165
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v1

    .line 166
    .local v1, "seekMap":Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    iget-wide v3, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;J)V

    :goto_0
    return-object v2
.end method


# virtual methods
.method protected bridge synthetic getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 1
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;
    .locals 12
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "allowIncompleteList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 85
    .local v8, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 86
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v9

    .line 87
    .local v9, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-wide v1, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v3

    .line 88
    .local v3, "periodStartUs":J
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 89
    .local v5, "periodDurationUs":J
    iget-object v10, v9, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 90
    .local v10, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v1, 0x0

    move v11, v1

    .local v11, "j":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 91
    nop

    .line 93
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 91
    move-object v1, p1

    move v7, p3

    .end local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p3    # "allowIncompleteList":Z
    .local v1, "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .local v7, "allowIncompleteList":Z
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegmentsForAdaptationSet(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V

    .line 90
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local v7    # "allowIncompleteList":Z
    .restart local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local p3    # "allowIncompleteList":Z
    :cond_0
    move-object v1, p1

    move v7, p3

    .line 85
    .end local v3    # "periodStartUs":J
    .end local v5    # "periodDurationUs":J
    .end local v9    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v10    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .end local v11    # "j":I
    .end local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local p3    # "allowIncompleteList":Z
    .restart local v1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local v7    # "allowIncompleteList":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    .end local v1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .end local v7    # "allowIncompleteList":Z
    .restart local p1    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    .restart local p3    # "allowIncompleteList":Z
    :cond_1
    return-object v8
.end method

.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    .line 48
    const-string/jumbo v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    .line 49
    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    .line 50
    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    .line 51
    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    .line 52
    const-string v0, "clcp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    .line 53
    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 8
    .param p0, "timestamps"    # [J
    .param p1, "duration"    # J
    .param p3, "editStartTime"    # J
    .param p5, "editEndTime"    # J

    .line 1232
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1233
    .local v0, "lastIndex":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 1234
    .local v4, "latestDelayIndex":I
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1235
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    .line 1236
    .local v2, "earliestPaddingIndex":I
    aget-wide v5, p0, v3

    cmp-long v7, v5, p3

    if-gtz v7, :cond_0

    aget-wide v5, p0, v4

    cmp-long v7, p3, v5

    if-gez v7, :cond_0

    aget-wide v5, p0, v2

    cmp-long v7, v5, p5

    if-gez v7, :cond_0

    cmp-long v5, p5, p1

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 1040
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1041
    .local v0, "childAtomPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1042
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1043
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1044
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1045
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1046
    .local v2, "childType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    .line 1047
    return v0

    .line 1049
    :cond_1
    add-int/2addr v0, v1

    .line 1050
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    goto :goto_0

    .line 1051
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 23
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p8, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 901
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v13, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 903
    const/4 v4, 0x0

    .line 904
    .local v4, "quickTimeSoundDescriptionVersion":I
    const/4 v6, 0x6

    if-eqz p6, :cond_0

    .line 905
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 906
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v14, v4

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v14, v4

    .line 914
    .end local v4    # "quickTimeSoundDescriptionVersion":I
    .local v14, "quickTimeSoundDescriptionVersion":I
    :goto_0
    const/4 v4, 0x2

    const/16 v5, 0x10

    const/4 v7, 0x1

    if-eqz v14, :cond_3

    if-ne v14, v7, :cond_1

    goto :goto_1

    .line 922
    :cond_1
    if-ne v14, v4, :cond_2

    .line 923
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 925
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    .line 926
    .local v6, "sampleRate":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 930
    .local v5, "channelCount":I
    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    .line 933
    .end local v5    # "channelCount":I
    .end local v6    # "sampleRate":I
    :cond_2
    return-void

    .line 915
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 916
    .local v8, "channelCount":I
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 917
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v6

    .line 919
    .restart local v6    # "sampleRate":I
    if-ne v14, v7, :cond_4

    .line 920
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 936
    :cond_4
    move v5, v8

    .end local v8    # "channelCount":I
    .restart local v5    # "channelCount":I
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 937
    .local v8, "childPosition":I
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    const/16 v16, 0x0

    move/from16 v10, p1

    if-ne v10, v9, :cond_7

    .line 938
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    .line 940
    .local v9, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v9, :cond_6

    .line 941
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 942
    .end local p1    # "atomType":I
    .local v10, "atomType":I
    if-nez v3, :cond_5

    move-object/from16 v11, v16

    goto :goto_3

    :cond_5
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 943
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v11

    :goto_3
    nop

    .line 944
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v11, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v12, v3, p9

    goto :goto_4

    .line 940
    .end local v10    # "atomType":I
    .end local v11    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_6
    move-object v11, v3

    .line 946
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .restart local v11    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_4
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v3, v10

    goto :goto_5

    .line 937
    .end local v9    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .end local v10    # "atomType":I
    .end local v11    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_7
    move-object v11, v3

    move v3, v10

    .line 954
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v3, "atomType":I
    .restart local v11    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_5
    const/4 v9, 0x0

    .line 955
    .local v9, "mimeType":Ljava/lang/String;
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-ne v3, v10, :cond_8

    .line 956
    const-string v9, "audio/ac3"

    goto :goto_8

    .line 957
    :cond_8
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-ne v3, v10, :cond_9

    .line 958
    const-string v9, "audio/eac3"

    goto :goto_8

    .line 959
    :cond_9
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-ne v3, v10, :cond_a

    .line 960
    const-string v9, "audio/vnd.dts"

    goto :goto_8

    .line 961
    :cond_a
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v3, v10, :cond_14

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-ne v3, v10, :cond_b

    goto :goto_7

    .line 963
    :cond_b
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-ne v3, v10, :cond_c

    .line 964
    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_8

    .line 965
    :cond_c
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-ne v3, v10, :cond_d

    .line 966
    const-string v9, "audio/3gpp"

    goto :goto_8

    .line 967
    :cond_d
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-ne v3, v10, :cond_e

    .line 968
    const-string v9, "audio/amr-wb"

    goto :goto_8

    .line 969
    :cond_e
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v3, v10, :cond_13

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v3, v10, :cond_f

    goto :goto_6

    .line 971
    :cond_f
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-ne v3, v10, :cond_10

    .line 972
    const-string v9, "audio/mpeg"

    goto :goto_8

    .line 973
    :cond_10
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v3, v10, :cond_11

    .line 974
    const-string v9, "audio/alac"

    goto :goto_8

    .line 975
    :cond_11
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alaw:I

    if-ne v3, v10, :cond_12

    .line 976
    const-string v9, "audio/g711-alaw"

    goto :goto_8

    .line 977
    :cond_12
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ulaw:I

    if-ne v3, v10, :cond_15

    .line 978
    const-string v9, "audio/g711-mlaw"

    goto :goto_8

    .line 970
    :cond_13
    :goto_6
    const-string v9, "audio/raw"

    goto :goto_8

    .line 962
    :cond_14
    :goto_7
    const-string v9, "audio/vnd.dts.hd"

    .line 981
    :cond_15
    :goto_8
    const/4 v10, 0x0

    move v4, v8

    move v8, v5

    move v5, v4

    move-object v4, v9

    move-object/from16 v17, v10

    move v9, v6

    const/4 v6, 0x2

    .line 982
    .end local v6    # "sampleRate":I
    .local v4, "mimeType":Ljava/lang/String;
    .local v5, "childPosition":I
    .local v8, "channelCount":I
    .local v9, "sampleRate":I
    .local v17, "initializationData":[B
    :goto_9
    sub-int v10, v5, v1

    if-ge v10, v2, :cond_1f

    .line 983
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 984
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 985
    .local v10, "childAtomSize":I
    const/4 v6, 0x0

    if-lez v10, :cond_16

    goto :goto_a

    :cond_16
    const/4 v7, 0x0

    :goto_a
    const-string v12, "childAtomSize should be positive"

    invoke-static {v7, v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 986
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 987
    .local v7, "childAtomType":I
    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v7, v12, :cond_1b

    if-eqz p6, :cond_17

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v7, v12, :cond_17

    move/from16 v21, v3

    move v1, v5

    move v2, v10

    move/from16 v19, v14

    const/16 v18, 0x2

    const/16 v20, 0x1

    move v14, v7

    goto/16 :goto_b

    .line 1004
    :cond_17
    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v7, v12, :cond_18

    .line 1005
    add-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1006
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v13, v11}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v21, v3

    move v1, v5

    move v2, v10

    move/from16 v19, v14

    const/16 v18, 0x2

    const/16 v20, 0x1

    move v14, v7

    goto/16 :goto_d

    .line 1008
    :cond_18
    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v7, v12, :cond_19

    .line 1009
    add-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1010
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v13, v11}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v21, v3

    move v1, v5

    move v2, v10

    move/from16 v19, v14

    const/16 v18, 0x2

    const/16 v20, 0x1

    move v14, v7

    goto/16 :goto_d

    .line 1012
    :cond_19
    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v7, v12, :cond_1a

    .line 1013
    move v6, v3

    .end local v3    # "atomType":I
    .local v6, "atomType":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move v12, v10

    .end local v10    # "childAtomSize":I
    .local v12, "childAtomSize":I
    const/4 v10, 0x0

    move/from16 v19, v12

    .end local v12    # "childAtomSize":I
    .local v19, "childAtomSize":I
    const/4 v12, 0x0

    move/from16 v20, v5

    .end local v5    # "childPosition":I
    .local v20, "childPosition":I
    const/4 v5, 0x0

    move/from16 v21, v6

    .end local v6    # "atomType":I
    .local v21, "atomType":I
    const/4 v6, -0x1

    move/from16 v22, v7

    .end local v7    # "childAtomType":I
    .local v22, "childAtomType":I
    const/4 v7, -0x1

    move/from16 v2, v19

    move/from16 v1, v20

    const/16 v18, 0x2

    const/16 v20, 0x1

    move/from16 v19, v14

    move/from16 v14, v22

    .end local v20    # "childPosition":I
    .end local v22    # "childAtomType":I
    .local v1, "childPosition":I
    .local v2, "childAtomSize":I
    .local v14, "childAtomType":I
    .local v19, "quickTimeSoundDescriptionVersion":I
    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_d

    .line 1016
    .end local v1    # "childPosition":I
    .end local v2    # "childAtomSize":I
    .end local v19    # "quickTimeSoundDescriptionVersion":I
    .end local v21    # "atomType":I
    .restart local v3    # "atomType":I
    .restart local v5    # "childPosition":I
    .restart local v7    # "childAtomType":I
    .restart local v10    # "childAtomSize":I
    .local v14, "quickTimeSoundDescriptionVersion":I
    :cond_1a
    move/from16 v21, v3

    move v1, v5

    move v2, v10

    move/from16 v19, v14

    const/16 v18, 0x2

    const/16 v20, 0x1

    move v14, v7

    .end local v3    # "atomType":I
    .end local v5    # "childPosition":I
    .end local v7    # "childAtomType":I
    .end local v10    # "childAtomSize":I
    .restart local v1    # "childPosition":I
    .restart local v2    # "childAtomSize":I
    .local v14, "childAtomType":I
    .restart local v19    # "quickTimeSoundDescriptionVersion":I
    .restart local v21    # "atomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v14, v3, :cond_1e

    .line 1017
    new-array v3, v2, [B

    .line 1018
    .end local v17    # "initializationData":[B
    .local v3, "initializationData":[B
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1019
    invoke-virtual {v0, v3, v6, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v17, v3

    goto :goto_d

    .line 987
    .end local v1    # "childPosition":I
    .end local v2    # "childAtomSize":I
    .end local v19    # "quickTimeSoundDescriptionVersion":I
    .end local v21    # "atomType":I
    .local v3, "atomType":I
    .restart local v5    # "childPosition":I
    .restart local v7    # "childAtomType":I
    .restart local v10    # "childAtomSize":I
    .local v14, "quickTimeSoundDescriptionVersion":I
    .restart local v17    # "initializationData":[B
    :cond_1b
    move/from16 v21, v3

    move v1, v5

    move v2, v10

    move/from16 v19, v14

    const/16 v18, 0x2

    const/16 v20, 0x1

    move v14, v7

    .line 988
    .end local v3    # "atomType":I
    .end local v5    # "childPosition":I
    .end local v7    # "childAtomType":I
    .end local v10    # "childAtomSize":I
    .restart local v1    # "childPosition":I
    .restart local v2    # "childAtomSize":I
    .local v14, "childAtomType":I
    .restart local v19    # "quickTimeSoundDescriptionVersion":I
    .restart local v21    # "atomType":I
    :goto_b
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v14, v3, :cond_1c

    move v5, v1

    goto :goto_c

    .line 989
    :cond_1c
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v5

    :goto_c
    nop

    .line 990
    .local v5, "esdsAtomPosition":I
    const/4 v3, -0x1

    if-eq v5, v3, :cond_1d

    .line 991
    nop

    .line 992
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 993
    .local v3, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    .line 994
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v6

    check-cast v17, [B

    .line 995
    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 998
    nop

    .line 999
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v6

    .line 1000
    .local v6, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1001
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1004
    .end local v3    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    .end local v5    # "esdsAtomPosition":I
    .end local v6    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1d
    nop

    .line 1021
    :cond_1e
    :goto_d
    add-int v5, v1, v2

    .line 1022
    .end local v1    # "childPosition":I
    .end local v2    # "childAtomSize":I
    .end local v14    # "childAtomType":I
    .local v5, "childPosition":I
    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v13, p5

    move/from16 v14, v19

    move/from16 v3, v21

    const/4 v7, 0x1

    const/4 v6, 0x2

    goto/16 :goto_9

    .line 1024
    .end local v19    # "quickTimeSoundDescriptionVersion":I
    .end local v21    # "atomType":I
    .local v3, "atomType":I
    .local v14, "quickTimeSoundDescriptionVersion":I
    :cond_1f
    move/from16 v21, v3

    move v1, v5

    move/from16 v19, v14

    const/4 v3, -0x1

    const/16 v18, 0x2

    .end local v3    # "atomType":I
    .end local v5    # "childPosition":I
    .end local v14    # "quickTimeSoundDescriptionVersion":I
    .restart local v1    # "childPosition":I
    .restart local v19    # "quickTimeSoundDescriptionVersion":I
    .restart local v21    # "atomType":I
    iget-object v2, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_22

    if-eqz v4, :cond_22

    .line 1026
    nop

    .line 1027
    const-string v2, "audio/raw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v10, 0x2

    goto :goto_e

    :cond_20
    const/4 v10, -0x1

    .line 1028
    .local v10, "pcmEncoding":I
    :goto_e
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v17, :cond_21

    goto :goto_f

    .line 1030
    :cond_21
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    :goto_f
    nop

    .line 1028
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v13, 0x0

    move-object/from16 v14, p5

    move-object v12, v11

    move-object/from16 v11, v16

    .end local v11    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v12, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    invoke-static/range {v3 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move-object v11, v12

    .end local v12    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v11    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iput-object v2, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 1033
    .end local v10    # "pcmEncoding":I
    :cond_22
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1125
    add-int/lit8 v0, p1, 0x8

    .line 1126
    .local v0, "childPosition":I
    const/4 v1, -0x1

    .line 1127
    .local v1, "schemeInformationBoxPosition":I
    const/4 v2, 0x0

    .line 1128
    .local v2, "schemeInformationBoxSize":I
    const/4 v3, 0x0

    .line 1129
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1130
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v5, v0, p1

    if-ge v5, p2, :cond_3

    .line 1131
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1133
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1134
    .local v6, "childAtomType":I
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v6, v7, :cond_0

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 1136
    :cond_0
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v6, v7, :cond_1

    .line 1137
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1139
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1140
    :cond_1
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v6, v7, :cond_2

    .line 1141
    move v1, v0

    .line 1142
    move v2, v5

    .line 1144
    :cond_2
    :goto_1
    add-int/2addr v0, v5

    .line 1145
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 1147
    :cond_3
    const-string v5, "cenc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "cbc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1148
    const-string v5, "cens"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "cbcs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1157
    :cond_4
    const/4 v5, 0x0

    return-object v5

    .line 1149
    :cond_5
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    const-string v8, "frma atom is mandatory"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1150
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    const-string v8, "schi atom is mandatory"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1152
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    .line 1154
    .local v7, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    const-string/jumbo v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1155
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 11
    .param p0, "edtsAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 867
    if-eqz p0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    move-object v1, v0

    .local v1, "elst":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v0, :cond_0

    goto :goto_3

    .line 870
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 871
    .local v0, "elstData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 872
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 873
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 874
    .local v3, "version":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 875
    .local v4, "entryCount":I
    new-array v5, v4, [J

    .line 876
    .local v5, "editListDurations":[J
    new-array v6, v4, [J

    .line 877
    .local v6, "editListMediaTimes":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 878
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    .line 879
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_1
    aput-wide v9, v5, v7

    .line 880
    if-ne v3, v8, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    :goto_2
    aput-wide v9, v6, v7

    .line 881
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 882
    .local v9, "mediaRateInteger":I
    if-ne v9, v8, :cond_3

    .line 886
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 877
    .end local v9    # "mediaRateInteger":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 884
    .restart local v9    # "mediaRateInteger":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 888
    .end local v7    # "i":I
    .end local v9    # "mediaRateInteger":I
    :cond_4
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    .line 868
    .end local v0    # "elstData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v1    # "elst":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v2    # "fullAtom":I
    .end local v3    # "version":I
    .end local v4    # "entryCount":I
    .end local v5    # "editListDurations":[J
    .end local v6    # "editListMediaTimes":[J
    :cond_5
    :goto_3
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 6
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1058
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1060
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1061
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1062
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 1065
    .local v2, "flags":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 1066
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1068
    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1071
    :cond_1
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_2

    .line 1072
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1076
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1077
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1080
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1081
    .local v1, "objectTypeIndication":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, "mimeType":Ljava/lang/String;
    const-string v4, "audio/mpeg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1083
    const-string v4, "audio/vnd.dts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1084
    const-string v4, "audio/vnd.dts.hd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1088
    :cond_3
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1091
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1092
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 1093
    .local v0, "initializationDataSize":I
    new-array v4, v0, [B

    .line 1094
    .local v4, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1095
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 1085
    .end local v0    # "initializationDataSize":I
    .end local v4    # "initializationData":[B
    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1220
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1221
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1222
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1224
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 1226
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 2
    .param p0, "hdlr"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 600
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 601
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 602
    .local v0, "trackType":I
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne v0, v1, :cond_0

    .line 603
    const/4 v1, 0x1

    return v1

    .line 604
    :cond_0
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne v0, v1, :cond_1

    .line 605
    const/4 v1, 0x2

    return v1

    .line 606
    :cond_1
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 609
    :cond_2
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne v0, v1, :cond_3

    .line 610
    const/4 v1, 0x4

    return v1

    .line 612
    :cond_3
    const/4 v1, -0x1

    return v1

    .line 608
    :cond_4
    :goto_0
    const/4 v1, 0x3

    return v1
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2
    .param p0, "ilst"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 509
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 512
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 513
    .local v1, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v1    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_0
    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object v1
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 7
    .param p0, "mdhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 624
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 625
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 626
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 627
    .local v2, "version":I
    if-nez v2, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 628
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 629
    .local v3, "timescale":J
    if-nez v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 630
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 631
    .local v0, "languageCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v0, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, "language":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private static parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4
    .param p0, "meta"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 494
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 495
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 497
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 498
    .local v1, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 499
    .local v2, "atomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_0

    .line 500
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 501
    add-int v3, v0, v1

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    return-object v3

    .line 503
    :cond_0
    add-int/lit8 v3, v1, -0x8

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 504
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 5
    .param p0, "mvhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 527
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 528
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 529
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 530
    .local v2, "version":I
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 531
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    return-wide v3
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 892
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 893
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 894
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 895
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 1203
    add-int/lit8 v0, p1, 0x8

    .line 1204
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1205
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1207
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1208
    .local v2, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_0

    .line 1209
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v4, v0, v1

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 1211
    :cond_0
    add-int/2addr v0, v1

    .line 1212
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 1213
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1106
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1107
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1109
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1111
    .local v2, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v2, v3, :cond_1

    .line 1112
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1114
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_1

    .line 1115
    return-object v3

    .line 1118
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    add-int/2addr v0, v1

    .line 1119
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 1120
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 19
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .line 1163
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    .line 1164
    .local v1, "childPosition":I
    :goto_0
    sub-int v2, v1, p1

    move/from16 v3, p2

    if-ge v2, v3, :cond_4

    .line 1165
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1166
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1167
    .local v2, "childAtomSize":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1168
    .local v4, "childAtomType":I
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_3

    .line 1169
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1170
    .local v5, "fullAtom":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v6

    .line 1171
    .local v6, "version":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1172
    const/4 v8, 0x0

    .line 1173
    .local v8, "defaultCryptByteBlock":I
    const/4 v9, 0x0

    .line 1174
    .local v9, "defaultSkipByteBlock":I
    if-nez v6, :cond_0

    .line 1175
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v16, v8

    move/from16 v17, v9

    goto :goto_1

    .line 1177
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1178
    .local v10, "patternByte":I
    and-int/lit16 v11, v10, 0xf0

    shr-int/lit8 v8, v11, 0x4

    .line 1179
    and-int/lit8 v9, v10, 0xf

    move/from16 v16, v8

    move/from16 v17, v9

    .line 1181
    .end local v8    # "defaultCryptByteBlock":I
    .end local v9    # "defaultSkipByteBlock":I
    .end local v10    # "patternByte":I
    .local v16, "defaultCryptByteBlock":I
    .local v17, "defaultSkipByteBlock":I
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    const/4 v9, 0x0

    if-ne v8, v7, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 1182
    .local v12, "defaultIsProtected":Z
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    .line 1183
    .local v14, "defaultPerSampleIvSize":I
    const/16 v7, 0x10

    new-array v15, v7, [B

    .line 1184
    .local v15, "defaultKeyId":[B
    array-length v7, v15

    invoke-virtual {v0, v15, v9, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1185
    const/4 v7, 0x0

    .line 1186
    .local v7, "constantIv":[B
    if-eqz v12, :cond_2

    if-nez v14, :cond_2

    .line 1187
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 1188
    .local v8, "constantIvSize":I
    new-array v7, v8, [B

    .line 1189
    invoke-virtual {v0, v7, v9, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v18, v7

    goto :goto_3

    .line 1191
    .end local v8    # "constantIvSize":I
    :cond_2
    move-object/from16 v18, v7

    .end local v7    # "constantIv":[B
    .local v18, "constantIv":[B
    :goto_3
    new-instance v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v13, p3

    invoke-direct/range {v11 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v11

    .line 1194
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v12    # "defaultIsProtected":Z
    .end local v14    # "defaultPerSampleIvSize":I
    .end local v15    # "defaultKeyId":[B
    .end local v16    # "defaultCryptByteBlock":I
    .end local v17    # "defaultSkipByteBlock":I
    .end local v18    # "constantIv":[B
    :cond_3
    add-int/2addr v1, v2

    .line 1195
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 1196
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 68
    .param p0, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 125
    move-object/from16 v9, p1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 126
    .local v11, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_0

    .line 127
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    move-object v12, v0

    .local v0, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    goto :goto_0

    .line 129
    .end local v0    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 130
    .local v0, "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v0, :cond_34

    .line 133
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    move-object v12, v1

    .line 136
    .end local v0    # "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v12, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_0
    invoke-interface {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v13

    .line 137
    .local v13, "sampleCount":I
    const/4 v0, 0x0

    if-nez v13, :cond_1

    .line 138
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v0, [J

    new-array v3, v0, [I

    new-array v5, v0, [J

    new-array v6, v0, [I

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 149
    :cond_1
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 150
    .local v2, "chunkOffsetsAreLongs":Z
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    invoke-virtual {v9, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 151
    .local v3, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v3, :cond_2

    .line 152
    const/4 v2, 0x1

    .line 153
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    move v14, v2

    move-object v15, v3

    goto :goto_1

    .line 151
    :cond_2
    move v14, v2

    move-object v15, v3

    .line 155
    .end local v2    # "chunkOffsetsAreLongs":Z
    .end local v3    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v14, "chunkOffsetsAreLongs":Z
    .local v15, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_1
    iget-object v2, v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 157
    .local v2, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    invoke-virtual {v9, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 159
    .local v3, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 161
    .local v4, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 162
    .local v5, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v7, v6

    .line 164
    .local v7, "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_2
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    .line 165
    .local v8, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v8, :cond_4

    iget-object v6, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 168
    .local v6, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_4
    const/16 v16, 0x0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v0, v3, v2, v14}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    .line 171
    .local v0, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    move-object/from16 v17, v2

    .end local v2    # "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v17, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 172
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    const/4 v2, 0x1

    add-int/lit8 v18, v18, -0x1

    .line 173
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 174
    .local v20, "remainingSamplesAtTimestampDelta":I
    const/16 v21, 0x1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 177
    .local v2, "timestampDeltaInTimeUnits":I
    const/16 v22, 0x0

    .line 178
    .local v22, "remainingSamplesAtTimestampOffset":I
    const/16 v23, 0x0

    .line 179
    .local v23, "remainingTimestampOffsetChanges":I
    const/16 v24, 0x0

    .line 180
    .local v24, "timestampOffset":I
    if-eqz v6, :cond_5

    .line 181
    move-object/from16 v25, v3

    const/16 v3, 0xc

    .end local v3    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v25, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 182
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    goto :goto_3

    .line 180
    .end local v25    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v3    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_5
    move-object/from16 v25, v3

    .line 185
    .end local v3    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v25    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_3
    const/4 v3, -0x1

    .line 186
    .local v3, "nextSynchronizationSampleIndex":I
    const/16 v26, 0x0

    .line 187
    .local v26, "remainingSynchronizationSamples":I
    if-eqz v7, :cond_7

    .line 188
    move/from16 v27, v3

    const/16 v3, 0xc

    .end local v3    # "nextSynchronizationSampleIndex":I
    .local v27, "nextSynchronizationSampleIndex":I
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 189
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 190
    if-lez v26, :cond_6

    .line 191
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v19, v7

    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v3    # "nextSynchronizationSampleIndex":I
    goto :goto_4

    .line 194
    .end local v3    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v19, v7

    move/from16 v3, v27

    goto :goto_4

    .line 187
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v3    # "nextSynchronizationSampleIndex":I
    :cond_7
    move/from16 v27, v3

    .end local v3    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    move-object/from16 v19, v7

    .line 199
    .end local v7    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v3    # "nextSynchronizationSampleIndex":I
    .local v19, "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_4
    nop

    .line 200
    invoke-interface {v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 201
    move/from16 v27, v3

    .end local v3    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    const-string v3, "audio/raw"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v18, :cond_9

    if-nez v23, :cond_9

    if-nez v26, :cond_9

    const/4 v3, 0x1

    goto :goto_5

    .line 200
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v3    # "nextSynchronizationSampleIndex":I
    :cond_8
    move/from16 v27, v3

    .line 201
    .end local v3    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_9
    const/4 v3, 0x0

    :goto_5
    move/from16 v28, v3

    .line 208
    .local v28, "isFixedSampleSizeRawAudio":Z
    const/4 v3, 0x0

    .line 211
    .local v3, "maximumSize":I
    const-wide/16 v29, 0x0

    .line 214
    .local v29, "timestampTimeUnits":J
    if-nez v28, :cond_19

    .line 215
    new-array v7, v13, [J

    .line 216
    .local v7, "offsets":[J
    move/from16 v31, v3

    .end local v3    # "maximumSize":I
    .local v31, "maximumSize":I
    new-array v3, v13, [I

    .line 217
    .local v3, "sizes":[I
    move-object/from16 v32, v4

    .end local v4    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v32, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    new-array v4, v13, [J

    .line 218
    .local v4, "timestamps":[J
    move-object/from16 v33, v5

    .end local v5    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v33, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    new-array v5, v13, [I

    .line 219
    .local v5, "flags":[I
    const-wide/16 v34, 0x0

    .line 220
    .local v34, "offset":J
    const/16 v36, 0x0

    .line 222
    .local v36, "remainingSamplesInChunk":I
    const/16 v37, 0x0

    move/from16 v38, v14

    move-object/from16 v39, v15

    move/from16 v9, v18

    move/from16 v14, v26

    move/from16 v18, v36

    move/from16 v15, v37

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move/from16 v11, v20

    move/from16 v12, v24

    move-wide/from16 v66, v34

    move-object/from16 v34, v6

    move-object/from16 v35, v8

    move/from16 v8, v27

    move/from16 v6, v31

    move-wide/from16 v26, v66

    .end local v20    # "remainingSamplesAtTimestampDelta":I
    .end local v24    # "timestampOffset":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v31    # "maximumSize":I
    .local v6, "maximumSize":I
    .local v8, "nextSynchronizationSampleIndex":I
    .local v9, "remainingTimestampDeltaChanges":I
    .local v11, "remainingSamplesAtTimestampDelta":I
    .local v12, "timestampOffset":I
    .local v14, "remainingSynchronizationSamples":I
    .local v15, "i":I
    .local v18, "remainingSamplesInChunk":I
    .local v26, "offset":J
    .local v34, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v35, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v36, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v37, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v38, "chunkOffsetsAreLongs":Z
    .local v39, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_6
    const-string v10, "AtomParsers"

    if-ge v15, v13, :cond_13

    .line 224
    const/16 v20, 0x1

    .line 225
    .local v20, "chunkDataComplete":Z
    :goto_7
    if-nez v18, :cond_a

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v24

    move/from16 v20, v24

    if-eqz v24, :cond_a

    .line 226
    move/from16 v40, v13

    move/from16 v24, v14

    .end local v13    # "sampleCount":I
    .end local v14    # "remainingSynchronizationSamples":I
    .local v24, "remainingSynchronizationSamples":I
    .local v40, "sampleCount":I
    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 227
    .end local v26    # "offset":J
    .local v13, "offset":J
    move-wide/from16 v26, v13

    .end local v13    # "offset":J
    .restart local v26    # "offset":J
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v18, v13

    move/from16 v14, v24

    move/from16 v13, v40

    .end local v18    # "remainingSamplesInChunk":I
    .local v13, "remainingSamplesInChunk":I
    goto :goto_7

    .line 225
    .end local v24    # "remainingSynchronizationSamples":I
    .end local v40    # "sampleCount":I
    .local v13, "sampleCount":I
    .restart local v14    # "remainingSynchronizationSamples":I
    .restart local v18    # "remainingSamplesInChunk":I
    :cond_a
    move/from16 v40, v13

    move/from16 v24, v14

    .line 229
    .end local v13    # "sampleCount":I
    .end local v14    # "remainingSynchronizationSamples":I
    .restart local v24    # "remainingSynchronizationSamples":I
    .restart local v40    # "sampleCount":I
    if-nez v20, :cond_b

    .line 230
    const-string v13, "Unexpected end of chunk data"

    invoke-static {v10, v13}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    move v13, v15

    .line 232
    .end local v40    # "sampleCount":I
    .restart local v13    # "sampleCount":I
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 233
    invoke-static {v3, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 234
    invoke-static {v4, v13}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 235
    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 236
    const/4 v14, 0x0

    .line 237
    .end local v22    # "remainingSamplesAtTimestampOffset":I
    .local v14, "remainingSamplesAtTimestampOffset":I
    const/16 v23, 0x0

    .line 238
    move/from16 v22, v14

    move/from16 v14, v18

    goto/16 :goto_b

    .line 242
    .end local v13    # "sampleCount":I
    .end local v14    # "remainingSamplesAtTimestampOffset":I
    .restart local v22    # "remainingSamplesAtTimestampOffset":I
    .restart local v40    # "sampleCount":I
    :cond_b
    if-eqz v34, :cond_d

    .line 243
    :goto_8
    if-nez v22, :cond_c

    if-lez v23, :cond_c

    .line 244
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    .line 250
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 251
    add-int/lit8 v23, v23, -0x1

    goto :goto_8

    .line 253
    :cond_c
    add-int/lit8 v22, v22, -0x1

    .line 256
    :cond_d
    aput-wide v26, v7, v15

    .line 257
    invoke-interface/range {v37 .. v37}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v10

    aput v10, v3, v15

    .line 258
    aget v10, v3, v15

    if-le v10, v6, :cond_e

    .line 259
    aget v6, v3, v15

    .line 261
    :cond_e
    int-to-long v13, v12

    add-long v13, v29, v13

    aput-wide v13, v4, v15

    .line 264
    if-nez v19, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    :goto_9
    aput v10, v5, v15

    .line 265
    if-ne v15, v8, :cond_10

    .line 266
    aput v21, v5, v15

    .line 267
    add-int/lit8 v14, v24, -0x1

    .line 268
    .end local v24    # "remainingSynchronizationSamples":I
    .local v14, "remainingSynchronizationSamples":I
    if-lez v14, :cond_11

    .line 269
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    goto :goto_a

    .line 265
    .end local v14    # "remainingSynchronizationSamples":I
    .restart local v24    # "remainingSynchronizationSamples":I
    :cond_10
    move/from16 v14, v24

    .line 274
    .end local v24    # "remainingSynchronizationSamples":I
    .restart local v14    # "remainingSynchronizationSamples":I
    :cond_11
    :goto_a
    move-object v13, v3

    move-object/from16 v41, v4

    .end local v3    # "sizes":[I
    .end local v4    # "timestamps":[J
    .local v13, "sizes":[I
    .local v41, "timestamps":[J
    int-to-long v3, v2

    add-long v29, v29, v3

    .line 275
    add-int/lit8 v11, v11, -0x1

    .line 276
    if-nez v11, :cond_12

    if-lez v9, :cond_12

    .line 277
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 284
    .end local v11    # "remainingSamplesAtTimestampDelta":I
    .local v3, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 285
    add-int/lit8 v9, v9, -0x1

    move v11, v3

    .line 288
    .end local v3    # "remainingSamplesAtTimestampDelta":I
    .restart local v11    # "remainingSamplesAtTimestampDelta":I
    :cond_12
    aget v3, v13, v15

    int-to-long v3, v3

    add-long v26, v26, v3

    .line 289
    nop

    .end local v20    # "chunkDataComplete":Z
    add-int/lit8 v18, v18, -0x1

    .line 222
    add-int/lit8 v15, v15, 0x1

    move-object v3, v13

    move/from16 v13, v40

    move-object/from16 v4, v41

    goto/16 :goto_6

    .end local v40    # "sampleCount":I
    .end local v41    # "timestamps":[J
    .local v3, "sizes":[I
    .restart local v4    # "timestamps":[J
    .local v13, "sampleCount":I
    :cond_13
    move-object/from16 v41, v4

    move/from16 v40, v13

    move/from16 v24, v14

    move-object v13, v3

    .end local v3    # "sizes":[I
    .end local v4    # "timestamps":[J
    .end local v14    # "remainingSynchronizationSamples":I
    .local v13, "sizes":[I
    .restart local v24    # "remainingSynchronizationSamples":I
    .restart local v40    # "sampleCount":I
    .restart local v41    # "timestamps":[J
    move/from16 v13, v40

    move/from16 v14, v18

    .line 291
    .end local v15    # "i":I
    .end local v18    # "remainingSamplesInChunk":I
    .end local v40    # "sampleCount":I
    .end local v41    # "timestamps":[J
    .restart local v3    # "sizes":[I
    .restart local v4    # "timestamps":[J
    .local v13, "sampleCount":I
    .local v14, "remainingSamplesInChunk":I
    :goto_b
    move v15, v2

    move-object/from16 v18, v3

    .end local v2    # "timestampDeltaInTimeUnits":I
    .end local v3    # "sizes":[I
    .local v15, "timestampDeltaInTimeUnits":I
    .local v18, "sizes":[I
    int-to-long v2, v12

    add-long v2, v29, v2

    .line 293
    .local v2, "duration":J
    if-nez v22, :cond_14

    const/16 v20, 0x1

    goto :goto_c

    :cond_14
    const/16 v20, 0x0

    :goto_c
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 295
    :goto_d
    if-lez v23, :cond_16

    .line 296
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    if-nez v20, :cond_15

    const/16 v20, 0x1

    goto :goto_e

    :cond_15
    const/16 v20, 0x0

    :goto_e
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 297
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 298
    add-int/lit8 v23, v23, -0x1

    goto :goto_d

    .line 303
    :cond_16
    if-nez v24, :cond_18

    if-nez v11, :cond_18

    if-nez v14, :cond_18

    if-eqz v9, :cond_17

    goto :goto_f

    :cond_17
    move-wide/from16 v40, v2

    goto :goto_10

    .line 305
    :cond_18
    :goto_f
    move-wide/from16 v40, v2

    .end local v2    # "duration":J
    .local v40, "duration":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent stbl box for track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v24

    .end local v24    # "remainingSynchronizationSamples":I
    .local v3, "remainingSynchronizationSamples":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v3    # "remainingSynchronizationSamples":I
    .restart local v24    # "remainingSynchronizationSamples":I
    const-string v3, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remainingTimestampDeltaChanges "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v14    # "remainingSamplesInChunk":I
    .end local v26    # "offset":J
    :goto_10
    move-object v2, v5

    move-object v5, v4

    move v4, v6

    move-object v6, v2

    move/from16 v27, v8

    move/from16 v20, v11

    move-object/from16 v3, v18

    move/from16 v26, v24

    move-wide/from16 v41, v40

    move/from16 v18, v9

    move/from16 v24, v12

    move-object v2, v7

    goto :goto_12

    .line 312
    .end local v7    # "offsets":[J
    .end local v9    # "remainingTimestampDeltaChanges":I
    .end local v32    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v33    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v34    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v35    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v36    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v37    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v38    # "chunkOffsetsAreLongs":Z
    .end local v39    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v40    # "duration":J
    .local v2, "timestampDeltaInTimeUnits":I
    .local v3, "maximumSize":I
    .local v4, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v5, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v6, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v8, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v11, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v12, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v14, "chunkOffsetsAreLongs":Z
    .local v15, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v18, "remainingTimestampDeltaChanges":I
    .local v20, "remainingSamplesAtTimestampDelta":I
    .local v24, "timestampOffset":I
    .local v26, "remainingSynchronizationSamples":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_19
    move/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v8

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move/from16 v40, v13

    move/from16 v38, v14

    move-object/from16 v39, v15

    .end local v3    # "maximumSize":I
    .end local v4    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v5    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v6    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v8    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v11    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v12    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v13    # "sampleCount":I
    .end local v14    # "chunkOffsetsAreLongs":Z
    .end local v15    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v31    # "maximumSize":I
    .restart local v32    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v33    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v34    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v35    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v36    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v37    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v38    # "chunkOffsetsAreLongs":Z
    .restart local v39    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v40, "sampleCount":I
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v3, v3, [J

    .line 313
    .local v3, "chunkOffsetsBytes":[J
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    .line 314
    .local v4, "chunkSampleCounts":[I
    :goto_11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 315
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v6, v3, v5

    .line 316
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v6, v4, v5

    goto :goto_11

    .line 318
    :cond_1a
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 319
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v5

    .line 320
    .local v5, "fixedSampleSize":I
    int-to-long v6, v2

    invoke-static {v5, v3, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v6

    .line 322
    .local v6, "rechunkedResults":Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 323
    .restart local v7    # "offsets":[J
    iget-object v8, v6, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 324
    .local v8, "sizes":[I
    iget v9, v6, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 325
    .end local v31    # "maximumSize":I
    .local v9, "maximumSize":I
    iget-object v10, v6, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 326
    .local v10, "timestamps":[J
    iget-object v11, v6, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 327
    .local v11, "flags":[I
    iget-wide v12, v6, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move v15, v2

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    move-object v6, v11

    move-wide/from16 v41, v12

    move/from16 v13, v40

    move-object v2, v7

    .line 329
    .end local v7    # "offsets":[J
    .end local v8    # "sizes":[I
    .end local v9    # "maximumSize":I
    .end local v10    # "timestamps":[J
    .end local v11    # "flags":[I
    .end local v40    # "sampleCount":I
    .local v2, "offsets":[J
    .local v3, "sizes":[I
    .local v4, "maximumSize":I
    .local v5, "timestamps":[J
    .local v6, "flags":[I
    .restart local v13    # "sampleCount":I
    .local v15, "timestampDeltaInTimeUnits":I
    .local v41, "duration":J
    :goto_12
    const-wide/32 v43, 0xf4240

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v45, v7

    invoke-static/range {v41 .. v46}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    .line 331
    .local v9, "durationUs":J
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v7, :cond_33

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v7

    if-eqz v7, :cond_1b

    move-object v14, v0

    move-object/from16 v58, v2

    move-object/from16 v59, v3

    move/from16 v31, v4

    move-object/from16 v16, v6

    move-wide/from16 v45, v9

    move-object v10, v5

    goto/16 :goto_24

    .line 346
    :cond_1b
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v7, v7

    const-wide/16 v48, 0x0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v7, v8, :cond_20

    array-length v7, v5

    const/4 v8, 0x2

    if-lt v7, v8, :cond_20

    .line 349
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v44, v7, v16

    .line 350
    .local v44, "editStartTime":J
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v50, v7, v16

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v52, v7

    move-wide/from16 v54, v11

    invoke-static/range {v50 .. v55}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    add-long v46, v44, v7

    .line 352
    .local v46, "editEndTime":J
    move-wide/from16 v42, v41

    move-object/from16 v41, v5

    .end local v5    # "timestamps":[J
    .local v41, "timestamps":[J
    .local v42, "duration":J
    invoke-static/range {v41 .. v47}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v5

    move v7, v5

    move-object/from16 v5, v41

    move-wide/from16 v41, v42

    .end local v42    # "duration":J
    .restart local v5    # "timestamps":[J
    .local v41, "duration":J
    if-eqz v7, :cond_1f

    .line 353
    sub-long v50, v41, v46

    .line 354
    .local v50, "paddingTimeUnits":J
    aget-wide v7, v5, v16

    sub-long v58, v44, v7

    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v7, v7

    iget-wide v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v60, v7

    move-wide/from16 v62, v11

    invoke-static/range {v58 .. v63}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 356
    .local v11, "encoderDelay":J
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v7, v7

    move-object/from16 v31, v2

    move-object v14, v3

    .end local v2    # "offsets":[J
    .end local v3    # "sizes":[I
    .local v14, "sizes":[I
    .local v31, "offsets":[J
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v54, v2

    move-wide/from16 v52, v7

    invoke-static/range {v50 .. v55}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 358
    .local v2, "encoderPadding":J
    cmp-long v7, v11, v48

    if-nez v7, :cond_1d

    cmp-long v7, v2, v48

    if-eqz v7, :cond_1c

    goto :goto_13

    :cond_1c
    move-object v3, v14

    move-object/from16 v2, v31

    move-object v14, v0

    goto :goto_14

    :cond_1d
    :goto_13
    const-wide/32 v7, 0x7fffffff

    cmp-long v40, v11, v7

    if-gtz v40, :cond_1e

    cmp-long v40, v2, v7

    if-gtz v40, :cond_1e

    .line 360
    long-to-int v7, v11

    move-object/from16 v8, p2

    iput v7, v8, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 361
    long-to-int v7, v2

    iput v7, v8, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 362
    move-wide/from16 v52, v2

    .end local v2    # "encoderPadding":J
    .local v52, "encoderPadding":J
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v40, v6

    const-wide/32 v6, 0xf4240

    .end local v6    # "flags":[I
    .local v40, "flags":[I
    invoke-static {v5, v6, v7, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 363
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v54, v2, v16

    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 364
    const-wide/32 v56, 0xf4240

    move-wide/from16 v58, v2

    invoke-static/range {v54 .. v59}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 366
    .local v2, "editedDurationUs":J
    move-object v6, v0

    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v6, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-wide v7, v2

    move-object v3, v14

    move-object/from16 v2, v31

    move-object v14, v6

    move-object/from16 v6, v40

    .end local v31    # "offsets":[J
    .end local v40    # "flags":[I
    .local v2, "offsets":[J
    .restart local v3    # "sizes":[I
    .local v6, "flags":[I
    .local v7, "editedDurationUs":J
    .local v14, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 358
    .end local v3    # "sizes":[I
    .end local v7    # "editedDurationUs":J
    .end local v52    # "encoderPadding":J
    .restart local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v2, "encoderPadding":J
    .local v14, "sizes":[I
    .restart local v31    # "offsets":[J
    :cond_1e
    move-wide/from16 v52, v2

    move-object v3, v14

    move-object/from16 v2, v31

    move-object v14, v0

    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v31    # "offsets":[J
    .local v2, "offsets":[J
    .restart local v3    # "sizes":[I
    .local v14, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v52    # "encoderPadding":J
    goto :goto_14

    .line 352
    .end local v11    # "encoderDelay":J
    .end local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v50    # "paddingTimeUnits":J
    .end local v52    # "encoderPadding":J
    .restart local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    :cond_1f
    move-object v14, v0

    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    goto :goto_14

    .line 346
    .end local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "editStartTime":J
    .end local v46    # "editEndTime":J
    .restart local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    :cond_20
    move-object v14, v0

    .line 372
    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    :goto_14
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_22

    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v7, v0, v16

    cmp-long v0, v7, v48

    if-nez v0, :cond_22

    .line 376
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v11, v0, v16

    .line 377
    .local v11, "editStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v7, v5

    if-ge v0, v7, :cond_21

    .line 378
    aget-wide v7, v5, v0

    sub-long v43, v7, v11

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 379
    const-wide/32 v45, 0xf4240

    move-wide/from16 v47, v7

    invoke-static/range {v43 .. v48}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    aput-wide v7, v5, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 382
    .end local v0    # "i":I
    :cond_21
    sub-long v43, v41, v11

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 383
    const-wide/32 v45, 0xf4240

    move-wide/from16 v47, v7

    invoke-static/range {v43 .. v48}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 384
    .end local v9    # "durationUs":J
    .local v7, "durationUs":J
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    move-object/from16 v31, v3

    move-object v3, v1

    move-object/from16 v1, v31

    move/from16 v31, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v6

    .end local v3    # "sizes":[I
    .end local v5    # "timestamps":[J
    .end local v6    # "flags":[I
    .local v0, "offsets":[J
    .local v1, "sizes":[I
    .local v2, "flags":[I
    .local v4, "timestamps":[J
    .local v31, "maximumSize":I
    return-object v5

    .line 372
    .end local v0    # "offsets":[J
    .end local v1    # "sizes":[I
    .end local v7    # "durationUs":J
    .end local v11    # "editStartTime":J
    .end local v31    # "maximumSize":I
    .local v2, "offsets":[J
    .restart local v3    # "sizes":[I
    .local v4, "maximumSize":I
    .restart local v5    # "timestamps":[J
    .restart local v6    # "flags":[I
    .restart local v9    # "durationUs":J
    :cond_22
    move-object v0, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    move/from16 v31, v4

    move-object v4, v5

    move-object v2, v6

    .line 389
    .end local v3    # "sizes":[I
    .end local v5    # "timestamps":[J
    .end local v6    # "flags":[I
    .restart local v0    # "offsets":[J
    .restart local v1    # "sizes":[I
    .local v2, "flags":[I
    .local v4, "timestamps":[J
    .restart local v31    # "maximumSize":I
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_23

    const/4 v5, 0x1

    goto :goto_16

    :cond_23
    const/4 v5, 0x0

    :goto_16
    move v11, v5

    .line 392
    .local v11, "omitClippedSample":Z
    const/4 v5, 0x0

    .line 393
    .local v5, "editedSampleCount":I
    const/4 v6, 0x0

    .line 394
    .local v6, "nextSampleIndex":I
    const/4 v7, 0x0

    .line 395
    .local v7, "copyMetadata":Z
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    new-array v12, v8, [I

    .line 396
    .local v12, "startIndices":[I
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    new-array v8, v8, [I

    .line 397
    .local v8, "endIndices":[I
    const/16 v40, 0x0

    move/from16 v66, v40

    move/from16 v40, v7

    move/from16 v7, v66

    .local v7, "i":I
    .local v40, "copyMetadata":Z
    :goto_17
    move-object/from16 v43, v8

    .end local v8    # "endIndices":[I
    .local v43, "endIndices":[I
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v7, v8, :cond_28

    .line 398
    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    move/from16 v44, v7

    .end local v7    # "i":I
    .local v44, "i":I
    aget-wide v7, v8, v44

    .line 399
    .local v7, "editMediaTime":J
    const-wide/16 v45, -0x1

    cmp-long v47, v7, v45

    if-eqz v47, :cond_27

    .line 400
    move-wide/from16 v45, v9

    .end local v9    # "durationUs":J
    .local v45, "durationUs":J
    iget-object v9, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v47, v9, v44

    iget-wide v9, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v49, v9

    iget-wide v9, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 401
    move-wide/from16 v51, v9

    invoke-static/range {v47 .. v52}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    .line 403
    .local v9, "editDuration":J
    move-wide/from16 v47, v9

    const/4 v9, 0x1

    .end local v9    # "editDuration":J
    .local v47, "editDuration":J
    invoke-static {v4, v7, v8, v9, v9}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v10

    aput v10, v12, v44

    .line 404
    add-long v9, v7, v47

    .line 405
    move-wide/from16 v49, v7

    const/4 v7, 0x0

    .end local v7    # "editMediaTime":J
    .local v49, "editMediaTime":J
    invoke-static {v4, v9, v10, v11, v7}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v8

    aput v8, v43, v44

    .line 407
    :goto_18
    aget v8, v12, v44

    aget v9, v43, v44

    if-ge v8, v9, :cond_24

    aget v8, v12, v44

    aget v8, v2, v8

    const/16 v21, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_25

    .line 413
    aget v8, v12, v44

    add-int/lit8 v8, v8, 0x1

    aput v8, v12, v44

    goto :goto_18

    .line 407
    :cond_24
    const/16 v21, 0x1

    .line 415
    :cond_25
    aget v8, v43, v44

    aget v9, v12, v44

    sub-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 416
    aget v8, v12, v44

    if-eq v6, v8, :cond_26

    const/4 v8, 0x1

    goto :goto_19

    :cond_26
    const/4 v8, 0x0

    :goto_19
    or-int v8, v40, v8

    .line 417
    .end local v40    # "copyMetadata":Z
    .local v8, "copyMetadata":Z
    aget v6, v43, v44

    move/from16 v40, v8

    goto :goto_1a

    .line 399
    .end local v8    # "copyMetadata":Z
    .end local v45    # "durationUs":J
    .end local v47    # "editDuration":J
    .end local v49    # "editMediaTime":J
    .restart local v7    # "editMediaTime":J
    .local v9, "durationUs":J
    .restart local v40    # "copyMetadata":Z
    :cond_27
    move-wide/from16 v49, v7

    move-wide/from16 v45, v9

    const/4 v7, 0x0

    const/16 v21, 0x1

    .line 397
    .end local v7    # "editMediaTime":J
    .end local v9    # "durationUs":J
    .restart local v45    # "durationUs":J
    :goto_1a
    add-int/lit8 v8, v44, 0x1

    move v7, v8

    move-object/from16 v8, v43

    move-wide/from16 v9, v45

    const/16 v16, 0x0

    .end local v44    # "i":I
    .local v8, "i":I
    goto :goto_17

    .end local v8    # "i":I
    .end local v45    # "durationUs":J
    .local v7, "i":I
    .restart local v9    # "durationUs":J
    :cond_28
    move/from16 v44, v7

    move-wide/from16 v45, v9

    const/4 v7, 0x0

    const/16 v21, 0x1

    .line 420
    .end local v7    # "i":I
    .end local v9    # "durationUs":J
    .restart local v45    # "durationUs":J
    if-eq v5, v13, :cond_29

    goto :goto_1b

    :cond_29
    const/16 v21, 0x0

    :goto_1b
    or-int v9, v40, v21

    .line 423
    .end local v40    # "copyMetadata":Z
    .local v9, "copyMetadata":Z
    if-eqz v9, :cond_2a

    new-array v8, v5, [J

    goto :goto_1c

    :cond_2a
    move-object v8, v0

    .line 424
    .local v8, "editedOffsets":[J
    :goto_1c
    if-eqz v9, :cond_2b

    new-array v10, v5, [I

    goto :goto_1d

    :cond_2b
    move-object v10, v1

    .line 425
    .local v10, "editedSizes":[I
    :goto_1d
    if-eqz v9, :cond_2c

    goto :goto_1e

    :cond_2c
    move/from16 v7, v31

    .line 426
    .local v7, "editedMaximumSize":I
    :goto_1e
    if-eqz v9, :cond_2d

    move-object/from16 v16, v4

    .end local v4    # "timestamps":[J
    .local v16, "timestamps":[J
    new-array v4, v5, [I

    goto :goto_1f

    .end local v16    # "timestamps":[J
    .restart local v4    # "timestamps":[J
    :cond_2d
    move-object/from16 v16, v4

    .end local v4    # "timestamps":[J
    .restart local v16    # "timestamps":[J
    move-object v4, v2

    .line 427
    .local v4, "editedFlags":[I
    :goto_1f
    move/from16 v21, v6

    move v6, v5

    .end local v5    # "editedSampleCount":I
    .local v6, "editedSampleCount":I
    .local v21, "nextSampleIndex":I
    new-array v5, v6, [J

    .line 428
    .local v5, "editedTimestamps":[J
    const-wide/16 v47, 0x0

    .line 429
    .local v47, "pts":J
    const/16 v40, 0x0

    .line 430
    .local v40, "sampleIndex":I
    const/16 v44, 0x0

    move/from16 v66, v44

    move-object/from16 v44, v5

    move/from16 v5, v66

    move/from16 v66, v40

    move/from16 v40, v9

    move/from16 v9, v66

    .local v5, "i":I
    .local v9, "sampleIndex":I
    .local v40, "copyMetadata":Z
    .local v44, "editedTimestamps":[J
    :goto_20
    move/from16 v53, v6

    .end local v6    # "editedSampleCount":I
    .local v53, "editedSampleCount":I
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v6, v6

    if-ge v5, v6, :cond_32

    .line 431
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v54, v6, v5

    .line 432
    .local v54, "editMediaTime":J
    aget v6, v12, v5

    .line 433
    .local v6, "startIndex":I
    move/from16 v56, v5

    .end local v5    # "i":I
    .local v56, "i":I
    aget v5, v43, v56

    .line 434
    .local v5, "endIndex":I
    if-eqz v40, :cond_2e

    .line 435
    move/from16 v57, v7

    .end local v7    # "editedMaximumSize":I
    .local v57, "editedMaximumSize":I
    sub-int v7, v5, v6

    .line 436
    .local v7, "count":I
    invoke-static {v0, v6, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    invoke-static {v1, v6, v10, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    invoke-static {v2, v6, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 434
    .end local v57    # "editedMaximumSize":I
    .local v7, "editedMaximumSize":I
    :cond_2e
    move/from16 v57, v7

    .line 440
    .end local v7    # "editedMaximumSize":I
    .restart local v57    # "editedMaximumSize":I
    :goto_21
    move v7, v6

    move/from16 v66, v57

    move/from16 v57, v9

    move/from16 v9, v66

    .local v7, "j":I
    .local v9, "editedMaximumSize":I
    .local v57, "sampleIndex":I
    :goto_22
    if-ge v7, v5, :cond_31

    .line 441
    const-wide/32 v49, 0xf4240

    move-object/from16 v58, v0

    move-object/from16 v59, v1

    .end local v0    # "offsets":[J
    .end local v1    # "sizes":[I
    .local v58, "offsets":[J
    .local v59, "sizes":[I
    iget-wide v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v51, v0

    invoke-static/range {v47 .. v52}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 442
    .local v0, "ptsUs":J
    aget-wide v49, v16, v7

    sub-long v60, v49, v54

    move-wide/from16 v49, v0

    .end local v0    # "ptsUs":J
    .local v49, "ptsUs":J
    iget-wide v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 443
    const-wide/32 v62, 0xf4240

    move-wide/from16 v64, v0

    invoke-static/range {v60 .. v65}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 445
    .local v0, "timeInSegmentUs":J
    add-long v51, v49, v0

    aput-wide v51, v44, v57

    .line 446
    if-eqz v40, :cond_2f

    move-wide/from16 v51, v0

    .end local v0    # "timeInSegmentUs":J
    .local v51, "timeInSegmentUs":J
    aget v0, v10, v57

    if-le v0, v9, :cond_30

    .line 447
    aget v9, v59, v7

    goto :goto_23

    .line 446
    .end local v51    # "timeInSegmentUs":J
    .restart local v0    # "timeInSegmentUs":J
    :cond_2f
    move-wide/from16 v51, v0

    .line 449
    .end local v0    # "timeInSegmentUs":J
    .restart local v51    # "timeInSegmentUs":J
    :cond_30
    :goto_23
    nop

    .end local v49    # "ptsUs":J
    .end local v51    # "timeInSegmentUs":J
    add-int/lit8 v57, v57, 0x1

    .line 440
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    goto :goto_22

    .end local v58    # "offsets":[J
    .end local v59    # "sizes":[I
    .local v0, "offsets":[J
    .restart local v1    # "sizes":[I
    :cond_31
    move-object/from16 v58, v0

    move-object/from16 v59, v1

    .line 451
    .end local v0    # "offsets":[J
    .end local v1    # "sizes":[I
    .end local v7    # "j":I
    .restart local v58    # "offsets":[J
    .restart local v59    # "sizes":[I
    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v49, v0, v56

    add-long v47, v47, v49

    .line 430
    .end local v5    # "endIndex":I
    .end local v6    # "startIndex":I
    .end local v54    # "editMediaTime":J
    add-int/lit8 v5, v56, 0x1

    move v7, v9

    move/from16 v6, v53

    move/from16 v9, v57

    move-object/from16 v0, v58

    .end local v56    # "i":I
    .local v5, "i":I
    goto :goto_20

    .end local v57    # "sampleIndex":I
    .end local v58    # "offsets":[J
    .end local v59    # "sizes":[I
    .restart local v0    # "offsets":[J
    .restart local v1    # "sizes":[I
    .local v7, "editedMaximumSize":I
    .local v9, "sampleIndex":I
    :cond_32
    move-object/from16 v58, v0

    move-object/from16 v59, v1

    move/from16 v56, v5

    move/from16 v57, v7

    .line 453
    .end local v0    # "offsets":[J
    .end local v1    # "sizes":[I
    .end local v5    # "i":I
    .end local v7    # "editedMaximumSize":I
    .local v57, "editedMaximumSize":I
    .restart local v58    # "offsets":[J
    .restart local v59    # "sizes":[I
    iget-wide v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 454
    const-wide/32 v49, 0xf4240

    move-wide/from16 v51, v0

    invoke-static/range {v47 .. v52}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 455
    .local v0, "editedDurationUs":J
    move-object v6, v2

    move-object v2, v8

    move-wide v7, v0

    .end local v0    # "editedDurationUs":J
    .end local v8    # "editedOffsets":[J
    .local v2, "editedOffsets":[J
    .local v6, "flags":[I
    .local v7, "editedDurationUs":J
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v1, v3

    move-object v3, v10

    move-object/from16 v10, v16

    move-object/from16 v5, v44

    move-object/from16 v16, v6

    move-object v6, v4

    move/from16 v4, v57

    .end local v44    # "editedTimestamps":[J
    .end local v57    # "editedMaximumSize":I
    .local v3, "editedSizes":[I
    .local v4, "editedMaximumSize":I
    .local v5, "editedTimestamps":[J
    .local v6, "editedFlags":[I
    .local v10, "timestamps":[J
    .local v16, "flags":[I
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 331
    .end local v7    # "editedDurationUs":J
    .end local v10    # "timestamps":[J
    .end local v11    # "omitClippedSample":Z
    .end local v12    # "startIndices":[I
    .end local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v16    # "flags":[I
    .end local v21    # "nextSampleIndex":I
    .end local v31    # "maximumSize":I
    .end local v40    # "copyMetadata":Z
    .end local v43    # "endIndices":[I
    .end local v45    # "durationUs":J
    .end local v47    # "pts":J
    .end local v53    # "editedSampleCount":I
    .end local v58    # "offsets":[J
    .end local v59    # "sizes":[I
    .local v0, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v2, "offsets":[J
    .local v3, "sizes":[I
    .local v4, "maximumSize":I
    .local v5, "timestamps":[J
    .local v6, "flags":[I
    .local v9, "durationUs":J
    :cond_33
    move-object v14, v0

    move-object/from16 v58, v2

    move-object/from16 v59, v3

    move/from16 v31, v4

    move-object/from16 v16, v6

    move-wide/from16 v45, v9

    move-object v10, v5

    .line 334
    .end local v0    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v2    # "offsets":[J
    .end local v3    # "sizes":[I
    .end local v4    # "maximumSize":I
    .end local v5    # "timestamps":[J
    .end local v6    # "flags":[I
    .end local v9    # "durationUs":J
    .restart local v10    # "timestamps":[J
    .restart local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v16    # "flags":[I
    .restart local v31    # "maximumSize":I
    .restart local v45    # "durationUs":J
    .restart local v58    # "offsets":[J
    .restart local v59    # "sizes":[I
    :goto_24
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    invoke-static {v10, v6, v7, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 335
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v5, v10

    move-object/from16 v6, v16

    move/from16 v4, v31

    move-wide/from16 v7, v45

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    .end local v10    # "timestamps":[J
    .end local v16    # "flags":[I
    .end local v31    # "maximumSize":I
    .end local v45    # "durationUs":J
    .end local v58    # "offsets":[J
    .end local v59    # "sizes":[I
    .restart local v2    # "offsets":[J
    .restart local v3    # "sizes":[I
    .restart local v4    # "maximumSize":I
    .restart local v5    # "timestamps":[J
    .restart local v6    # "flags":[I
    .local v7, "durationUs":J
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    .end local v7    # "durationUs":J
    .restart local v45    # "durationUs":J
    return-object v0

    .line 131
    .end local v2    # "offsets":[J
    .end local v3    # "sizes":[I
    .end local v4    # "maximumSize":I
    .end local v5    # "timestamps":[J
    .end local v6    # "flags":[I
    .end local v13    # "sampleCount":I
    .end local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v15    # "timestampDeltaInTimeUnits":I
    .end local v17    # "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v18    # "remainingTimestampDeltaChanges":I
    .end local v19    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v20    # "remainingSamplesAtTimestampDelta":I
    .end local v22    # "remainingSamplesAtTimestampOffset":I
    .end local v23    # "remainingTimestampOffsetChanges":I
    .end local v24    # "timestampOffset":I
    .end local v25    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v26    # "remainingSynchronizationSamples":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v28    # "isFixedSampleSizeRawAudio":Z
    .end local v29    # "timestampTimeUnits":J
    .end local v32    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v33    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v34    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v35    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v36    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v37    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v38    # "chunkOffsetsAreLongs":Z
    .end local v39    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v41    # "duration":J
    .end local v45    # "durationUs":J
    .local v0, "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v11, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_34
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Track has no sample table size information"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :goto_25
    throw v1

    :goto_26
    goto :goto_25
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 11
    .param p0, "stsd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 652
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 653
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 654
    .local v10, "numberOfEntries":I
    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v6, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 655
    .local v6, "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_8

    .line 656
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 657
    .local v2, "childStartPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 658
    .local v3, "childAtomSize":I
    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v4, "childAtomSize should be positive"

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 659
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 660
    .local v1, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v1, v4, :cond_6

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v1, v4, :cond_1

    goto/16 :goto_4

    .line 667
    :cond_1
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alaw:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ulaw:I

    if-ne v1, v4, :cond_2

    goto :goto_3

    .line 685
    :cond_2
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq v1, v4, :cond_4

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v1, v4, :cond_4

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v1, v4, :cond_4

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v1, v4, :cond_4

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 690
    :cond_3
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v1, v4, :cond_7

    .line 691
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/x-camera-motion"

    const/4 v7, -0x1

    const/4 v9, 0x0

    invoke-static {v4, v5, v9, v7, v9}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_5

    .line 688
    :cond_4
    :goto_2
    move-object v0, p0

    move v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_5

    .line 683
    :cond_5
    :goto_3
    move-object v0, p0

    move v4, p1

    move-object v5, p3

    move-object v7, p4

    move v9, v8

    move-object v8, v6

    move/from16 v6, p5

    .end local v6    # "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .local v8, "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .local v9, "i":I
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    move-object v6, v8

    move v8, v9

    .end local v9    # "i":I
    .restart local v6    # "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .local v8, "i":I
    goto :goto_5

    .line 665
    :cond_6
    :goto_4
    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v7, v6

    move-object v6, p4

    .end local v6    # "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .local v7, "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    move-object v6, v7

    .line 694
    .end local v7    # "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .restart local v6    # "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    :cond_7
    :goto_5
    add-int v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 655
    .end local v1    # "childAtomType":I
    .end local v2    # "childStartPosition":I
    .end local v3    # "childAtomSize":I
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 696
    .end local v8    # "i":I
    :cond_8
    return-object v6
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 19
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 701
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 704
    const/4 v3, 0x0

    .line 705
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 708
    .local v4, "subsampleOffsetUs":J
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v1, v6, :cond_0

    .line 709
    const-string v6, "application/ttml+xml"

    move-object/from16 v18, v3

    move-wide/from16 v16, v4

    move-object v9, v6

    .local v6, "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 710
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_0
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v1, v6, :cond_1

    .line 711
    const-string v6, "application/x-quicktime-tx3g"

    .line 712
    .restart local v6    # "mimeType":Ljava/lang/String;
    add-int/lit8 v7, p3, -0x8

    add-int/lit8 v7, v7, -0x8

    .line 713
    .local v7, "sampleDescriptionLength":I
    new-array v8, v7, [B

    .line 714
    .local v8, "sampleDescriptionData":[B
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 715
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 716
    .end local v7    # "sampleDescriptionLength":I
    .end local v8    # "sampleDescriptionData":[B
    move-object/from16 v18, v3

    move-wide/from16 v16, v4

    move-object v9, v6

    goto :goto_0

    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_1
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v1, v6, :cond_2

    .line 717
    const-string v6, "application/x-mp4-vtt"

    move-object/from16 v18, v3

    move-wide/from16 v16, v4

    move-object v9, v6

    .restart local v6    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 718
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v1, v6, :cond_3

    .line 719
    const-string v6, "application/ttml+xml"

    .line 720
    .restart local v6    # "mimeType":Ljava/lang/String;
    const-wide/16 v4, 0x0

    move-object/from16 v18, v3

    move-wide/from16 v16, v4

    move-object v9, v6

    goto :goto_0

    .line 721
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v1, v6, :cond_4

    .line 723
    const-string v6, "application/x-mp4-cea-608"

    .line 724
    .restart local v6    # "mimeType":Ljava/lang/String;
    const/4 v7, 0x1

    iput v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move-object/from16 v18, v3

    move-wide/from16 v16, v4

    move-object v9, v6

    .line 730
    .end local v3    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "subsampleOffsetUs":J
    .end local v6    # "mimeType":Ljava/lang/String;
    .local v9, "mimeType":Ljava/lang/String;
    .local v16, "subsampleOffsetUs":J
    .local v18, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_0
    nop

    .line 732
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 731
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v18}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 742
    return-void

    .line 727
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v16    # "subsampleOffsetUs":J
    .end local v18    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v3    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v4    # "subsampleOffsetUs":J
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 15
    .param p0, "tkhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 540
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 541
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 542
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 544
    .local v2, "version":I
    const/16 v3, 0x10

    if-nez v2, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/16 v4, 0x10

    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 545
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 547
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 548
    const/4 v6, 0x1

    .line 549
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 550
    .local v7, "durationPosition":I
    if-nez v2, :cond_1

    const/4 v0, 0x4

    .line 551
    .local v0, "durationByteCount":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_3

    .line 552
    iget-object v9, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v10, v7, v8

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 553
    const/4 v6, 0x0

    .line 554
    goto :goto_2

    .line 551
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 558
    .end local v8    # "i":I
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 559
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 560
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .local v8, "duration":J
    goto :goto_4

    .line 562
    .end local v8    # "duration":J
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    .line 563
    .restart local v8    # "duration":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_6

    .line 566
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 570
    :cond_6
    :goto_4
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 571
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 572
    .local v3, "a00":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 573
    .local v10, "a01":I
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 574
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 575
    .local v5, "a10":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 578
    .local v11, "a11":I
    const/high16 v12, 0x10000

    .line 579
    .local v12, "fixedOne":I
    if-nez v3, :cond_7

    if-ne v10, v12, :cond_7

    neg-int v13, v12

    if-ne v5, v13, :cond_7

    if-nez v11, :cond_7

    .line 580
    const/16 v13, 0x5a

    .local v13, "rotationDegrees":I
    goto :goto_5

    .line 581
    .end local v13    # "rotationDegrees":I
    :cond_7
    if-nez v3, :cond_8

    neg-int v13, v12

    if-ne v10, v13, :cond_8

    if-ne v5, v12, :cond_8

    if-nez v11, :cond_8

    .line 582
    const/16 v13, 0x10e

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 583
    .end local v13    # "rotationDegrees":I
    :cond_8
    neg-int v13, v12

    if-ne v3, v13, :cond_9

    if-nez v10, :cond_9

    if-nez v5, :cond_9

    neg-int v13, v12

    if-ne v11, v13, :cond_9

    .line 584
    const/16 v13, 0xb4

    .restart local v13    # "rotationDegrees":I
    goto :goto_5

    .line 587
    .end local v13    # "rotationDegrees":I
    :cond_9
    const/4 v13, 0x0

    .line 590
    .restart local v13    # "rotationDegrees":I
    :goto_5
    new-instance v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v14, v4, v8, v9, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v14
.end method

.method public static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 28
    .param p0, "trak"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 76
    move-object/from16 v0, p0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    .line 77
    .local v1, "mdia":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v5

    .line 78
    .local v5, "trackType":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_0

    .line 79
    return-object v3

    .line 82
    :cond_0
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v2

    .line 83
    .local v2, "tkhdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 84
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-wide v10, v8

    .end local p2    # "duration":J
    .local v8, "duration":J
    goto :goto_0

    .line 83
    .end local v8    # "duration":J
    .restart local p2    # "duration":J
    :cond_1
    move-wide/from16 v10, p2

    .line 86
    .end local p2    # "duration":J
    .local v10, "duration":J
    :goto_0
    move-object/from16 v4, p1

    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v14

    .line 88
    .local v14, "movieTimescale":J
    cmp-long v8, v10, v6

    if-nez v8, :cond_2

    .line 89
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v18, v10

    move-wide v10, v6

    .local v6, "durationUs":J
    goto :goto_1

    .line 91
    .end local v6    # "durationUs":J
    :cond_2
    const-wide/32 v12, 0xf4240

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    move-wide/from16 v18, v10

    move-wide v10, v6

    .line 93
    .local v10, "durationUs":J
    .local v18, "duration":J
    :goto_1
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 94
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 96
    .local v6, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v7

    .line 97
    .local v7, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v21

    .line 98
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v22

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v9

    check-cast v23, Ljava/lang/String;

    .line 97
    move-object/from16 v24, p4

    move/from16 v25, p6

    move-object/from16 v20, v8

    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v8

    .line 99
    .local v8, "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v9, 0x0

    .line 100
    .local v9, "editListDurations":[J
    const/4 v12, 0x0

    .line 101
    .local v12, "editListMediaTimes":[J
    if-nez p5, :cond_3

    .line 102
    sget v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v13

    .line 103
    .local v13, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, [J

    .line 104
    iget-object v3, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, [J

    move-object/from16 v17, v12

    goto :goto_2

    .line 101
    .end local v13    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    :cond_3
    move-object/from16 v17, v12

    .line 106
    .end local v12    # "editListMediaTimes":[J
    .local v17, "editListMediaTimes":[J
    :goto_2
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v3, :cond_4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v16, v9

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 107
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v4

    iget-object v12, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v16, v7

    move-wide/from16 v26, v12

    move-object v13, v6

    move-wide/from16 v6, v26

    .end local v6    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v7    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v13, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .local v16, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v20, v13

    .end local v13    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .local v20, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v13, v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move-wide/from16 v21, v14

    .end local v14    # "movieTimescale":J
    .local v21, "movieTimescale":J
    iget-object v14, v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v15, v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-wide/from16 v26, v21

    move-object/from16 v22, v8

    move-object/from16 v21, v16

    move-object/from16 v16, v9

    move-wide/from16 v8, v26

    .end local v9    # "editListDurations":[J
    .local v8, "movieTimescale":J
    .local v16, "editListDurations":[J
    .local v21, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v22, "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-wide v14, v8

    .line 106
    .end local v8    # "movieTimescale":J
    .restart local v14    # "movieTimescale":J
    :goto_3
    return-object v3
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7
    .param p0, "udtaAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p1, "isQuickTime"    # Z

    .line 473
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 476
    return-object v0

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 479
    .local v1, "udtaData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 480
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 481
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 482
    .local v3, "atomPosition":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 483
    .local v4, "atomSize":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 484
    .local v5, "atomType":I
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v5, v6, :cond_1

    .line 485
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 486
    add-int v0, v3, v4

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0

    .line 488
    :cond_1
    add-int/lit8 v6, v4, -0x8

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 489
    .end local v3    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v5    # "atomType":I
    goto :goto_0

    .line 490
    :cond_2
    return-object v0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 22
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p7, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 749
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 750
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 751
    .local v11, "width":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 752
    .local v12, "height":I
    const/4 v5, 0x0

    .line 753
    .local v5, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v6, 0x3f800000    # 1.0f

    .line 754
    .local v6, "pixelWidthHeightRatio":F
    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 756
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 757
    .local v7, "childPosition":I
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v9, p1

    if-ne v9, v8, :cond_2

    .line 758
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    .line 760
    .local v8, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v8, :cond_1

    .line 761
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 762
    .end local p1    # "atomType":I
    .local v9, "atomType":I
    if-nez v3, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 763
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v10

    :goto_0
    nop

    .line 764
    .end local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v10, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v13, v3, p8

    goto :goto_1

    .line 760
    .end local v9    # "atomType":I
    .end local v10    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_1
    move-object v10, v3

    .line 766
    .end local p1    # "atomType":I
    .end local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v9    # "atomType":I
    .restart local v10    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v20, v10

    move v3, v9

    goto :goto_2

    .line 757
    .end local v8    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .end local v9    # "atomType":I
    .end local v10    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p1    # "atomType":I
    .restart local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_2
    move-object/from16 v20, v3

    move v3, v9

    .line 773
    .end local p1    # "atomType":I
    .end local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v3, "atomType":I
    .local v20, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_2
    const/4 v8, 0x0

    .line 774
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v9, 0x0

    .line 775
    .local v9, "mimeType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 777
    .local v10, "projectionData":[B
    const/4 v13, -0x1

    move/from16 v16, v6

    move v6, v7

    move-object v14, v8

    move-object v7, v9

    move-object/from16 v17, v10

    move/from16 v18, v13

    .line 778
    .end local v8    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "projectionData":[B
    .local v6, "childPosition":I
    .local v7, "mimeType":Ljava/lang/String;
    .local v14, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v16, "pixelWidthHeightRatio":F
    .local v17, "projectionData":[B
    .local v18, "stereoMode":I
    :goto_3
    sub-int v8, v6, v1

    if-ge v8, v2, :cond_14

    .line 779
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 780
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 781
    .local v8, "childStartPosition":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 782
    .local v9, "childAtomSize":I
    if-nez v9, :cond_3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    sub-int/2addr v10, v1

    if-ne v10, v2, :cond_3

    .line 784
    goto/16 :goto_7

    .line 786
    :cond_3
    const/4 v13, 0x0

    if-lez v9, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const-string v10, "childAtomSize should be positive"

    invoke-static {v15, v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 787
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 788
    .local v10, "childAtomType":I
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v10, v15, :cond_7

    .line 789
    if-nez v7, :cond_5

    const/4 v13, 0x1

    :cond_5
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 790
    const-string/jumbo v7, "video/avc"

    .line 791
    add-int/lit8 v13, v8, 0x8

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 792
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v13

    .line 793
    .local v13, "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    iget-object v14, v13, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 794
    iget v15, v13, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 795
    if-nez v5, :cond_6

    .line 796
    iget v15, v13, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    move/from16 v16, v15

    .line 798
    .end local v13    # "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    :cond_6
    goto/16 :goto_6

    :cond_7
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v10, v15, :cond_9

    .line 799
    if-nez v7, :cond_8

    const/4 v13, 0x1

    :cond_8
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 800
    const-string/jumbo v7, "video/hevc"

    .line 801
    add-int/lit8 v13, v8, 0x8

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 802
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v13

    .line 803
    .local v13, "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    iget-object v14, v13, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 804
    iget v15, v13, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 805
    .end local v13    # "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    goto/16 :goto_6

    :cond_9
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v10, v15, :cond_c

    .line 806
    if-nez v7, :cond_a

    const/4 v13, 0x1

    :cond_a
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 807
    sget v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-ne v3, v13, :cond_b

    const-string/jumbo v13, "video/x-vnd.on2.vp8"

    goto :goto_5

    :cond_b
    const-string/jumbo v13, "video/x-vnd.on2.vp9"

    :goto_5
    move-object v7, v13

    .end local v7    # "mimeType":Ljava/lang/String;
    .local v13, "mimeType":Ljava/lang/String;
    goto/16 :goto_6

    .line 808
    .end local v13    # "mimeType":Ljava/lang/String;
    .restart local v7    # "mimeType":Ljava/lang/String;
    :cond_c
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v10, v15, :cond_e

    .line 809
    if-nez v7, :cond_d

    const/4 v13, 0x1

    :cond_d
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 810
    const-string/jumbo v7, "video/3gpp"

    goto :goto_6

    .line 811
    :cond_e
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v10, v15, :cond_10

    .line 812
    if-nez v7, :cond_f

    const/4 v13, 0x1

    :cond_f
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 813
    nop

    .line 814
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v13

    .line 815
    .local v13, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v15

    check-cast v7, Ljava/lang/String;

    .line 816
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 817
    .end local v14    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v14, v13

    goto :goto_6

    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v14    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_10
    sget v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v10, v13, :cond_11

    .line 818
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v13

    .line 819
    .end local v16    # "pixelWidthHeightRatio":F
    .local v13, "pixelWidthHeightRatio":F
    const/4 v5, 0x1

    move/from16 v16, v13

    goto :goto_6

    .line 820
    .end local v13    # "pixelWidthHeightRatio":F
    .restart local v16    # "pixelWidthHeightRatio":F
    :cond_11
    sget v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v10, v13, :cond_12

    .line 821
    invoke-static {v0, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v13

    move-object/from16 v17, v13

    .end local v17    # "projectionData":[B
    .local v13, "projectionData":[B
    goto :goto_6

    .line 822
    .end local v13    # "projectionData":[B
    .restart local v17    # "projectionData":[B
    :cond_12
    sget v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v10, v13, :cond_13

    .line 823
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 824
    .local v13, "version":I
    const/4 v15, 0x3

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 825
    if-nez v13, :cond_13

    .line 826
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 827
    .local v15, "layout":I
    packed-switch v15, :pswitch_data_0

    goto :goto_6

    .line 838
    :pswitch_0
    const/16 v18, 0x3

    .line 839
    goto :goto_6

    .line 835
    :pswitch_1
    const/16 v18, 0x2

    .line 836
    goto :goto_6

    .line 832
    :pswitch_2
    const/16 v18, 0x1

    .line 833
    goto :goto_6

    .line 829
    :pswitch_3
    const/16 v18, 0x0

    .line 830
    nop

    .line 845
    .end local v13    # "version":I
    .end local v15    # "layout":I
    :cond_13
    :goto_6
    add-int/2addr v6, v9

    .line 846
    .end local v8    # "childStartPosition":I
    .end local v9    # "childAtomSize":I
    .end local v10    # "childAtomType":I
    goto/16 :goto_3

    .line 849
    :cond_14
    :goto_7
    if-nez v7, :cond_15

    .line 850
    return-void

    .line 853
    :cond_15
    move v8, v6

    .end local v6    # "childPosition":I
    .local v8, "childPosition":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move v9, v8

    .end local v8    # "childPosition":I
    .local v9, "childPosition":I
    const/4 v8, 0x0

    move v10, v9

    .end local v9    # "childPosition":I
    .local v10, "childPosition":I
    const/4 v9, -0x1

    move v15, v10

    .end local v10    # "childPosition":I
    .local v15, "childPosition":I
    const/4 v10, -0x1

    move/from16 v21, v15

    move/from16 v15, p5

    .end local v15    # "childPosition":I
    .local v21, "childPosition":I
    invoke-static/range {v6 .. v20}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 856
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

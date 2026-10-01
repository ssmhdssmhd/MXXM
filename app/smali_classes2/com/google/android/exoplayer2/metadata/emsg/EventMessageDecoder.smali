.class public final Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 21
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    .line 39
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 40
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 41
    .local v2, "data":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 42
    .local v3, "size":I
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 43
    .local v4, "emsgData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .line 44
    .local v7, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 45
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 46
    .local v13, "timescale":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 48
    .local v5, "presentationTimeUs":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    .line 49
    move-wide/from16 v16, v13

    .end local v13    # "timescale":J
    .local v9, "durationMs":J
    .local v16, "timescale":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    .line 50
    .local v11, "id":J
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v13

    invoke-static {v2, v13, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 51
    .local v13, "messageData":[B
    new-instance v14, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-object/from16 v18, v15

    move-wide/from16 v19, v5

    move-object v5, v14

    move-wide/from16 v14, v19

    .end local v5    # "presentationTimeUs":J
    .local v14, "presentationTimeUs":J
    new-instance v6, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v0, v18

    invoke-direct/range {v6 .. v15}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[BJ)V

    const/16 v18, 0x0

    aput-object v6, v0, v18

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v5
.end method

.class public final Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# static fields
.field private static final MAX_COORDINATE_COUNT:I = 0x2710

.field private static final MAX_TRIANGLE_INDICES:I = 0x1f400

.field private static final MAX_VERTEX_COUNT:I = 0x7d00

.field private static final TYPE_DFL8:I

.field private static final TYPE_MESH:I

.field private static final TYPE_MSHP:I

.field private static final TYPE_PROJ:I

.field private static final TYPE_RAW:I

.field private static final TYPE_YTMP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string/jumbo v0, "ytmp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_YTMP:I

    .line 40
    const-string v0, "mshp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MSHP:I

    .line 41
    const-string v0, "raw "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_RAW:I

    .line 42
    const-string v0, "dfl8"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_DFL8:I

    .line 43
    const-string v0, "mesh"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MESH:I

    .line 44
    const-string v0, "proj"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_PROJ:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;
    .locals 5
    .param p0, "projectionData"    # [B
    .param p1, "stereoMode"    # I

    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 65
    .local v0, "input":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v1, 0x0

    .line 67
    .local v1, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;>;"
    :try_start_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v2

    .line 70
    goto :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 71
    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 72
    return-object v2

    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 81
    return-object v2

    .line 78
    :pswitch_0
    new-instance v2, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object v2

    .line 76
    :pswitch_1
    new-instance v2, Lcom/google/android/exoplayer2/video/spherical/Projection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeZigZag(I)I
    .locals 2
    .param p0, "n"    # I

    .line 236
    shr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static isProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 88
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 90
    .local v0, "type":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 91
    sget v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_PROJ:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    .locals 29
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 166
    .local v0, "coordinateCount":I
    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 167
    return-object v2

    .line 169
    :cond_0
    new-array v1, v0, [F

    .line 170
    .local v1, "coordinates":[F
    const/4 v3, 0x0

    .local v3, "coordinate":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readFloat()F

    move-result v4

    aput v4, v1, v3

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    .end local v3    # "coordinate":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 175
    .local v3, "vertexCount":I
    const/16 v4, 0x7d00

    if-le v3, v4, :cond_2

    .line 176
    return-object v2

    .line 179
    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 180
    .local v6, "log2":D
    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 182
    .local v8, "coordinateCountSizeBits":I
    new-instance v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v9, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 183
    .local v9, "bitInput":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/16 v12, 0x8

    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 184
    mul-int/lit8 v11, v3, 0x5

    new-array v11, v11, [F

    .line 185
    .local v11, "vertices":[F
    const/4 v13, 0x5

    new-array v14, v13, [I

    .line 186
    .local v14, "coordinateIndices":[I
    const/4 v15, 0x0

    .line 187
    .local v15, "vertexIndex":I
    const/16 v16, 0x0

    move/from16 v27, v16

    move-object/from16 v16, v2

    move/from16 v2, v27

    .local v2, "vertex":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 188
    const/16 v17, 0x0

    move-wide/from16 v27, v4

    move/from16 v4, v17

    move-wide/from16 v17, v27

    .local v4, "i":I
    :goto_2
    if-ge v4, v13, :cond_5

    .line 189
    aget v5, v14, v4

    .line 190
    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v19

    add-int v5, v5, v19

    .line 191
    .local v5, "coordinateIndex":I
    if-ge v5, v0, :cond_4

    if-gez v5, :cond_3

    goto :goto_3

    .line 194
    :cond_3
    add-int/lit8 v19, v15, 0x1

    .end local v15    # "vertexIndex":I
    .local v19, "vertexIndex":I
    aget v20, v1, v5

    aput v20, v11, v15

    .line 195
    aput v5, v14, v4

    .line 188
    .end local v5    # "coordinateIndex":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v19

    goto :goto_2

    .line 192
    .end local v19    # "vertexIndex":I
    .restart local v5    # "coordinateIndex":I
    .restart local v15    # "vertexIndex":I
    :cond_4
    :goto_3
    return-object v16

    .line 187
    .end local v4    # "i":I
    .end local v5    # "coordinateIndex":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, v17

    goto :goto_1

    :cond_6
    move-wide/from16 v17, v4

    .line 200
    .end local v2    # "vertex":I
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    and-int/lit8 v2, v2, -0x8

    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 202
    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 203
    .local v4, "subMeshCount":I
    new-array v5, v4, [Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    .line 204
    .local v5, "subMeshes":[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v4, :cond_b

    .line 205
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 206
    .local v2, "textureId":I
    move/from16 v20, v0

    .end local v0    # "coordinateCount":I
    .local v20, "coordinateCount":I
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 207
    .local v0, "drawMode":I
    move-object/from16 v19, v1

    const/16 v12, 0x20

    .end local v1    # "coordinates":[F
    .local v19, "coordinates":[F
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 208
    .local v1, "triangleIndexCount":I
    const v12, 0x1f400

    if-le v1, v12, :cond_7

    .line 209
    return-object v16

    .line 211
    :cond_7
    move-wide/from16 v21, v6

    .end local v6    # "log2":D
    .local v21, "log2":D
    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double v6, v6, v21

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 212
    .local v6, "vertexCountSizeBits":I
    const/4 v7, 0x0

    .line 213
    .local v7, "index":I
    mul-int/lit8 v12, v1, 0x3

    new-array v12, v12, [F

    .line 214
    .local v12, "triangleVertices":[F
    move/from16 v23, v4

    .end local v4    # "subMeshCount":I
    .local v23, "subMeshCount":I
    mul-int/lit8 v4, v1, 0x2

    new-array v4, v4, [F

    .line 215
    .local v4, "textureCoords":[F
    const/16 v24, 0x0

    move/from16 v27, v24

    move/from16 v24, v7

    move/from16 v7, v27

    .local v7, "counter":I
    .local v24, "index":I
    :goto_5
    if-ge v7, v1, :cond_a

    .line 216
    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decodeZigZag(I)I

    move-result v25

    move/from16 v26, v1

    .end local v1    # "triangleIndexCount":I
    .local v26, "triangleIndexCount":I
    add-int v1, v24, v25

    .line 217
    .end local v24    # "index":I
    .local v1, "index":I
    if-ltz v1, :cond_9

    if-lt v1, v3, :cond_8

    goto :goto_6

    .line 220
    :cond_8
    mul-int/lit8 v24, v7, 0x3

    mul-int/lit8 v25, v1, 0x5

    aget v25, v11, v25

    aput v25, v12, v24

    .line 221
    mul-int/lit8 v24, v7, 0x3

    add-int/lit8 v24, v24, 0x1

    mul-int/lit8 v25, v1, 0x5

    add-int/lit8 v25, v25, 0x1

    aget v25, v11, v25

    aput v25, v12, v24

    .line 222
    mul-int/lit8 v24, v7, 0x3

    add-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v1, 0x5

    add-int/lit8 v25, v25, 0x2

    aget v25, v11, v25

    aput v25, v12, v24

    .line 223
    mul-int/lit8 v24, v7, 0x2

    mul-int/lit8 v25, v1, 0x5

    add-int/lit8 v25, v25, 0x3

    aget v25, v11, v25

    aput v25, v4, v24

    .line 224
    mul-int/lit8 v24, v7, 0x2

    add-int/lit8 v24, v24, 0x1

    mul-int/lit8 v25, v1, 0x5

    add-int/lit8 v25, v25, 0x4

    aget v25, v11, v25

    aput v25, v4, v24

    .line 215
    add-int/lit8 v7, v7, 0x1

    move/from16 v24, v1

    move/from16 v1, v26

    goto :goto_5

    .line 218
    :cond_9
    :goto_6
    return-object v16

    .line 215
    .end local v26    # "triangleIndexCount":I
    .local v1, "triangleIndexCount":I
    .restart local v24    # "index":I
    :cond_a
    move/from16 v26, v1

    .line 226
    .end local v1    # "triangleIndexCount":I
    .end local v7    # "counter":I
    .restart local v26    # "triangleIndexCount":I
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    invoke-direct {v1, v2, v12, v4, v0}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v1, v5, v13

    .line 204
    .end local v0    # "drawMode":I
    .end local v2    # "textureId":I
    .end local v4    # "textureCoords":[F
    .end local v6    # "vertexCountSizeBits":I
    .end local v12    # "triangleVertices":[F
    .end local v24    # "index":I
    .end local v26    # "triangleIndexCount":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v19

    move/from16 v0, v20

    move-wide/from16 v6, v21

    move/from16 v4, v23

    const/16 v2, 0x20

    const/16 v12, 0x8

    goto/16 :goto_4

    .end local v19    # "coordinates":[F
    .end local v20    # "coordinateCount":I
    .end local v21    # "log2":D
    .end local v23    # "subMeshCount":I
    .local v0, "coordinateCount":I
    .local v1, "coordinates":[F
    .local v4, "subMeshCount":I
    .local v6, "log2":D
    :cond_b
    move/from16 v20, v0

    .line 228
    .end local v0    # "coordinateCount":I
    .end local v13    # "i":I
    .restart local v20    # "coordinateCount":I
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;-><init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    return-object v0
.end method

.method private static parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 117
    .local v0, "version":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    return-object v1

    .line 120
    :cond_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 122
    .local v2, "encoding":I
    sget v3, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_DFL8:I

    if-ne v2, v3, :cond_2

    .line 123
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    .line 124
    .local v3, "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 126
    .local v4, "inflater":Ljava/util/zip/Inflater;
    :try_start_0
    invoke-static {p0, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 127
    nop

    .line 130
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 127
    return-object v1

    .line 130
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 131
    nop

    .line 132
    move-object p0, v3

    .end local v3    # "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    goto :goto_0

    .line 130
    .restart local v3    # "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v4    # "inflater":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 131
    throw v1

    .line 133
    .end local v3    # "output":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v4    # "inflater":Ljava/util/zip/Inflater;
    :cond_2
    sget v3, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_RAW:I

    if-eq v2, v3, :cond_3

    .line 134
    return-object v1

    .line 133
    :cond_3
    :goto_0
    nop

    .line 136
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static parseProj(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 95
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 97
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 98
    .local v1, "limit":I
    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v0

    .line 100
    .local v3, "childEnd":I
    if-le v3, v0, :cond_3

    if-le v3, v1, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 105
    .local v2, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_YTMP:I

    if-eq v2, v4, :cond_2

    sget v4, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MSHP:I

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    move v0, v3

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 111
    .end local v2    # "childAtomType":I
    .end local v3    # "childEnd":I
    goto :goto_0

    .line 106
    .restart local v2    # "childAtomType":I
    .restart local v3    # "childEnd":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 107
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 101
    .end local v2    # "childAtomType":I
    :cond_3
    :goto_2
    return-object v2

    .line 112
    .end local v3    # "childEnd":I
    :cond_4
    return-object v2
.end method

.method private static parseRawMshpData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "meshes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;>;"
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 143
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 144
    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/2addr v3, v1

    .line 146
    .local v3, "childEnd":I
    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    if-le v3, v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 150
    .local v5, "childAtomType":I
    sget v6, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->TYPE_MESH:I

    if-ne v5, v6, :cond_2

    .line 151
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->parseMesh(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    move-result-object v6

    .line 152
    .local v6, "mesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    if-nez v6, :cond_1

    .line 153
    return-object v4

    .line 155
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v6    # "mesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    :cond_2
    move v1, v3

    .line 158
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 159
    .end local v3    # "childEnd":I
    .end local v5    # "childAtomType":I
    goto :goto_0

    .line 147
    .restart local v3    # "childEnd":I
    :cond_3
    :goto_1
    return-object v4

    .line 160
    .end local v3    # "childEnd":I
    :cond_4
    return-object v0
.end method

.class Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeshData"
.end annotation


# instance fields
.field private final drawMode:I

.field private final textureBuffer:Ljava/nio/FloatBuffer;

.field private final vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V
    .locals 1
    .param p1, "subMesh"    # Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->getVertexCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    .line 225
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 226
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureCoords:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 227
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 236
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    goto :goto_0

    .line 232
    :pswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    .line 233
    goto :goto_0

    .line 229
    :pswitch_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    .line 230
    nop

    .line 239
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 217
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 217
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    return v0
.end method

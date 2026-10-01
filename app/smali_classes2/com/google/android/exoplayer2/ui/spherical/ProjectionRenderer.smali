.class final Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;,
        Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$EyeType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER_CODE:[Ljava/lang/String;


# instance fields
.field private leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:I

.field private rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 61
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "uniform mat4 uMvpMatrix;"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string/jumbo v4, "uniform mat3 uTexMatrix;"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "attribute vec4 aPosition;"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "attribute vec2 aTexCoords;"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string/jumbo v7, "varying vec2 vTexCoords;"

    aput-object v7, v1, v6

    const/4 v8, 0x5

    const-string/jumbo v9, "void main() {"

    aput-object v9, v1, v8

    const/4 v10, 0x6

    const-string v11, "  gl_Position = uMvpMatrix * aPosition;"

    aput-object v11, v1, v10

    const/4 v11, 0x7

    const-string v12, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    aput-object v12, v1, v11

    const/16 v12, 0x8

    const-string/jumbo v13, "}"

    aput-object v13, v1, v12

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    .line 75
    new-array v1, v11, [Ljava/lang/String;

    const-string v11, "#extension GL_OES_EGL_image_external : require"

    aput-object v11, v1, v2

    const-string v2, "precision mediump float;"

    aput-object v2, v1, v3

    const-string/jumbo v2, "uniform samplerExternalOES uTexture;"

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    aput-object v9, v1, v6

    const-string v2, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    aput-object v2, v1, v8

    aput-object v13, v1, v10

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    .line 90
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 93
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .line 96
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    .line 99
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .line 102
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z
    .locals 5
    .param p0, "projection"    # Lcom/google/android/exoplayer2/video/spherical/Projection;

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 53
    .local v0, "leftMesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 54
    .local v1, "rightMesh":Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 55
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 57
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 54
    :goto_0
    return v3
.end method


# virtual methods
.method draw(I[FI)V
    .locals 20
    .param p1, "textureId"    # I
    .param p2, "mvpMatrix"    # [F
    .param p3, "eyeType"    # I

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 154
    .local v3, "meshData":Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;
    :goto_0
    if-nez v3, :cond_1

    .line 155
    return-void

    .line 159
    :cond_1
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 160
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 162
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 163
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 164
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 167
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 168
    if-ne v1, v2, :cond_2

    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .local v2, "texMatrix":[F
    :goto_1
    goto :goto_3

    .line 169
    .end local v2    # "texMatrix":[F
    :cond_3
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->stereoMode:I

    if-ne v4, v2, :cond_5

    .line 170
    if-ne v1, v2, :cond_4

    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .restart local v2    # "texMatrix":[F
    :goto_2
    goto :goto_3

    .line 172
    .end local v2    # "texMatrix":[F
    :cond_5
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 174
    .restart local v2    # "texMatrix":[F
    :goto_3
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 176
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    move-object/from16 v7, p2

    invoke-static {v4, v5, v6, v7, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 177
    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 178
    const v4, 0x8d65

    move/from16 v5, p1

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 179
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 180
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 183
    iget v8, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    .line 189
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$000(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v13

    .line 183
    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0xc

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 190
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 193
    iget v14, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    .line 199
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$100(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v19

    .line 193
    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 200
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 203
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$200(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$300(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I

    move-result v8

    invoke-static {v4, v6, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 204
    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    .line 206
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 207
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 208
    return-void
.end method

.method init()V
    .locals 2

    .line 136
    sget-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->compileProgram([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string/jumbo v1, "uMvpMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    .line 140
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "aTexCoords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    .line 141
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string/jumbo v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->textureHandle:I

    .line 142
    return-void
.end method

.method public setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V
    .locals 3
    .param p1, "projection"    # Lcom/google/android/exoplayer2/video/spherical/Projection;

    .line 125
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->stereoMode:I

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 130
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 132
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 212
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 215
    :cond_0
    return-void
.end method

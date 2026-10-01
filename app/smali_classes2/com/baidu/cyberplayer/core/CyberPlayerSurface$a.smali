.class Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/baidu/cyberplayer/core/a$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/graphics/SurfaceTexture;

.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

.field private final a:Ljava/lang/String;

.field private a:Ljava/nio/FloatBuffer;

.field private a:Z

.field private final a:[F

.field private a:[I

.field private b:F

.field private b:I

.field private final b:Ljava/lang/String;

.field private b:Z

.field private b:[F

.field private b:[I

.field private c:F

.field private c:I

.field private final c:Ljava/lang/String;

.field private c:Z

.field private c:[F

.field private d:F

.field private d:I

.field private final d:Ljava/lang/String;

.field private e:F

.field private e:I

.field private f:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;Landroid/content/Context;)V
    .locals 2

    .line 373
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/16 p1, 0x14

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[F

    .line 272
    const-string/jumbo p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/lang/String;

    .line 279
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:Ljava/lang/String;

    .line 287
    const-string p1, "attribute vec4 vPosition;\nattribute vec2 vTexcoord;\nvarying vec2 texCoord;\nvarying vec2 texUCoord;\nvarying vec2 texVCoord;\nuniform vec4 texlayout; \nuniform mat4 uMVPMatrix;\nvoid main(void)\n{\ngl_Position = uMVPMatrix * vPosition;\ntexCoord = vTexcoord * texlayout.xy - (vTexcoord - vec2(0.5,0.5)) * texlayout.zw;\ntexUCoord = vec2(0,texlayout.y) + 0.5 * texCoord - 1.5 * (vTexcoord ) * texlayout.zw;\ntexVCoord = vec2(0.5,0) + texUCoord; \n}\n"

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:Ljava/lang/String;

    .line 301
    const-string p1, "precision mediump float;\nuniform sampler2D sampler;\nvarying mediump vec2 texCoord;\nvarying mediump vec2 texUCoord;\nvarying mediump vec2 texVCoord;\nvoid main(void)\n{\nlowp vec3 yuv;\nyuv.x = texture2D(sampler, texCoord).x;\nyuv.z = texture2D(sampler, texUCoord).x;\nyuv.y = texture2D(sampler, texVCoord).x;\nyuv = yuv - vec3(0.0625,0.5,0.5);\nconst mediump mat3 yuv2rgb = mat3(\n1.1643, 0, 1.2802,\n1.1643, -0.214821, -0.380589,\n1.1643,2.127982,0);\ngl_FragColor.xyz = yuv * yuv2rgb;\ngl_FragColor.w = 1.0; \n}\n"

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:Ljava/lang/String;

    .line 319
    const/16 p1, 0x10

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    .line 320
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:[F

    .line 322
    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[I

    .line 324
    const/4 p2, 0x3

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    .line 336
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Z

    .line 338
    iput-boolean p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:Z

    .line 345
    iput-boolean p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:Z

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    .line 364
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->n:I

    .line 367
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->p:I

    .line 374
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    .line 378
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:[F

    invoke-static {v0, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 382
    const/16 v0, 0x280

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->k:I

    .line 383
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->l:I

    .line 385
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->i:I

    .line 386
    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->j:I

    .line 387
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->o:I

    .line 389
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:F

    .line 390
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:F

    .line 391
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->f:F

    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->e:F

    .line 392
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:F

    .line 393
    const p1, 0x3f2aaaab

    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:F

    .line 395
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    aput p2, p1, p2

    .line 397
    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a()I
    .locals 3

    .line 666
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 667
    if-nez v0, :cond_0

    .line 668
    const/4 v0, 0x0

    return v0

    .line 670
    :cond_0
    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:I

    .line 672
    const-string v1, "glGetAttribLocation aPosition"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 673
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 677
    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:I

    .line 679
    const-string v1, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 680
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:I

    if-eq v1, v2, :cond_3

    .line 685
    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:I

    .line 687
    const-string v1, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 688
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:I

    if-eq v1, v2, :cond_2

    .line 693
    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:I

    .line 695
    const-string v1, "glGetUniformLocation uSTMatrix"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 696
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:I

    if-eq v1, v2, :cond_1

    .line 702
    return v0

    .line 697
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(ILjava/lang/String;)I
    .locals 3

    .line 803
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 804
    if-eqz v0, :cond_0

    .line 805
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 806
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 807
    const/4 p2, 0x1

    new-array p2, p2, [I

    .line 808
    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 810
    aget p2, p2, v2

    if-nez p2, :cond_0

    .line 811
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRender"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 814
    const/4 v0, 0x0

    .line 817
    :cond_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 821
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(ILjava/lang/String;)I

    move-result p1

    .line 822
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 823
    return v0

    .line 825
    :cond_0
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(ILjava/lang/String;)I

    move-result p2

    .line 827
    if-nez p2, :cond_1

    .line 828
    return v0

    .line 831
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 832
    if-eqz v1, :cond_2

    .line 833
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 834
    const-string p1, "glAttachShader"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 835
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 836
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 837
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 838
    const/4 p1, 0x1

    new-array p2, p1, [I

    .line 839
    const v2, 0x8b82

    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 841
    aget p2, p2, v0

    if-eq p2, p1, :cond_2

    .line 842
    const-string p1, "Could not link program: "

    const-string p2, "VideoRender"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 845
    goto :goto_0

    .line 848
    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 853
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    .line 857
    return-void

    .line 854
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoRender"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b()I
    .locals 3

    .line 706
    const-string v0, "attribute vec4 vPosition;\nattribute vec2 vTexcoord;\nvarying vec2 texCoord;\nvarying vec2 texUCoord;\nvarying vec2 texVCoord;\nuniform vec4 texlayout; \nuniform mat4 uMVPMatrix;\nvoid main(void)\n{\ngl_Position = uMVPMatrix * vPosition;\ntexCoord = vTexcoord * texlayout.xy - (vTexcoord - vec2(0.5,0.5)) * texlayout.zw;\ntexUCoord = vec2(0,texlayout.y) + 0.5 * texCoord - 1.5 * (vTexcoord ) * texlayout.zw;\ntexVCoord = vec2(0.5,0) + texUCoord; \n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D sampler;\nvarying mediump vec2 texCoord;\nvarying mediump vec2 texUCoord;\nvarying mediump vec2 texVCoord;\nvoid main(void)\n{\nlowp vec3 yuv;\nyuv.x = texture2D(sampler, texCoord).x;\nyuv.z = texture2D(sampler, texUCoord).x;\nyuv.y = texture2D(sampler, texVCoord).x;\nyuv = yuv - vec3(0.0625,0.5,0.5);\nconst mediump mat3 yuv2rgb = mat3(\n1.1643, 0, 1.2802,\n1.1643, -0.214821, -0.380589,\n1.1643,2.127982,0);\ngl_FragColor.xyz = yuv * yuv2rgb;\ngl_FragColor.w = 1.0; \n}\n"

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 707
    if-nez v0, :cond_0

    .line 708
    const/4 v0, 0x0

    return v0

    .line 710
    :cond_0
    const-string/jumbo v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->g:I

    .line 712
    const-string v1, "glGetAttribLocation aPosition"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 713
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 717
    const-string/jumbo v1, "vTexcoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->h:I

    .line 719
    const-string v1, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 720
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:I

    if-eq v1, v2, :cond_3

    .line 724
    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->f:I

    .line 726
    const-string v1, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 727
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:I

    if-eq v1, v2, :cond_2

    .line 732
    const-string/jumbo v1, "texlayout"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->e:I

    .line 734
    const-string v1, "glGetUniformLocation texlayout"

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 735
    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->e:I

    if-eq v1, v2, :cond_1

    .line 739
    return v0

    .line 736
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uniform texlayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(II)V
    .locals 10

    .line 416
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    .line 417
    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 419
    const/16 p1, 0x2801

    const/high16 v0, 0x46180000    # 9728.0f

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 421
    const/16 p1, 0x2800

    const v0, 0x46180400    # 9729.0f

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 424
    const/16 p1, 0x2802

    const v0, 0x812f

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 426
    const/16 p1, 0x2803

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 429
    iget v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    iget v5, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->n:I

    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1909

    const/4 v6, 0x0

    const/16 v7, 0x1909

    const/16 v8, 0x1401

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 433
    return-void
.end method

.method private c()V
    .locals 11

    .line 401
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 402
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 407
    iget v6, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    iget v7, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->n:I

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1909

    const/16 v9, 0x1401

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 411
    const-string/jumbo v0, "update vp texture"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private d()V
    .locals 2

    .line 436
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 437
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 440
    return-void
.end method

.method private e()V
    .locals 9

    .line 443
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 444
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[I

    aget v2, v2, v1

    .line 445
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 446
    const-string v2, "glUseProgram"

    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 448
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 449
    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 451
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 452
    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:I

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 455
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 456
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 457
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 460
    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:I

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 463
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 464
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 465
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 468
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:F

    aput v2, v0, v1

    .line 469
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:F

    neg-float v2, v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 470
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:I

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 472
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:I

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:[F

    invoke-static {v0, v4, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 474
    const/4 v0, 0x4

    invoke-static {v3, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 475
    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method private f()V
    .locals 10

    .line 482
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 483
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[I

    aget v2, v2, v1

    .line 484
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 485
    const-string v3, "glUseProgram"

    invoke-direct {p0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 487
    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 488
    const/16 v5, 0xde1

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 489
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 490
    invoke-direct {p0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 492
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 493
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 494
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 495
    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->g:I

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 498
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 499
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 500
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 503
    iget v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->h:I

    const/16 v8, 0x14

    iget-object v9, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 506
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 507
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 508
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 510
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->e:I

    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:F

    iget v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d:F

    iget v5, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->e:F

    iget v6, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->f:F

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 513
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 514
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:F

    aput v3, v0, v2

    .line 515
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:F

    const/4 v4, 0x5

    aput v3, v0, v4

    .line 516
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->f:I

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 519
    const/4 v0, 0x4

    invoke-static {v4, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 520
    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 521
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 793
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:Z

    .line 794
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    monitor-exit p0

    return-void

    .line 792
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 4

    .line 589
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->j:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->i:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 590
    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->l:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->k:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 592
    nop

    .line 594
    packed-switch p1, :pswitch_data_0

    .line 642
    cmpl-float v3, v2, v0

    if-lez v3, :cond_5

    .line 643
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 640
    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 632
    :pswitch_1
    nop

    .line 633
    const/high16 v2, 0x3f100000    # 0.5625f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 634
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 636
    :cond_0
    div-float/2addr v2, v0

    .line 637
    goto :goto_0

    .line 625
    :pswitch_2
    nop

    .line 626
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 627
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 629
    :cond_1
    div-float/2addr v2, v0

    .line 630
    goto :goto_0

    .line 618
    :pswitch_3
    nop

    .line 619
    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    .line 620
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 622
    :cond_2
    div-float/2addr v2, v0

    .line 623
    goto :goto_0

    .line 609
    :pswitch_4
    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    .line 610
    div-float/2addr v2, v0

    goto :goto_0

    .line 613
    :cond_3
    div-float/2addr v0, v2

    .line 615
    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 601
    :pswitch_5
    cmpl-float v3, v2, v0

    if-lez v3, :cond_4

    .line 602
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 605
    :cond_4
    div-float/2addr v2, v0

    .line 607
    goto :goto_0

    .line 597
    :pswitch_6
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->k:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->i:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 598
    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->l:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->j:I

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 599
    move v2, v1

    move v1, v0

    goto :goto_0

    .line 645
    :cond_5
    div-float/2addr v2, v0

    .line 650
    :goto_0
    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:F

    .line 651
    iput v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:F

    .line 652
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->o:I

    .line 653
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)V
    .locals 2

    .line 561
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->k:I

    .line 562
    iput p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->l:I

    .line 564
    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    shl-int/lit8 p1, p1, 0x5

    .line 565
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 568
    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->n:I

    if-eq v0, p2, :cond_2

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    invoke-static {v1, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 573
    :cond_1
    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    .line 574
    iput p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->n:I

    .line 577
    :cond_2
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float p1, p2, p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->e:F

    .line 578
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->n:I

    int-to-float p1, p1

    div-float p1, p2, p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->f:F

    .line 580
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->k:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    iget p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:F

    .line 582
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->o:I

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(I)V

    .line 583
    monitor-enter p0

    .line 584
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:Z

    .line 585
    monitor-exit p0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 525
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 527
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:[F

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 528
    iput v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->p:I

    .line 531
    :cond_0
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 533
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:Z

    if-eqz p1, :cond_1

    .line 534
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->m:I

    iget v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->n:I

    invoke-direct {p0, p1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b(II)V

    .line 535
    monitor-enter p0

    .line 536
    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:Z

    .line 537
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 540
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c()V

    .line 542
    monitor-enter p0

    .line 543
    :try_start_1
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->c:Z

    .line 544
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    iput v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->p:I

    goto :goto_1

    .line 544
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 549
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->d()V

    .line 551
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->p:I

    if-nez p1, :cond_3

    .line 552
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->e()V

    .line 555
    :cond_3
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->p:I

    if-ne p1, v1, :cond_4

    .line 556
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->f()V

    .line 558
    :cond_4
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 656
    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 658
    iput p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->i:I

    .line 659
    iput p3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->j:I

    .line 661
    iget p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->o:I

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(I)V

    .line 663
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    .line 743
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[I

    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a()I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 744
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[I

    aget p1, p1, v0

    if-nez p1, :cond_0

    .line 745
    return-void

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[I

    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b()I

    move-result p2

    const/4 v1, 0x1

    aput p2, p1, v1

    .line 748
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:[I

    aget p1, p1, v1

    if-nez p1, :cond_1

    .line 749
    return-void

    .line 750
    :cond_1
    const/4 p1, 0x2

    iget-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 752
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    aget p1, p1, v0

    .line 753
    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 754
    const-string v2, "glBindTexture mTextureID"

    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a(Ljava/lang/String;)V

    .line 756
    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {p2, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 758
    const/16 v4, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-static {p2, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 765
    new-instance p2, Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    .line 766
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 769
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    new-instance p2, Landroid/view/Surface;

    iget-object v6, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;Landroid/view/Surface;)Landroid/view/Surface;

    .line 772
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:[I

    aget p1, p1, v1

    .line 773
    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 775
    invoke-static {p2, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 777
    invoke-static {p2, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 780
    const/16 p1, 0x2802

    const v1, 0x812f

    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 782
    const/16 p1, 0x2803

    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 786
    monitor-enter p0

    .line 787
    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Z

    .line 788
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->b:Z

    .line 789
    monitor-exit p0

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Landroid/graphics/SurfaceTexture;

    .line 864
    :cond_0
    return-void
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    monitor-enter p0

    .line 798
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Z

    .line 799
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    monitor-exit p0

    return-void

    .line 797
    .end local p0    # "this":Lcom/baidu/cyberplayer/core/CyberPlayerSurface$a;
    .end local p1    # "surface":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

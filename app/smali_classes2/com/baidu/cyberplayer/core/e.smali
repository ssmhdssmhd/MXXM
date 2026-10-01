.class Lcom/baidu/cyberplayer/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/core/a$m;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static c:Ljava/lang/String;


# instance fields
.field private a:F

.field private a:I

.field private final a:Ljava/lang/String;

.field private a:Ljava/nio/FloatBuffer;

.field private a:Z

.field private final a:[F

.field private b:F

.field private b:I

.field private final b:Ljava/lang/String;

.field private b:Z

.field private c:F

.field private c:I

.field private d:F

.field private d:I

.field private e:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 465
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/lang/Object;

    .line 466
    const-string v0, "GLES20CyberRenderer"

    sput-object v0, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/16 p1, 0x14

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/e;->a:[F

    .line 392
    const-string p1, "attribute vec3 vPosition;\nattribute vec2 vTexcoord;\nvarying vec2 texCoord;\nvarying vec2 texUCoord;\nvarying vec2 texVCoord;\nuniform float texel_unit;\nuniform vec2 vert_scale;\nuniform vec2 texlayout; \nvoid main(void)\n{\ngl_Position = vec4(vPosition, 1.0);\ngl_Position.xy *= vert_scale;\ntexCoord = vTexcoord * texlayout.xy - (vTexcoord - vec2(0.5,0.5)) * texel_unit;\ntexUCoord = vec2(0,texlayout.y) + 0.5 * texCoord - 1.5 * (vTexcoord - vec2(0.5,0.5)) * texel_unit;\ntexVCoord = vec2(0.5,0) + texUCoord; \n}\n"

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/lang/String;

    .line 413
    const-string p1, "precision mediump float;\nuniform sampler2D sampler;\nvarying mediump vec2 texCoord;\nvarying mediump vec2 texUCoord;\nvarying mediump vec2 texVCoord;\nvoid main(void)\n{\nlowp vec3 yuv;\nyuv.x = texture2D(sampler, texCoord).x;\nyuv.z = texture2D(sampler, texUCoord).x;\nyuv.y = texture2D(sampler, texVCoord).x;\nyuv = yuv - vec3(0.0625,0.5,0.5);\nconst mediump mat3 yuv2rgb = mat3(\n1.1643, 0, 1.2802,\n1.1643, -0.214821, -0.380589,\n1.1643,2.127982,0);\ngl_FragColor.xyz = yuv * yuv2rgb;\ngl_FragColor.w = 1.0; \n}\n"

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/e;->b:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/e;->a:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/nio/FloatBuffer;

    .line 26
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/e;->a:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    iput v0, p0, Lcom/baidu/cyberplayer/core/e;->k:I

    iput v0, p0, Lcom/baidu/cyberplayer/core/e;->j:I

    .line 29
    const/16 p1, 0x280

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->l:I

    .line 30
    const/16 p1, 0x1e0

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->m:I

    .line 32
    iput v0, p0, Lcom/baidu/cyberplayer/core/e;->i:I

    iput v0, p0, Lcom/baidu/cyberplayer/core/e;->h:I

    .line 33
    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->n:I

    .line 34
    const p1, 0x3a83126f    # 0.001f

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->a:F

    .line 35
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->b:F

    .line 36
    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->c:F

    .line 37
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/e;->a:Z

    .line 38
    iput v0, p0, Lcom/baidu/cyberplayer/core/e;->e:I

    .line 40
    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->d:F

    .line 41
    const p1, 0x3f2aaaab

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->e:F

    .line 42
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/e;->b:Z

    .line 43
    return-void

    nop

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

.method private a(ILjava/lang/String;)I
    .locals 4

    .line 320
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 323
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 324
    const/4 p2, 0x1

    new-array p2, p2, [I

    .line 325
    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 326
    aget p2, p2, v2

    if-nez p2, :cond_0

    .line 327
    sget-object p2, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object p1, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 330
    const/4 v0, 0x0

    .line 333
    :cond_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 337
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/core/e;->a(ILjava/lang/String;)I

    move-result p1

    .line 338
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 339
    return v0

    .line 342
    :cond_0
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/baidu/cyberplayer/core/e;->a(ILjava/lang/String;)I

    move-result p2

    .line 343
    if-nez p2, :cond_1

    .line 344
    return v0

    .line 347
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 348
    if-eqz v1, :cond_2

    .line 349
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 350
    const-string p1, "glAttachShader"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 351
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 352
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 353
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 354
    const/4 p1, 0x1

    new-array p2, p1, [I

    .line 355
    const v2, 0x8b82

    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 356
    aget p2, p2, v0

    if-eq p2, p1, :cond_2

    .line 357
    sget-object p1, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object p1, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 360
    goto :goto_0

    .line 363
    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private a(II)V
    .locals 0

    .line 150
    if-ltz p2, :cond_1

    const/16 p1, 0x800

    if-le p2, p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 154
    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->a:F

    goto :goto_1

    .line 151
    :cond_1
    :goto_0
    const p1, 0x3a83126f    # 0.001f

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->a:F

    .line 156
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 371
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v1, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": glError "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 376
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 239
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/e;->b:Z

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/core/e;->a:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    goto :goto_0

    .line 248
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 243
    :catch_0
    move-exception v1

    .line 245
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 246
    sget-object v1, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    const-string/jumbo v2, "wait opengl initialize draw over time"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 250
    :cond_0
    :goto_2
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 160
    iget v0, p0, Lcom/baidu/cyberplayer/core/e;->i:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/baidu/cyberplayer/core/e;->h:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 161
    iget v2, p0, Lcom/baidu/cyberplayer/core/e;->m:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, p0, Lcom/baidu/cyberplayer/core/e;->l:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 163
    nop

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 214
    cmpl-float v3, v2, v0

    if-lez v3, :cond_5

    .line 215
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 212
    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 203
    :pswitch_1
    nop

    .line 204
    const/high16 v2, 0x3f100000    # 0.5625f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 205
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 207
    :cond_0
    div-float/2addr v2, v0

    .line 208
    goto :goto_0

    .line 196
    :pswitch_2
    nop

    .line 197
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 198
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 200
    :cond_1
    div-float/2addr v2, v0

    .line 201
    goto :goto_0

    .line 189
    :pswitch_3
    nop

    .line 190
    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    .line 191
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 193
    :cond_2
    div-float/2addr v2, v0

    .line 194
    goto :goto_0

    .line 180
    :pswitch_4
    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    .line 181
    div-float/2addr v2, v0

    goto :goto_0

    .line 184
    :cond_3
    div-float/2addr v0, v2

    .line 186
    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 172
    :pswitch_5
    cmpl-float v3, v2, v0

    if-lez v3, :cond_4

    .line 173
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 176
    :cond_4
    div-float/2addr v2, v0

    .line 178
    goto :goto_0

    .line 168
    :pswitch_6
    iget v0, p0, Lcom/baidu/cyberplayer/core/e;->l:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v2, p0, Lcom/baidu/cyberplayer/core/e;->h:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 169
    iget v2, p0, Lcom/baidu/cyberplayer/core/e;->m:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p0, Lcom/baidu/cyberplayer/core/e;->i:I

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 170
    move v2, v1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_5
    div-float/2addr v2, v0

    .line 222
    :goto_0
    iput v1, p0, Lcom/baidu/cyberplayer/core/e;->b:F

    .line 223
    iput v2, p0, Lcom/baidu/cyberplayer/core/e;->c:F

    .line 224
    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->n:I

    .line 225
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

.method public a(IILjava/nio/ByteBuffer;)V
    .locals 12

    .line 254
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 255
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 257
    aget v1, v1, v2

    iput v1, p0, Lcom/baidu/cyberplayer/core/e;->e:I

    .line 258
    iget v1, p0, Lcom/baidu/cyberplayer/core/e;->e:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 260
    const/16 v1, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 262
    const/16 v1, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 266
    const/16 v1, 0x2802

    const v4, 0x812f

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 268
    const/16 v1, 0x2803

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 271
    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->l:I

    .line 272
    iput p2, p0, Lcom/baidu/cyberplayer/core/e;->m:I

    .line 275
    add-int/lit8 p1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    shl-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->j:I

    .line 276
    add-int/lit8 p1, p2, 0x1

    shr-int/2addr p1, v0

    add-int/2addr p2, p1

    iput p2, p0, Lcom/baidu/cyberplayer/core/e;->k:I

    .line 278
    iget v6, p0, Lcom/baidu/cyberplayer/core/e;->j:I

    iget v7, p0, Lcom/baidu/cyberplayer/core/e;->k:I

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v8, 0x0

    move-object v11, p3

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 280
    const-string p1, "create vp texture"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 282
    sget-object p1, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VidWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/baidu/cyberplayer/core/e;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ",VidHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/baidu/cyberplayer/core/e;->m:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object p1, Lcom/baidu/cyberplayer/core/e;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TexWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/baidu/cyberplayer/core/e;->j:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ",TexHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/baidu/cyberplayer/core/e;->k:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->l:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iget p2, p0, Lcom/baidu/cyberplayer/core/e;->j:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->d:F

    .line 288
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->j:I

    iget p2, p0, Lcom/baidu/cyberplayer/core/e;->k:I

    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/core/e;->a(II)V

    .line 289
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->n:I

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(I)V

    .line 290
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/e;->a:Z

    .line 293
    return-void
.end method

.method public a(IILjava/nio/ByteBuffer;I)V
    .locals 9

    .line 298
    if-nez p3, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    const/16 p1, 0xde1

    iget p2, p0, Lcom/baidu/cyberplayer/core/e;->e:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 303
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    iget v4, p0, Lcom/baidu/cyberplayer/core/e;->j:I

    iget v5, p0, Lcom/baidu/cyberplayer/core/e;->k:I

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 312
    const-string/jumbo p1, "update vp texture"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 314
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/e;->a:Z

    .line 316
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 48
    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 49
    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 51
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/e;->a:Z

    if-nez p1, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 55
    const-string p1, "glUseProgram"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 57
    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 58
    const/16 p1, 0xde1

    iget v0, p0, Lcom/baidu/cyberplayer/core/e;->e:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    iget v1, p0, Lcom/baidu/cyberplayer/core/e;->f:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 63
    const-string p1, "glVertexAttribPointer maPosition"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 66
    const-string p1, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 67
    iget v1, p0, Lcom/baidu/cyberplayer/core/e;->g:I

    iget-object v6, p0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 69
    const-string p1, "glVertexAttribPointer maTextureHandle"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 70
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    const-string p1, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 74
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->a:I

    iget v1, p0, Lcom/baidu/cyberplayer/core/e;->a:F

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 75
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->b:I

    iget v1, p0, Lcom/baidu/cyberplayer/core/e;->b:F

    iget v2, p0, Lcom/baidu/cyberplayer/core/e;->c:F

    invoke-static {p1, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 76
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->c:I

    iget v1, p0, Lcom/baidu/cyberplayer/core/e;->d:F

    iget v2, p0, Lcom/baidu/cyberplayer/core/e;->e:F

    invoke-static {p1, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 78
    const/4 p1, 0x5

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 79
    const-string p1, "glDrawArrays"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 80
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/e;->b:Z

    if-nez p1, :cond_1

    .line 81
    sget-object p1, Lcom/baidu/cyberplayer/core/e;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 82
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/e;->b:Z

    .line 83
    sget-object v0, Lcom/baidu/cyberplayer/core/e;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 84
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 91
    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 93
    iput p2, p0, Lcom/baidu/cyberplayer/core/e;->h:I

    .line 94
    iput p3, p0, Lcom/baidu/cyberplayer/core/e;->i:I

    .line 96
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->n:I

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(I)V

    .line 98
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 104
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/e;->b:Z

    .line 105
    const-string p1, "attribute vec3 vPosition;\nattribute vec2 vTexcoord;\nvarying vec2 texCoord;\nvarying vec2 texUCoord;\nvarying vec2 texVCoord;\nuniform float texel_unit;\nuniform vec2 vert_scale;\nuniform vec2 texlayout; \nvoid main(void)\n{\ngl_Position = vec4(vPosition, 1.0);\ngl_Position.xy *= vert_scale;\ntexCoord = vTexcoord * texlayout.xy - (vTexcoord - vec2(0.5,0.5)) * texel_unit;\ntexUCoord = vec2(0,texlayout.y) + 0.5 * texCoord - 1.5 * (vTexcoord - vec2(0.5,0.5)) * texel_unit;\ntexVCoord = vec2(0.5,0) + texUCoord; \n}\n"

    const-string p2, "precision mediump float;\nuniform sampler2D sampler;\nvarying mediump vec2 texCoord;\nvarying mediump vec2 texUCoord;\nvarying mediump vec2 texVCoord;\nvoid main(void)\n{\nlowp vec3 yuv;\nyuv.x = texture2D(sampler, texCoord).x;\nyuv.z = texture2D(sampler, texUCoord).x;\nyuv.y = texture2D(sampler, texVCoord).x;\nyuv = yuv - vec3(0.0625,0.5,0.5);\nconst mediump mat3 yuv2rgb = mat3(\n1.1643, 0, 1.2802,\n1.1643, -0.214821, -0.380589,\n1.1643,2.127982,0);\ngl_FragColor.xyz = yuv * yuv2rgb;\ngl_FragColor.w = 1.0; \n}\n"

    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    .line 106
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    if-nez p1, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    const-string/jumbo p2, "vPosition"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->f:I

    .line 110
    const-string p1, "glGetAttribLocation aPosition"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 111
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->f:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 114
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    const-string/jumbo v0, "vTexcoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->g:I

    .line 115
    const-string p1, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 116
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->g:I

    if-eq p1, p2, :cond_4

    .line 120
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    const-string/jumbo v0, "vert_scale"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->b:I

    .line 121
    const-string p1, "glGetUniformLocation vert_scale"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 122
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->b:I

    if-eq p1, p2, :cond_3

    .line 126
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    const-string/jumbo v0, "texel_unit"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->a:I

    .line 127
    const-string p1, "glGetUniformLocation texel unit"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 128
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->a:I

    if-eq p1, p2, :cond_2

    .line 132
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->d:I

    const-string/jumbo v0, "texlayout"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/cyberplayer/core/e;->c:I

    .line 133
    const-string p1, "glGetUniformLocation texlayout"

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/e;->a(Ljava/lang/String;)V

    .line 134
    iget p1, p0, Lcom/baidu/cyberplayer/core/e;->c:I

    if-eq p1, p2, :cond_1

    .line 147
    return-void

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uniform texlayout"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uniform texel unit"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uniform vert_scale"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aTextureCoord"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aPosition"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/core/e;->b:Z

    .line 368
    return-void
.end method

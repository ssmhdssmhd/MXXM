.class Lcom/baidu/cyberplayer/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/nio/FloatBuffer;

.field private a:Ljava/nio/ShortBuffer;

.field private b:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 272
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    .line 275
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 276
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 277
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    .line 279
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 280
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 281
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/ShortBuffer;

    .line 302
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 308
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    .line 309
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 310
    iget-object v5, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v2, 0x5

    add-int/2addr v6, v4

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 308
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    .line 315
    const/4 v5, 0x3

    :goto_3
    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    .line 316
    iget-object v6, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v2, 0x5

    add-int/2addr v7, v5

    aget v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 314
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 320
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_4

    .line 321
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/ShortBuffer;

    int-to-short v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 325
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 326
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 327
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


# virtual methods
.method public a(FF)V
    .locals 2

    .line 330
    nop

    .line 331
    nop

    .line 332
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 333
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 334
    iget-object p2, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 335
    iget-object p2, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 337
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 359
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 360
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 361
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 362
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    invoke-interface {p1, v2, v3, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 365
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 366
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/g;->b:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 367
    const/16 v0, 0x1403

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/ShortBuffer;

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-interface {p1, v2, v3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 369
    return-void
.end method

.method public b(FF)V
    .locals 5

    .line 343
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 345
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    neg-float v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 346
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    neg-float v3, p2

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 347
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 348
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 349
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 350
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 351
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 352
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 354
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/g;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    return-void
.end method

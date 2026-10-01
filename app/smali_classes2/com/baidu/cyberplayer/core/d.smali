.class Lcom/baidu/cyberplayer/core/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/core/a$m;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private a:I

.field public a:Lcom/baidu/cyberplayer/core/g;

.field private a:Ljavax/microedition/khronos/opengles/GL10;

.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 257
    const-string v0, "GLES20CyberRenderer"

    sput-object v0, Lcom/baidu/cyberplayer/core/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/d;->a:Z

    .line 25
    new-instance p1, Lcom/baidu/cyberplayer/core/g;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/core/g;-><init>()V

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/d;->a:Lcom/baidu/cyberplayer/core/g;

    .line 27
    const/16 p1, 0x200

    iput p1, p0, Lcom/baidu/cyberplayer/core/d;->c:I

    iput p1, p0, Lcom/baidu/cyberplayer/core/d;->b:I

    .line 28
    const/16 p1, 0x140

    iput p1, p0, Lcom/baidu/cyberplayer/core/d;->f:I

    .line 29
    const/16 p1, 0xf0

    iput p1, p0, Lcom/baidu/cyberplayer/core/d;->g:I

    .line 30
    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/cyberplayer/core/d;->h:I

    .line 31
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 34
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 35
    return p1

    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    :goto_0
    if-lez p1, :cond_1

    .line 38
    shr-int/lit8 p1, p1, 0x1

    .line 39
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return v0
.end method

.method public a(I)V
    .locals 4

    .line 181
    iget v0, p0, Lcom/baidu/cyberplayer/core/d;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/baidu/cyberplayer/core/d;->d:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 182
    iget v2, p0, Lcom/baidu/cyberplayer/core/d;->g:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, p0, Lcom/baidu/cyberplayer/core/d;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 184
    nop

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 229
    cmpl-float v3, v2, v0

    if-lez v3, :cond_5

    .line 230
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 227
    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 220
    :pswitch_1
    nop

    .line 221
    const/high16 v2, 0x3f100000    # 0.5625f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 222
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 224
    :cond_0
    div-float/2addr v2, v0

    .line 225
    goto :goto_0

    .line 213
    :pswitch_2
    nop

    .line 214
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    .line 215
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 217
    :cond_1
    div-float/2addr v2, v0

    .line 218
    goto :goto_0

    .line 206
    :pswitch_3
    nop

    .line 207
    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    .line 208
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 210
    :cond_2
    div-float/2addr v2, v0

    .line 211
    goto :goto_0

    .line 199
    :pswitch_4
    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    .line 200
    div-float/2addr v2, v0

    goto :goto_0

    .line 202
    :cond_3
    div-float/2addr v0, v2

    .line 203
    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 192
    :pswitch_5
    cmpl-float v3, v2, v0

    if-lez v3, :cond_4

    .line 193
    div-float/2addr v0, v2

    move v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 195
    :cond_4
    div-float/2addr v2, v0

    .line 196
    goto :goto_0

    .line 188
    :pswitch_6
    iget v0, p0, Lcom/baidu/cyberplayer/core/d;->f:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v2, p0, Lcom/baidu/cyberplayer/core/d;->d:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 189
    iget v2, p0, Lcom/baidu/cyberplayer/core/d;->g:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p0, Lcom/baidu/cyberplayer/core/d;->e:I

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 190
    move v2, v1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_5
    div-float/2addr v2, v0

    .line 236
    :goto_0
    iput p1, p0, Lcom/baidu/cyberplayer/core/d;->h:I

    .line 237
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/d;->a:Lcom/baidu/cyberplayer/core/g;

    invoke-virtual {p1, v1, v2}, Lcom/baidu/cyberplayer/core/g;->b(FF)V

    .line 239
    return-void

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
    .locals 11

    .line 45
    const/4 p3, 0x1

    new-array v0, p3, [I

    .line 46
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/d;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 47
    const/4 v2, 0x0

    invoke-interface {v1, p3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 49
    aget p3, v0, v2

    iput p3, p0, Lcom/baidu/cyberplayer/core/d;->a:I

    .line 50
    iget p3, p0, Lcom/baidu/cyberplayer/core/d;->a:I

    const/16 v0, 0xde1

    invoke-interface {v1, v0, p3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 52
    const/16 p3, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-interface {v1, v0, p3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 54
    const/16 p3, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-interface {v1, v0, p3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 57
    const/16 p3, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-interface {v1, v0, p3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 59
    const/16 p3, 0x2803

    invoke-interface {v1, v0, p3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 62
    const/16 p3, 0x2200

    const v0, 0x45f00800    # 7681.0f

    const/16 v2, 0x2300

    invoke-interface {v1, v2, p3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/d;->a(I)I

    move-result p3

    iput p3, p0, Lcom/baidu/cyberplayer/core/d;->b:I

    .line 66
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/core/d;->a(I)I

    move-result p3

    iput p3, p0, Lcom/baidu/cyberplayer/core/d;->c:I

    .line 68
    iput p1, p0, Lcom/baidu/cyberplayer/core/d;->f:I

    .line 69
    iput p2, p0, Lcom/baidu/cyberplayer/core/d;->g:I

    .line 71
    iget-object p3, p0, Lcom/baidu/cyberplayer/core/d;->a:Lcom/baidu/cyberplayer/core/g;

    int-to-float v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/baidu/cyberplayer/core/d;->b:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v3, p2

    mul-float v3, v3, v2

    iget v2, p0, Lcom/baidu/cyberplayer/core/d;->c:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-virtual {p3, v0, v3}, Lcom/baidu/cyberplayer/core/g;->a(FF)V

    .line 74
    iget v5, p0, Lcom/baidu/cyberplayer/core/d;->b:I

    iget v6, p0, Lcom/baidu/cyberplayer/core/d;->c:I

    const v9, 0x8363

    const/4 v10, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1907

    const/4 v7, 0x0

    const/16 v8, 0x1907

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 77
    sget-object p3, Lcom/baidu/cyberplayer/core/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "10-VidWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "VidHeight:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object p1, Lcom/baidu/cyberplayer/core/d;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "10-TexWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/baidu/cyberplayer/core/d;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "TexHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/baidu/cyberplayer/core/d;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget p1, p0, Lcom/baidu/cyberplayer/core/d;->h:I

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/d;->a(I)V

    .line 83
    return-void
.end method

.method public a(IILjava/nio/ByteBuffer;I)V
    .locals 10

    .line 87
    if-nez p3, :cond_0

    .line 88
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/d;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 90
    const/16 p4, 0xde1

    iget v1, p0, Lcom/baidu/cyberplayer/core/d;->a:I

    invoke-interface {v0, p4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 92
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    const/16 v7, 0x1907

    const v8, 0x8363

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 99
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/d;->a:Z

    .line 101
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 142
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 144
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 146
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/d;->a:Z

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 154
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 156
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 157
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 159
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 160
    iget v0, p0, Lcom/baidu/cyberplayer/core/d;->a:I

    const/16 v1, 0xde1

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 161
    const/16 v0, 0x2802

    const v2, 0x812f

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 163
    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 166
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 167
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 168
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/d;->a:Lcom/baidu/cyberplayer/core/g;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/core/g;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 169
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 172
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 173
    iput p2, p0, Lcom/baidu/cyberplayer/core/d;->d:I

    .line 174
    iput p3, p0, Lcom/baidu/cyberplayer/core/d;->e:I

    .line 176
    iget p1, p0, Lcom/baidu/cyberplayer/core/d;->h:I

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/core/d;->a(I)V

    .line 178
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/d;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 110
    const/16 p2, 0xbd0

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 116
    const/16 p2, 0xc50

    const/16 v0, 0x1101

    invoke-interface {p1, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 118
    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, p2, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 119
    const/16 p2, 0x1d01

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 120
    const/16 p2, 0xb71

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 121
    const/16 p2, 0xde1

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 127
    const/16 p2, 0x1700

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 128
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 130
    const/16 p2, 0x1701

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 131
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 133
    return-void
.end method

.class Lcom/baidu/cyberplayer/core/a$b;
.super Lcom/baidu/cyberplayer/core/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field final synthetic b:Lcom/baidu/cyberplayer/core/a;

.field private b:[I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/a;IIIIII)V
    .locals 13

    .line 1006
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$b;->b:Lcom/baidu/cyberplayer/core/a;

    .line 1007
    const/16 v10, 0x3026

    const/16 v12, 0x3038

    const/16 v0, 0x3024

    const/16 v2, 0x3023

    const/16 v4, 0x3022

    const/16 v6, 0x3021

    const/16 v8, 0x3025

    move v1, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v11, p7

    filled-new-array/range {v0 .. v12}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/cyberplayer/core/a$a;-><init>(Lcom/baidu/cyberplayer/core/a;[I)V

    .line 1012
    const/4 p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$b;->b:[I

    .line 1013
    iput p2, p0, Lcom/baidu/cyberplayer/core/a$b;->a:I

    .line 1014
    iput v3, p0, Lcom/baidu/cyberplayer/core/a$b;->b:I

    .line 1015
    iput v5, p0, Lcom/baidu/cyberplayer/core/a$b;->c:I

    .line 1016
    iput v7, p0, Lcom/baidu/cyberplayer/core/a$b;->d:I

    .line 1017
    iput v9, p0, Lcom/baidu/cyberplayer/core/a$b;->e:I

    .line 1018
    iput v11, p0, Lcom/baidu/cyberplayer/core/a$b;->f:I

    .line 1019
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$b;->b:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1051
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/a$b;->b:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    .line 1053
    :cond_0
    return p5
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    .line 1024
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v5, p3, v1

    .line 1025
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/baidu/cyberplayer/core/a$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    .line 1027
    const/16 v6, 0x3026

    invoke-direct/range {v2 .. v7}, Lcom/baidu/cyberplayer/core/a$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    .line 1029
    iget v6, v2, Lcom/baidu/cyberplayer/core/a$b;->e:I

    if-lt p1, v6, :cond_0

    iget p1, v2, Lcom/baidu/cyberplayer/core/a$b;->f:I

    if-lt p2, p1, :cond_0

    .line 1030
    const/16 v6, 0x3024

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/cyberplayer/core/a$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    .line 1032
    const/16 v6, 0x3023

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/cyberplayer/core/a$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    .line 1034
    const/16 v6, 0x3022

    invoke-direct/range {v2 .. v7}, Lcom/baidu/cyberplayer/core/a$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 1036
    const/16 v6, 0x3021

    invoke-direct/range {v2 .. v7}, Lcom/baidu/cyberplayer/core/a$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 1038
    iget v7, v2, Lcom/baidu/cyberplayer/core/a$b;->a:I

    if-ne p1, v7, :cond_0

    iget p1, v2, Lcom/baidu/cyberplayer/core/a$b;->b:I

    if-ne p2, p1, :cond_0

    iget p1, v2, Lcom/baidu/cyberplayer/core/a$b;->c:I

    if-ne v8, p1, :cond_0

    iget p1, v2, Lcom/baidu/cyberplayer/core/a$b;->d:I

    if-ne v6, p1, :cond_0

    .line 1040
    return-object v5

    .line 1024
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_0

    .line 1044
    :cond_1
    move-object v2, p0

    const/4 p1, 0x0

    return-object p1
.end method

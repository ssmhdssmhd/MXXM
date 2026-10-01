.class abstract Lcom/baidu/cyberplayer/core/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/core/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/a;

.field protected a:[I


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/a;[I)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$a;->a:Lcom/baidu/cyberplayer/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    invoke-direct {p0, p2}, Lcom/baidu/cyberplayer/core/a$a;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$a;->a:[I

    .line 949
    return-void
.end method

.method private a([I)[I
    .locals 4

    .line 983
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$a;->a:Lcom/baidu/cyberplayer/core/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 984
    return-object p1

    .line 990
    :cond_0
    array-length v0, p1

    .line 991
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    .line 992
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    const/16 p1, 0x3040

    aput p1, v1, v2

    .line 994
    const/4 p1, 0x4

    aput p1, v1, v0

    .line 995
    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x3038

    aput p1, v1, v0

    .line 996
    return-object v1
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .line 952
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 953
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$a;->a:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 957
    const/4 p1, 0x0

    aget v5, v6, p1

    .line 959
    if-gtz v5, :cond_0

    .line 962
    const-string p1, "CPGLSurfaceView"

    const-string p2, "No configs match configSpec"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_0
    new-array v4, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 966
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$a;->a:[I

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 970
    invoke-virtual {p0, v1, v2, v4}, Lcom/baidu/cyberplayer/core/a$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    .line 971
    if-eqz p1, :cond_1

    .line 974
    return-object p1

    .line 972
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 968
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 954
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method

.class Lcom/baidu/cyberplayer/core/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/core/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:I

.field final synthetic a:Lcom/baidu/cyberplayer/core/a;


# direct methods
.method private constructor <init>(Lcom/baidu/cyberplayer/core/a;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$c;->a:Lcom/baidu/cyberplayer/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    const/16 p1, 0x3098

    iput p1, p0, Lcom/baidu/cyberplayer/core/a$c;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/cyberplayer/core/a;Lcom/baidu/cyberplayer/core/a$1;)V
    .locals 0

    .line 852
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/core/a$c;-><init>(Lcom/baidu/cyberplayer/core/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .line 857
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/cyberplayer/core/a$c;->a:I

    aput v2, v0, v1

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$c;->a:Lcom/baidu/cyberplayer/core/a;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 860
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$c;->a:Lcom/baidu/cyberplayer/core/a;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 866
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 871
    const-string p2, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-static {p2, p1}, Lcom/baidu/cyberplayer/core/a$h;->a(Ljava/lang/String;I)V

    .line 874
    :cond_0
    return-void
.end method

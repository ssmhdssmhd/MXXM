.class Lcom/baidu/cyberplayer/core/a$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/cyberplayer/core/a;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljavax/microedition/khronos/egl/EGL10;

.field a:Ljavax/microedition/khronos/egl/EGLConfig;

.field a:Ljavax/microedition/khronos/egl/EGLContext;

.field a:Ljavax/microedition/khronos/egl/EGLDisplay;

.field a:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/cyberplayer/core/a;",
            ">;)V"
        }
    .end annotation

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljava/lang/ref/WeakReference;

    .line 1083
    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " failed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/core/a$h;->a(Ljava/lang/String;I)V

    .line 1294
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 0

    .line 1297
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/core/a$h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1302
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1307
    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/core/a$h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-void
.end method

.method private d()V
    .locals 5

    .line 1261
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1264
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/a;

    .line 1265
    if-eqz v0, :cond_0

    .line 1266
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/a$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1269
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1271
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    .line 1249
    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method a()Ljavax/microedition/khronos/opengles/GL;
    .locals 4

    .line 1218
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1219
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/core/a;

    .line 1220
    if-eqz v1, :cond_3

    .line 1221
    invoke-static {v1}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$k;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1222
    invoke-static {v1}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$k;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/baidu/cyberplayer/core/a$k;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1225
    :cond_0
    invoke-static {v1}, Lcom/baidu/cyberplayer/core/a;->b(Lcom/baidu/cyberplayer/core/a;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    .line 1226
    nop

    .line 1227
    nop

    .line 1228
    invoke-static {v1}, Lcom/baidu/cyberplayer/core/a;->b(Lcom/baidu/cyberplayer/core/a;)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1229
    goto :goto_0

    .line 1228
    :cond_1
    const/4 v3, 0x0

    .line 1231
    :goto_0
    invoke-static {v1}, Lcom/baidu/cyberplayer/core/a;->b(Lcom/baidu/cyberplayer/core/a;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1232
    new-instance v1, Lcom/baidu/cyberplayer/core/a$l;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/core/a$l;-><init>()V

    goto :goto_1

    .line 1231
    :cond_2
    const/4 v1, 0x0

    .line 1234
    :goto_1
    invoke-static {v0, v3, v1}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1237
    :cond_3
    return-object v0
.end method

.method public a()V
    .locals 5

    .line 1098
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 1103
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1105
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    .line 1112
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1113
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/a;

    .line 1117
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1118
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1119
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 1121
    :cond_0
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$e;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/baidu/cyberplayer/core/a$e;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1128
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$f;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4}, Lcom/baidu/cyberplayer/core/a$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1131
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_2

    .line 1132
    :cond_1
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1133
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/core/a$h;->a(Ljava/lang/String;)V

    .line 1140
    :cond_2
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1141
    return-void

    .line 1114
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 6

    .line 1157
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    .line 1160
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    .line 1163
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    .line 1170
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$h;->d()V

    .line 1175
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/a;

    .line 1176
    if-eqz v0, :cond_0

    .line 1177
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$g;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/baidu/cyberplayer/core/a$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 1181
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1184
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1203
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v2, "EGLHelper"

    const-string v3, "eglMakeCurrent"

    invoke-static {v2, v3, v0}, Lcom/baidu/cyberplayer/core/a$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1205
    return v1

    .line 1208
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1185
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1186
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    .line 1187
    const-string v0, "EglHelper"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_4
    return v1

    .line 1164
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 0

    .line 1257
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$h;->d()V

    .line 1258
    return-void
.end method

.method public c()V
    .locals 5

    .line 1278
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/core/a;

    .line 1280
    if-eqz v0, :cond_0

    .line 1281
    invoke-static {v0}, Lcom/baidu/cyberplayer/core/a;->a(Lcom/baidu/cyberplayer/core/a;)Lcom/baidu/cyberplayer/core/a$f;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/baidu/cyberplayer/core/a$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1284
    :cond_0
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1287
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1288
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/a$h;->a:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1290
    :cond_2
    return-void
.end method

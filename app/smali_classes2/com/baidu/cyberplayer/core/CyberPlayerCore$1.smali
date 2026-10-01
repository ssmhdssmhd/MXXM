.class Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

.field a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V
    .locals 0

    .line 2021
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    new-instance p1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1$1;

    invoke-direct {p1, p0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1$1;-><init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;)V

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 2026
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 2040
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2041
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)Z

    .line 2042
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2043
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    move-result-object v0

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-eq v0, v1, :cond_0

    .line 2046
    const/16 v0, 0x12c

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b(III)V

    .line 2048
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2049
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setBackUpSnapShot([B)V

    .line 2051
    :cond_1
    return-void

    .line 2043
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 2056
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    move-result-object v0

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    .line 2057
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 2058
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2059
    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2061
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    shl-int/lit8 v1, v1, 0x5

    .line 2063
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    invoke-static {v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a([B)[B

    .line 2064
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v4

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()I

    move-result v5

    mul-int v1, v1, v5

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v4, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2066
    :cond_0
    goto :goto_0

    .line 2067
    :cond_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2068
    if-eqz v0, :cond_3

    .line 2069
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2071
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    shl-int/lit8 v1, v1, 0x5

    .line 2073
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2074
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a([B)[B

    .line 2075
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    invoke-static {v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a([B)[B

    .line 2077
    :cond_2
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2078
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v4

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()I

    move-result v5

    mul-int v1, v1, v5

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v4, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2083
    :cond_3
    :goto_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2084
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setBackUpSnapShot([B)V

    .line 2086
    :cond_4
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_6

    .line 2088
    :cond_5
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2089
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->destroyByteBuffer()V

    .line 2091
    :cond_6
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2092
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j()V

    .line 2095
    :cond_7
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 2102
    :cond_8
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2103
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2104
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    move-result-object v0

    sget-object v1, Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore$n;

    if-ne v0, v1, :cond_a

    .line 2105
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->recycle()V

    .line 2106
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 2107
    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 2097
    :cond_9
    :goto_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Z

    .line 2111
    :cond_a
    :goto_2
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2112
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->OnSurfaceDestroyed()V

    .line 2114
    :cond_b
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2115
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$1;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)Z

    .line 2116
    return-void
.end method

.class Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->updateVPTex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget-boolean v0, v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->mGL20Support:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/e;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->b(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v4}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->c(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/cyberplayer/core/e;->a(IILjava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a:Lcom/baidu/cyberplayer/core/d;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->b(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-static {v4}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->c(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/cyberplayer/core/d;->a(IILjava/nio/ByteBuffer;I)V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerSurface$2;->a:Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->requestRender()V

    .line 217
    :cond_1
    return-void
.end method

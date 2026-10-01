.class Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/CyberPlayerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

.field private a:Lorg/json/JSONObject;

.field private b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Lcom/baidu/cyberplayer/core/CyberPlayerCore;Landroid/os/Looper;)V
    .locals 0

    .line 1789
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 1790
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1791
    iput-object p2, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    .line 1792
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1800
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1996
    return-void

    .line 1993
    :sswitch_0
    goto/16 :goto_a

    .line 1961
    :sswitch_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()[B

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1962
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    .line 1964
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1965
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 1967
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->destroyVPTex()V

    .line 1970
    :cond_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j()V

    .line 1971
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->checkShouldCreatTexture()V

    .line 1972
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1976
    :cond_2
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h()I

    move-result v3

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()I

    move-result v4

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j()I

    move-result v5

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setVideoDims(IIILjava/nio/ByteBuffer;)V

    goto :goto_1

    .line 1974
    :cond_3
    :goto_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->h()I

    move-result v3

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()I

    move-result v4

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->j()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->createVPTex(III)V

    .line 1978
    :goto_1
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Ljava/nio/ByteBuffer;)V

    .line 1979
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getVPBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1980
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v3, v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Ljava/nio/ByteBuffer;)V

    .line 1982
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->g()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 1986
    :cond_4
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->onFrameUpdate()V

    goto :goto_3

    .line 1984
    :cond_5
    :goto_2
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a()Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->updateVPTex(I)V

    .line 1990
    :cond_6
    :goto_3
    goto/16 :goto_a

    .line 1952
    :sswitch_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1953
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$g;->onInfo(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)Z

    .line 1956
    :cond_7
    return-void

    .line 1907
    :sswitch_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1908
    nop

    .line 1909
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1910
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v3, v4, v5}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$f;->onError(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)Z

    move-result v0

    goto :goto_4

    .line 1909
    :cond_8
    const/4 v0, 0x0

    .line 1912
    :goto_4
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v3

    if-eqz v3, :cond_9

    if-nez v0, :cond_9

    .line 1913
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1915
    :cond_9
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1916
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;->onCompletionWithParam(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1918
    :cond_a
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1919
    :try_start_0
    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1920
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1924
    :try_start_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v3, "04"

    iget-object v4, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1927
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v3, "10"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1930
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v3, "03"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1933
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v3, "01"

    const-string v4, "010201"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1935
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 1936
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 1939
    :cond_b
    const-string v0, "CyberPlayerCore"

    const-string v3, "on error StatisticProcessor context is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1944
    :goto_5
    goto :goto_6

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1943
    const-string v1, "CyberPlayerCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :goto_6
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)V

    .line 1946
    return-void

    .line 1920
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1876
    :sswitch_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1877
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$h;->onNetworkSpeedUpdate(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1879
    :cond_c
    return-void

    .line 1899
    :sswitch_5
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1900
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$i;->onPlayingBufferCache(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1901
    :cond_d
    return-void

    .line 1882
    :sswitch_6
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1883
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$j;->onStatusChanged(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1886
    :cond_e
    return-void

    .line 1894
    :sswitch_7
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1895
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$m;->onVideoSizeChanged(Lcom/baidu/cyberplayer/core/CyberPlayerCore;II)V

    .line 1896
    :cond_f
    return-void

    .line 1889
    :sswitch_8
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1890
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$l;->onSeekComplete(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1891
    :cond_10
    return-void

    .line 1871
    :sswitch_9
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1872
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$c;->onBufferingUpdate(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1873
    :cond_11
    return-void

    .line 1812
    :sswitch_a
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->i()V

    .line 1813
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1814
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$d;->onCompletion(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1815
    const-string v0, "CyberPlayerCore"

    const-string v3, "CyberPlayer on complete->listener oncomplete"

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    :cond_12
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1818
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$e;->onCompletionWithParam(Lcom/baidu/cyberplayer/core/CyberPlayerCore;I)V

    .line 1819
    const-string v0, "CyberPlayerCore"

    const-string v3, "CyberPlayer on complete->listener oncomplete"

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :cond_13
    nop

    .line 1822
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_14

    .line 1823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-int v0, v3

    .line 1824
    const-string v3, "CyberPlayerCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video play duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/cyberplayer/utils/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1827
    :cond_14
    const-string v0, "CyberPlayerCore"

    const-string v3, "No duration infomation!"

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1829
    :goto_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1832
    :try_start_3
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "04"

    iget-object v5, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v5}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1835
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "05"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->d()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1839
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "06"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->e()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1843
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "07"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->f()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1847
    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v4, "08"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1851
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v3, "03"

    invoke-static {}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1854
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    const-string v3, "01"

    const-string v4, "010101"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1856
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 1857
    sget-object v0, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->mNativeContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_8

    .line 1860
    :cond_15
    const-string v0, "CyberPlayerCore"

    const-string v3, "StatisticProcessor context is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1865
    :goto_8
    goto :goto_9

    .line 1862
    :catch_1
    move-exception v0

    .line 1863
    iput-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lorg/json/JSONObject;

    .line 1864
    const-string v1, "CyberPlayerCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :goto_9
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0, v2}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;Z)V

    .line 1868
    return-void

    .line 1804
    :sswitch_b
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1805
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->a:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerCore;->a(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/CyberPlayerCore$b;->b:Lcom/baidu/cyberplayer/core/CyberPlayerCore;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/core/CyberPlayerCore$k;->onPrepared(Lcom/baidu/cyberplayer/core/CyberPlayerCore;)V

    .line 1807
    :cond_16
    return-void

    .line 1959
    :sswitch_c
    nop

    .line 1998
    :cond_17
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

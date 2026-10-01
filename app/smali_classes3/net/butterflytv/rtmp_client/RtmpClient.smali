.class public Lnet/butterflytv/rtmp_client/RtmpClient;
.super Ljava/lang/Object;
.source "RtmpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;
    }
.end annotation


# static fields
.field public static final OPEN_SUCCESS:I = 0x1


# instance fields
.field private rtmpPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "rtmp-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    return-void
.end method

.method private native nativeAlloc()J
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeIsConnected(J)Z
.end method

.method private native nativeOpen(Ljava/lang/String;ZJ)I
.end method

.method private native nativePause(ZJ)Z
.end method

.method private native nativeRead([BIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativeWrite([BJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 146
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeClose(J)V

    .line 147
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 136
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeIsConnected(J)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isPublishMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeAlloc()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    .line 53
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeOpen(Ljava/lang/String;ZJ)I

    move-result v0

    .line 54
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    return-void

    .line 55
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    .line 56
    new-instance v1, Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;

    invoke-direct {v1, v0}, Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;-><init>(I)V

    throw v1
.end method

.method public pause(Z)Z
    .locals 2
    .param p1, "pause"    # Z

    .line 124
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, p1, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativePause(ZJ)Z

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-wide v4, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "data":[B
    .end local p2    # "offset":I
    .end local p3    # "size":I
    .local v1, "data":[B
    .local v2, "offset":I
    .local v3, "size":I
    invoke-direct/range {v0 .. v5}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeRead([BIIJ)I

    move-result p1

    return p1
.end method

.method public write([B)I
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-wide v0, p0, Lnet/butterflytv/rtmp_client/RtmpClient;->rtmpPointer:J

    invoke-direct {p0, p1, v0, v1}, Lnet/butterflytv/rtmp_client/RtmpClient;->nativeWrite([BJ)I

    move-result v0

    return v0
.end method

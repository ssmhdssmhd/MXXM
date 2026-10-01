.class public Lnet/butterflytv/rtmp_client/RTMPMuxer;
.super Ljava/lang/Object;
.source "RTMPMuxer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "rtmp-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native close()I
.end method

.method public native file_close()V
.end method

.method public native file_open(Ljava/lang/String;)V
.end method

.method public native isConnected()I
.end method

.method public native open(Ljava/lang/String;II)I
.end method

.method public native read([BII)I
.end method

.method public native writeAudio([BIII)I
.end method

.method public native writeVideo([BIII)I
.end method

.method public native write_flv_header(ZZ)V
.end method

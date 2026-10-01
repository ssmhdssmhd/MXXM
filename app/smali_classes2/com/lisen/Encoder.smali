.class public Lcom/lisen/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, "encoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getDecode(Ljava/lang/String;)Ljava/lang/String;
.end method

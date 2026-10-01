.class public Lali/a;
.super Ljava/lang/Object;
.source "a.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "mediaplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native b(I)Ljava/lang/Object;
.end method

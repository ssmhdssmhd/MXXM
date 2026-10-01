.class public Lcom/shenma/tvlauncher/utils/IO;
.super Ljava/lang/Object;
.source "IO.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-static {v0}, Lkod/Loader;->registerNativesForClass(I)V

    .line 9
    invoke-static {}, Lcom/shenma/tvlauncher/utils/IO;->native_special_clinit3()V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native b([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native native_special_clinit3()V
.end method

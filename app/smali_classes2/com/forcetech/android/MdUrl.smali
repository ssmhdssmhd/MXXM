.class public Lcom/forcetech/android/MdUrl;
.super Ljava/lang/Object;
.source "MdUrl.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "md"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getMdUrl()Ljava/lang/String;
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {}, Lcom/forcetech/android/MdUrl;->getMdUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

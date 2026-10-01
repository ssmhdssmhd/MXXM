.class public Lcom/shenma/tvlauncher/utils/MainUrl;
.super Ljava/lang/Object;
.source "MainUrl.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, "Url"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeardUrl()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/utils/MainUrl;->urlFromC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5Url()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/utils/MainUrl;->url_from_c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native urlFromC()Ljava/lang/String;
.end method

.method public native url_from_c()Ljava/lang/String;
.end method

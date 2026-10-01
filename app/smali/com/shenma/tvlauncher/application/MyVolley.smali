.class public Lcom/shenma/tvlauncher/application/MyVolley;
.super Ljava/lang/Object;
.source "MyVolley.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyVolley"

.field private static mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 2

    .line 58
    sget-object v0, Lcom/shenma/tvlauncher/application/MyVolley;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/shenma/tvlauncher/application/MyVolley;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 2

    .line 42
    sget-object v0, Lcom/shenma/tvlauncher/application/MyVolley;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/shenma/tvlauncher/application/MyVolley;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestQueue not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/application/MyVolley;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 31
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 34
    .local v0, "memClass":I
    const/high16 v1, 0x100000

    mul-int v1, v1, v0

    div-int/lit8 v1, v1, 0x8

    .line 36
    .local v1, "cacheSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyVolley..cacheSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..memClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyVolley"

    invoke-static {v3, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcom/android/volley/toolbox/ImageLoader;

    sget-object v3, Lcom/shenma/tvlauncher/application/MyVolley;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v4, Lcom/shenma/tvlauncher/network/BitmapLruCache;

    invoke-direct {v4, v1}, Lcom/shenma/tvlauncher/network/BitmapLruCache;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    sput-object v2, Lcom/shenma/tvlauncher/application/MyVolley;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 38
    return-void
.end method

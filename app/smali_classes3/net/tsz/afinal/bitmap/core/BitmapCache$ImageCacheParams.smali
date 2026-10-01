.class public Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public clearDiskCacheOnStart:Z

.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressQuality:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public initDiskCacheOnCreate:Z

.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "diskCacheDir"    # Ljava/io/File;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const/high16 v0, 0x800000

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 337
    const/high16 v0, 0x1400000

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 339
    invoke-static {}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->access$0()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 340
    const/16 v0, 0x46

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->compressQuality:I

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 342
    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 344
    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 348
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 349
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "diskCacheDir"    # Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const/high16 v0, 0x800000

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 337
    const/high16 v0, 0x1400000

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 339
    invoke-static {}, Lnet/tsz/afinal/bitmap/core/BitmapCache;->access$0()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 340
    const/16 v0, 0x46

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->compressQuality:I

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 342
    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 344
    iput-boolean v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 353
    return-void
.end method

.method private static getMemoryClass(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 382
    nop

    .line 383
    nop

    .line 382
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 383
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 382
    return v0
.end method


# virtual methods
.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 378
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 379
    return-void
.end method

.method public setDiskCacheSize(I)V
    .locals 0
    .param p1, "diskCacheSize"    # I

    .line 374
    iput p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 375
    return-void
.end method

.method public setMemCacheSize(I)V
    .locals 0
    .param p1, "memCacheSize"    # I

    .line 370
    iput p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 371
    return-void
.end method

.method public setMemCacheSizePercent(Landroid/content/Context;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "percent"    # F

    .line 361
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 365
    invoke-static {p1}, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float v0, v0, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 366
    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

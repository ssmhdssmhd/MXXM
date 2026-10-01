.class Lnet/tsz/afinal/bitmap/core/BitmapCache$1;
.super Lnet/tsz/afinal/bitmap/core/LruMemoryCache;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/tsz/afinal/bitmap/core/BitmapCache;->init(Lnet/tsz/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/tsz/afinal/bitmap/core/LruMemoryCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tsz/afinal/bitmap/core/BitmapCache;


# direct methods
.method constructor <init>(Lnet/tsz/afinal/bitmap/core/BitmapCache;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .line 1
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/BitmapCache$1;->this$0:Lnet/tsz/afinal/bitmap/core/BitmapCache;

    .line 78
    invoke-direct {p0, p2}, Lnet/tsz/afinal/bitmap/core/LruMemoryCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lnet/tsz/afinal/bitmap/core/BitmapCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 85
    invoke-static {p2}, Lnet/tsz/afinal/bitmap/core/BitmapCommonUtils;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

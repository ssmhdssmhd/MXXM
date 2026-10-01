.class public Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;
.super Ljava/lang/Object;
.source "ThumbnailBitmapInfo.java"


# instance fields
.field private mPositionRange:[J

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPositionRange()[J
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mPositionRange:[J

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setPositionRange([J)V
    .locals 0
    .param p1, "positionRange"    # [J

    .line 40
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mPositionRange:[J

    .line 41
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .line 68
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

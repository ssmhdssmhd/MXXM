.class Lcom/aliyun/thumbnail/ThumbnailHelper$2;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"

# interfaces
.implements Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->requestBitmapAtPosition(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

.field final synthetic val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

.field final synthetic val$positionMs:J


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 242
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iput-object p2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    iput-wide p3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not get thumbnail at position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V

    .line 257
    return-void
.end method

.method public onSuccess([B)V
    .locals 5
    .param p1, "streamBytes"    # [B

    .line 246
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    invoke-static {v0, v1, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$600(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "cropBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get thumbnail at position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-static {v1, v2, v3, v4}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    iget-wide v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-static {v1, v2, v3, v4, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$800(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V

    .line 252
    :goto_0
    return-void
.end method

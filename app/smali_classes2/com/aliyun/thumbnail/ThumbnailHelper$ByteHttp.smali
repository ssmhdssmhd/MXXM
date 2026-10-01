.class Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;
.super Lcom/aliyun/utils/AbsHttpHelper;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteHttp"
.end annotation


# instance fields
.field bytes:[B

.field len:I

.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;


# direct methods
.method private constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-direct {p0}, Lcom/aliyun/utils/AbsHttpHelper;-><init>()V

    .line 522
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    .line 523
    const/4 p1, 0x0

    iput p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->len:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;
    .param p2, "x1"    # Lcom/aliyun/thumbnail/ThumbnailHelper$1;

    .line 520
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    return-void
.end method


# virtual methods
.method protected handleErrorInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 536
    return-void
.end method

.method protected handleOKInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 527
    invoke-static {p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1500(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    .line 528
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    array-length v0, v0

    iput v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->len:I

    .line 531
    :cond_0
    return-void
.end method

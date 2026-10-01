.class Lcom/aliyun/thumbnail/ThumbnailHelper$1;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 196
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 199
    new-instance v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailHelper$1;)V

    .line 200
    .local v0, "absHttpHelper":Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->doGet(Ljava/lang/String;)V

    .line 201
    const-string v1, "([a-zA-Z]+://[^/]+).*[/]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 202
    .local v1, "hostPattern":Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 203
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    if-eqz v4, :cond_1

    .line 204
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "host":Ljava/lang/String;
    iget-object v5, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5, v4, v6}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    .line 206
    .local v5, "thumbnails":[Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 207
    iget-object v6, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v6, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    goto :goto_0

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    move-object v6, v5

    check-cast v6, [Lcom/aliyun/thumbnail/ThumbnailInfo;

    check-cast v6, [Lcom/aliyun/thumbnail/ThumbnailInfo;

    invoke-static {v2, v6}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 214
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "thumbnails":[Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$300(Lcom/aliyun/thumbnail/ThumbnailHelper;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$400(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    goto :goto_1

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$500(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    .line 219
    :goto_1
    return-void
.end method

.class Lcom/aliyun/utils/HttpClientHelper$1;
.super Ljava/lang/Object;
.source "HttpClientHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/HttpClientHelper;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/utils/HttpClientHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/HttpClientHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aliyun/utils/HttpClientHelper;

    .line 189
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpClientHelper stop().... HttpsURLConnection.disconnect "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpClientHelper stop().... HttpURLConnection.disconnect "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    :goto_0
    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

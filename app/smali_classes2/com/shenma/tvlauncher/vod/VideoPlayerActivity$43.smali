.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;
.super Landroid/webkit/WebViewClient;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Sniffing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2617
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 2622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2623
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "url":Ljava/lang/String;
    goto :goto_0

    .line 2625
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2629
    .restart local v0    # "url":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetConditions(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2631
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2632
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2633
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetExclude_content(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2635
    iget-object v6, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputwebHeaders(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    const/4 v6, 0x0

    .line 2639
    .local v6, "hds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v1, :cond_1

    .line 2640
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    move-object v6, v1

    .line 2644
    :cond_1
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2645
    .local v7, "k":Ljava/lang/String;
    const-string/jumbo v8, "user-agent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "referer"

    .line 2646
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "origin"

    .line 2647
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2648
    :cond_2
    iget-object v8, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v8}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetwebHeaders(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2650
    .end local v7    # "k":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 2653
    .end local v6    # "hds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    goto :goto_3

    .line 2651
    :catchall_0
    move-exception v1

    .line 2655
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputjxurl(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;Ljava/lang/String;)V

    .line 2657
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetjxurls(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 2658
    return-object v2

    .line 2660
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fputjxurls(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 2661
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$43;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v6, 0x28

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2663
    goto :goto_4

    .line 2665
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    goto/16 :goto_1

    .line 2668
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    :goto_4
    goto :goto_5

    .line 2666
    :catch_0
    move-exception v1

    .line 2667
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2669
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_5
    return-object v2
.end method

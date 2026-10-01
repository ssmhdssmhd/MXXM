.class Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;
.super Landroid/os/AsyncTask;
.source "DanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/domain/DanmakuParser;->parseJsonString(Ljava/lang/String;Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;

.field final synthetic val$jsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->val$jsonString:Ljava/lang/String;

    iput-object p2, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->val$callback:Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private parseSingleDanmaku(Lcom/google/gson/stream/JsonReader;)Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    .locals 2
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 70
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;-><init>()V

    .line 72
    .local v0, "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->setTime(I)V

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->setType(Ljava/lang/String;)V

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->setColor(Ljava/lang/String;)V

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->setText(Ljava/lang/String;)V

    .line 82
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 84
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;->setFontSize(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 92
    nop

    .line 93
    return-object v0

    .line 91
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalStateException;
    nop

    .end local v0    # "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 92
    throw v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;>;"
    const/4 v1, 0x0

    .line 27
    .local v1, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->val$jsonString:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "jsonString2":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 29
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 30
    :goto_0
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "name":Ljava/lang/String;
    const-string v4, "danmuku"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 34
    :goto_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    invoke-direct {p0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->parseSingleDanmaku(Lcom/google/gson/stream/JsonReader;)Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;

    move-result-object v4

    .line 37
    .local v4, "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    nop

    .end local v4    # "item":Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 43
    .end local v3    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v2    # "jsonString2":Ljava/lang/String;
    nop

    .line 50
    :try_start_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :goto_3
    goto :goto_4

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 56
    :goto_4
    return-object v0

    .line 48
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 50
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    goto :goto_5

    .line 51
    :catch_1
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    throw v2

    .line 45
    :catch_2
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 48
    if-eqz v1, :cond_4

    .line 50
    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 53
    goto :goto_6

    .line 51
    :catch_3
    move-exception v3

    .line 52
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;>;"
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->val$callback:Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;

    invoke-interface {v0, p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;->onParseComplete(Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->val$callback:Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "\u89e3\u6790\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;->onError(Ljava/lang/Exception;)V

    .line 66
    :goto_0
    return-void
.end method

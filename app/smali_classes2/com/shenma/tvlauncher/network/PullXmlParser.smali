.class public Lcom/shenma/tvlauncher/network/PullXmlParser;
.super Ljava/lang/Object;
.source "PullXmlParser.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "PullXmlParser"


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field protected isaiqiyi:Ljava/lang/Boolean;

.field protected mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/network/PullXmlParserCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->isaiqiyi:Ljava/lang/Boolean;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    .line 45
    const-string v0, "PullXmlParser() start"

    const-string v1, "PullXmlParser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    .line 49
    const-string v0, "PullXmlParser() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/shenma/tvlauncher/network/PullXmlParserCallback;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "callback"    # Lcom/shenma/tvlauncher/network/PullXmlParserCallback;
    .param p2, "isaiqiyi"    # Ljava/lang/Boolean;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->isaiqiyi:Ljava/lang/Boolean;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    .line 58
    const-string v0, "PullXmlParser() start"

    const-string v1, "PullXmlParser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    .line 61
    iput-object p2, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->isaiqiyi:Ljava/lang/Boolean;

    .line 63
    const-string v0, "PullXmlParser() end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method protected _load(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .line 198
    const-string v0, "GET"

    const-string v1, "_load() start"

    const-string v2, "PullXmlParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "input":Ljava/io/InputStream;
    if-eqz p1, :cond_2

    .line 204
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, "connectUrl":Ljava/net/URL;
    nop

    .line 206
    const-string v4, "joychang"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isaiqiyi=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->isaiqiyi:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->isaiqiyi:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "input":Ljava/io/InputStream;
    .local v0, "input":Ljava/io/InputStream;
    goto :goto_0

    .line 211
    .end local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    .line 212
    iget-object v4, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 215
    iget-object v4, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    const-string v6, "User-Agent"

    const-string v7, " Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.11 (KHTML, like Gecko)"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v6, 0x12e

    if-ne v6, v4, :cond_1

    .line 217
    iget-object v4, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    const-string v6, "location"

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "uri":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 219
    .local v6, "mUrl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    .line 220
    iget-object v7, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 225
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 226
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v6    # "mUrl":Ljava/net/URL;
    .restart local v0    # "input":Ljava/io/InputStream;
    move-object v1, v0

    goto :goto_0

    .line 227
    .end local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 235
    .end local v0    # "input":Ljava/io/InputStream;
    .end local v3    # "connectUrl":Ljava/net/URL;
    .restart local v1    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 237
    const/4 v1, 0x0

    goto :goto_1

    .line 232
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 234
    const/4 v1, 0x0

    .line 238
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_0
    nop

    .line 241
    :cond_2
    :goto_1
    const-string v0, "_load() end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v1
.end method

.method public parser(Ljava/lang/String;)Z
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .line 73
    const-string v0, "------------------------------"

    const-string v1, "parser() start"

    const-string v2, "PullXmlParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x1

    .line 78
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/network/PullXmlParser;->_load(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 79
    .local v3, "input":Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 80
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 81
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 82
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 84
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 85
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "nodeName":Ljava/lang/String;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    .line 87
    .local v7, "attributeCount":I
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "text":Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_2

    .line 128
    :pswitch_0
    const-string v9, "TEXT"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v9, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    if-eqz v9, :cond_1

    .line 131
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 132
    iget-object v9, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    invoke-interface {v9, v8}, Lcom/shenma/tvlauncher/network/PullXmlParserCallback;->text(Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :pswitch_1
    const-string v9, "END_TAG"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v9, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    if-eqz v9, :cond_1

    .line 141
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 142
    iget-object v9, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    invoke-interface {v9, v6}, Lcom/shenma/tvlauncher/network/PullXmlParserCallback;->endFlag(Ljava/lang/String;)V

    goto :goto_2

    .line 101
    :pswitch_2
    const-string v9, "START_TAG"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v9, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    if-eqz v9, :cond_1

    .line 104
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 105
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v9, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v7, :cond_0

    .line 107
    invoke-interface {v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 108
    invoke-interface {v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 121
    .end local v10    # "i":I
    :cond_0
    iget-object v10, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    invoke-interface {v10, v6, v9}, Lcom/shenma/tvlauncher/network/PullXmlParserCallback;->startFlag(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    .end local v9    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 148
    :pswitch_3
    const-string v9, "END_DOCUMENT"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    goto :goto_2

    .line 93
    :pswitch_4
    const-string v9, "START_DOCUMENT"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v9, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    if-eqz v9, :cond_1

    .line 96
    iget-object v9, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    invoke-interface {v9}, Lcom/shenma/tvlauncher/network/PullXmlParserCallback;->startDocument()V

    .line 155
    :cond_1
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eventType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nodeName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attributeCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v5, v9

    .line 162
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "attributeCount":I
    .end local v8    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    invoke-interface {v0}, Lcom/shenma/tvlauncher/network/PullXmlParserCallback;->endDocument()V

    .line 168
    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 169
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "eventType":I
    goto :goto_3

    .line 170
    :cond_4
    const-string v0, "input stream is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/shenma/tvlauncher/network/PullXmlParser;->mCallback:Lcom/shenma/tvlauncher/network/PullXmlParserCallback;

    sget-object v4, Lcom/shenma/tvlauncher/network/PullXmlParserError;->ERROR_URL:Lcom/shenma/tvlauncher/network/PullXmlParserError;

    invoke-interface {v0, v4}, Lcom/shenma/tvlauncher/network/PullXmlParserCallback;->haveError(Lcom/shenma/tvlauncher/network/PullXmlParserError;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 181
    .end local v3    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    const/4 v1, 0x0

    goto :goto_4

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 180
    const/4 v1, 0x0

    .line 184
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    nop

    .line 186
    :goto_4
    const-string v0, "parser() end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

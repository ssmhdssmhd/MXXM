.class Lnet/sunniwell/android/httpserver/HttpFileHandler;
.super Ljava/lang/Object;
.source "HttpFileHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpFileHandler"


# instance fields
.field private am:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lnet/sunniwell/android/httpserver/HttpFileHandler;->am:Landroid/content/res/AssetManager;

    .line 48
    return-void
.end method

.method private processHttpEntityEnclosingRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 8
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;->isMultipartContent(Lorg/apache/http/HttpEntityEnclosingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lnet/sunniwell/android/httpserver/HttpFileHandler;->processMultipartContentRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 139
    goto :goto_1

    .line 140
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 141
    nop

    .line 140
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/commons/fileupload/util/Streams;->asString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "c":Ljava/lang/String;
    new-instance v1, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;

    invoke-direct {v1, v0}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "decoder":Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;
    invoke-virtual {v1}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->getParameters()Ljava/util/Map;

    move-result-object v2

    .line 145
    .local v2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "decoder":Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;
    .end local v2    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    return-void

    .line 145
    .restart local v0    # "c":Ljava/lang/String;
    .restart local v1    # "decoder":Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;
    .restart local v2    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 146
    .local v4, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMultipartContentRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 12
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v0, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;

    invoke-direct {v0}, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;-><init>()V

    .line 155
    .local v0, "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    :try_start_0
    invoke-virtual {v0, p1}, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;->getItemIterator(Lorg/apache/http/HttpEntityEnclosingRequest;)Lorg/apache/commons/fileupload/FileItemIterator;

    move-result-object v1

    .line 156
    .local v1, "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    nop

    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/fileupload/FileItemIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    .end local v1    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    goto/16 :goto_2

    .line 157
    .restart local v1    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :cond_0
    invoke-interface {v1}, Lorg/apache/commons/fileupload/FileItemIterator;->next()Lorg/apache/commons/fileupload/FileItemStream;

    move-result-object v2

    .line 158
    .local v2, "item":Lorg/apache/commons/fileupload/FileItemStream;
    invoke-interface {v2}, Lorg/apache/commons/fileupload/FileItemStream;->getFieldName()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/commons/fileupload/FileItemStream;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 160
    .local v4, "stream":Ljava/io/InputStream;
    invoke-interface {v2}, Lorg/apache/commons/fileupload/FileItemStream;->isFormField()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/commons/fileupload/FileUploadException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, " detected."

    const-string v7, "HttpFileHandler"

    if-eqz v5, :cond_1

    .line 161
    nop

    .line 162
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Form field "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " with value "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    invoke-static {v4}, Lorg/apache/commons/fileupload/util/Streams;->asString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    goto :goto_0

    .line 165
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "File field "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 166
    const-string v9, " with file name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/commons/fileupload/FileItemStream;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 167
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/commons/fileupload/FileUploadException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    move-object v5, v4

    .line 171
    .local v5, "in":Ljava/io/InputStream;
    const/16 v6, 0x2000

    :try_start_2
    new-array v6, v6, [B

    .line 172
    .local v6, "buf":[B
    const/4 v8, 0x0

    .line 173
    .local v8, "i":I
    const/4 v9, 0x0

    .line 174
    .local v9, "count":I
    nop

    :goto_1
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v8, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 178
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "buf":[B
    .end local v8    # "i":I
    .end local v9    # "count":I
    goto :goto_0

    .line 175
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "buf":[B
    .restart local v8    # "i":I
    .restart local v9    # "count":I
    :cond_2
    nop

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Rev data :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v11, v9, v8

    move v9, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 175
    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/commons/fileupload/FileUploadException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 178
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "buf":[B
    .end local v8    # "i":I
    .end local v9    # "count":I
    :catch_0
    move-exception v5

    .line 179
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/commons/fileupload/FileUploadException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 185
    .end local v1    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    .end local v2    # "item":Lorg/apache/commons/fileupload/FileItemStream;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Lorg/apache/commons/fileupload/FileUploadException;
    invoke-virtual {v1}, Lorg/apache/commons/fileupload/FileUploadException;->printStackTrace()V

    goto :goto_2

    .line 183
    .end local v1    # "e":Lorg/apache/commons/fileupload/FileUploadException;
    :catch_2
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 188
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    return-void
.end method

.method private response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 85
    const-string v0, "text/html; charset=UTF-8"

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "target":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Lnet/sunniwell/android/httpserver/HttpFileHandler;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "url":Ljava/lang/String;
    const-string v3, "HttpFileHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lnet/sunniwell/android/httpserver/HttpFileHandler;->am:Landroid/content/res/AssetManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 92
    .local v3, "in":Ljava/io/InputStream;
    const/16 v4, 0xc8

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 93
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v5, -0x1

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 94
    .local v4, "body":Lorg/apache/http/entity/InputStreamEntity;
    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "body":Lorg/apache/http/entity/InputStreamEntity;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    const/16 v3, 0x193

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 117
    new-instance v3, Lorg/apache/http/entity/EntityTemplate;

    new-instance v4, Lnet/sunniwell/android/httpserver/HttpFileHandler$2;

    invoke-direct {v4, p0}, Lnet/sunniwell/android/httpserver/HttpFileHandler$2;-><init>(Lnet/sunniwell/android/httpserver/HttpFileHandler;)V

    invoke-direct {v3, v4}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 130
    .local v3, "body":Lorg/apache/http/entity/EntityTemplate;
    invoke-virtual {v3, v0}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 131
    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "body":Lorg/apache/http/entity/EntityTemplate;
    :catch_1
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/16 v3, 0x194

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 97
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/entity/EntityTemplate;

    new-instance v5, Lnet/sunniwell/android/httpserver/HttpFileHandler$1;

    invoke-direct {v5, p0, v3}, Lnet/sunniwell/android/httpserver/HttpFileHandler$1;-><init>(Lnet/sunniwell/android/httpserver/HttpFileHandler;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 113
    .local v4, "body":Lorg/apache/http/entity/EntityTemplate;
    invoke-virtual {v4, v0}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 114
    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 133
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "body":Lorg/apache/http/entity/EntityTemplate;
    :goto_0
    return-void
.end method

.method private sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 192
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local p1    # "uri":Ljava/lang/String;
    .local v0, "uri":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "uri":Ljava/lang/String;
    .restart local p1    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    const-string v1, "ISO-8859-1"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local p1    # "uri":Ljava/lang/String;
    .local v1, "uri":Ljava/lang/String;
    move-object v0, v1

    .line 200
    .end local v1    # "uri":Ljava/lang/String;
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 196
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 9
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 53
    nop

    .line 55
    .local v0, "method":Ljava/lang/String;
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Lorg/apache/http/MethodNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v3, " method not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-direct {v1, v2}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    :goto_0
    instance-of v2, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_2

    .line 63
    move-object v2, p1

    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 64
    .local v2, "req":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-direct {p0, v2}, Lnet/sunniwell/android/httpserver/HttpFileHandler;->processHttpEntityEnclosingRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 67
    .end local v2    # "req":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/sunniwell/android/httpserver/HttpFileHandler;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Lnet/sunniwell/android/httpserver/param/Parameters;

    invoke-direct {v2, v1}, Lnet/sunniwell/android/httpserver/param/Parameters;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "parameters":Lnet/sunniwell/android/httpserver/param/Parameters;
    invoke-virtual {v2}, Lnet/sunniwell/android/httpserver/param/Parameters;->nameIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 71
    .local v3, "pNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 72
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 73
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lnet/sunniwell/android/httpserver/param/Parameters;->getParameterAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "parameters":Lnet/sunniwell/android/httpserver/param/Parameters;
    .end local v3    # "pNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-direct {p0, p1, p2}, Lnet/sunniwell/android/httpserver/HttpFileHandler;->response(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)V

    .line 81
    return-void
.end method

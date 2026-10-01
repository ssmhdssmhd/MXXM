.class public Lcom/shenma/tvlauncher/utils/UploadFileHandler;
.super Ljava/lang/Object;
.source "UploadFileHandler.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# static fields
.field public static isInstall:Z


# instance fields
.field public MaxWaitTime:I

.field private fileName:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x3c

    iput v0, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->MaxWaitTime:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->fileName:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p2, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private processHttpEntityEnclosingRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;->isMultipartContent(Lorg/apache/http/HttpEntityEnclosingRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->processMultipartContentRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 67
    :cond_0
    return-void
.end method

.method private processMultipartContentRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 22
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    move-object/from16 v1, p0

    const-string/jumbo v2, "success"

    const-string/jumbo v3, "zhouchuan"

    new-instance v0, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;

    invoke-direct {v0}, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;-><init>()V

    move-object v4, v0

    .line 72
    .local v4, "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    move-object/from16 v6, p1

    :try_start_0
    invoke-virtual {v4, v6}, Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;->getItemIterator(Lorg/apache/http/HttpEntityEnclosingRequest;)Lorg/apache/commons/fileupload/FileItemIterator;

    move-result-object v0

    move-object v7, v0

    .line 73
    .local v7, "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :goto_0
    invoke-interface {v7}, Lorg/apache/commons/fileupload/FileItemIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    invoke-interface {v7}, Lorg/apache/commons/fileupload/FileItemIterator;->next()Lorg/apache/commons/fileupload/FileItemStream;

    move-result-object v0

    move-object v8, v0

    .line 75
    .local v8, "item":Lorg/apache/commons/fileupload/FileItemStream;
    invoke-interface {v8}, Lorg/apache/commons/fileupload/FileItemStream;->getFieldName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 76
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v8}, Lorg/apache/commons/fileupload/FileItemStream;->openStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v10, v0

    .line 77
    .local v10, "stream":Ljava/io/InputStream;
    invoke-interface {v8}, Lorg/apache/commons/fileupload/FileItemStream;->isFormField()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_0

    move-object v15, v4

    goto/16 :goto_7

    .line 82
    :cond_0
    move-object v0, v10

    .line 84
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    iget-object v11, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    .line 85
    .local v11, "f":Ljava/io/File;
    invoke-interface {v8}, Lorg/apache/commons/fileupload/FileItemStream;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->fileName:Ljava/lang/String;

    .line 86
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    iget-object v14, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->fileName:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v13, :cond_1

    .line 88
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 132
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object v15, v4

    goto/16 :goto_5

    .line 90
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v12    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v13, "json":Lorg/json/JSONObject;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 94
    iget-object v14, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->fileName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v14, v15, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 95
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v14, 0x0

    invoke-static {v0, v5, v14}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    move-result-wide v16

    .line 97
    .local v16, "fileSize":J
    const-wide/16 v14, 0x0

    cmp-long v18, v16, v14

    if-lez v18, :cond_5

    .line 98
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->validateZipFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 101
    iget-object v14, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    .line 102
    .local v14, "msg":Landroid/os/Message;
    const/16 v15, 0x3e9

    iput v15, v14, Landroid/os/Message;->what:I

    .line 103
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "in":Ljava/io/InputStream;
    .local v18, "in":Ljava/io/InputStream;
    iget-object v0, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v15, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object v0, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v15, v4

    move-object/from16 v19, v5

    .end local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v15, "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .local v19, "out":Ljava/io/OutputStream;
    const-wide/16 v4, 0x3e8

    :try_start_4
    invoke-virtual {v0, v14, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->isInstall:Z

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "waitTime":I
    :goto_2
    sget-boolean v20, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->isInstall:Z

    if-eqz v20, :cond_2

    move-wide/from16 v20, v4

    iget v4, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->MaxWaitTime:I

    if-ge v0, v4, :cond_2

    .line 109
    const-string v4, "----------\u6b63\u5728\u5b89\u88c5\u7a0d\u7b49-----------"

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v20

    goto :goto_2

    .line 114
    :cond_2
    iget v4, v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->MaxWaitTime:I

    if-ge v0, v4, :cond_3

    .line 115
    return-void

    .line 117
    :cond_3
    const-string v4, "installation"

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 119
    nop

    .end local v0    # "waitTime":I
    .end local v14    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 120
    .end local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/OutputStream;
    .local v0, "in":Ljava/io/InputStream;
    .restart local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_4
    move-object/from16 v18, v0

    move-object v15, v4

    move-object/from16 v19, v5

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    const-string v0, "------processMultipartContentRequest--------2---------------------------------"

    invoke-static {v3, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    .line 124
    .end local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_5
    move-object/from16 v18, v0

    move-object v15, v4

    move-object/from16 v19, v5

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    const-string v0, "------processMultipartContentRequest--------3---------------------------------"

    invoke-static {v3, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    .end local v16    # "fileSize":J
    .end local v19    # "out":Ljava/io/OutputStream;
    :goto_3
    goto :goto_4

    .line 128
    .end local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .end local v18    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    :cond_6
    move-object/from16 v18, v0

    move-object v15, v4

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v18    # "in":Ljava/io/InputStream;
    const-string v0, "------processMultipartContentRequest--------4---------------------------------"

    invoke-static {v3, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 131
    :goto_4
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->writeToHTML(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 140
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v18    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 132
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    :catch_2
    move-exception v0

    move-object v15, v4

    .end local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    :goto_5
    move-object v4, v0

    .line 133
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v5, v0

    .line 135
    .local v5, "json":Lorg/json/JSONObject;
    :try_start_6
    const-string v0, "------processMultipartContentRequest--------5---------------------------------"

    invoke-static {v3, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v14, 0x0

    invoke-virtual {v5, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 138
    goto :goto_6

    .line 137
    :catch_3
    move-exception v0

    .line 139
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->writeToHTML(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 142
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v8    # "item":Lorg/apache/commons/fileupload/FileItemStream;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "stream":Ljava/io/InputStream;
    :goto_7
    move-object v4, v15

    goto/16 :goto_0

    .line 143
    .end local v7    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :catch_4
    move-exception v0

    goto :goto_8

    .line 73
    .end local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .local v4, "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v7    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    :cond_7
    move-object v15, v4

    .line 151
    .end local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .end local v7    # "iter":Lorg/apache/commons/fileupload/FileItemIterator;
    .restart local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    goto :goto_a

    .line 143
    .end local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    :catch_5
    move-exception v0

    move-object v15, v4

    .end local v4    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    .restart local v15    # "upload":Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
    :goto_8
    move-object v4, v0

    .line 144
    .local v4, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v0

    .line 146
    .restart local v5    # "json":Lorg/json/JSONObject;
    :try_start_8
    const-string v0, "------processMultipartContentRequest--------6---------------------------------"

    invoke-static {v3, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v14, 0x0

    invoke-virtual {v5, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 149
    goto :goto_9

    .line 148
    :catch_6
    move-exception v0

    .line 150
    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->writeToHTML(Ljava/lang/String;)V

    .line 152
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "json":Lorg/json/JSONObject;
    :goto_a
    return-void
.end method

.method private validateZipFile(Ljava/lang/String;)Z
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, "isIntegrity":Z
    const/4 v1, 0x0

    .line 175
    .local v1, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 176
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 177
    .local v2, "buf":[B
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 178
    .local v3, "entryies":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 180
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 181
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 182
    .local v5, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 183
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 184
    .local v7, "reads":I
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v7, v8

    if-lez v8, :cond_0

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v7}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 188
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_1

    .line 189
    const/4 v0, 0x0

    .line 191
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "crc32":Ljava/util/zip/CRC32;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "reads":I
    :cond_1
    goto :goto_0

    .line 197
    .end local v2    # "buf":[B
    .end local v3    # "entryies":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_2
    nop

    .line 198
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :cond_3
    :goto_2
    goto :goto_3

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 196
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 192
    :catch_1
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    const/4 v0, 0x0

    .line 197
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 198
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 203
    :goto_3
    return v0

    .line 197
    :goto_4
    if-eqz v1, :cond_4

    .line 198
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 199
    :catch_2
    move-exception v3

    .line 200
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 201
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    nop

    .line 202
    :goto_6
    goto :goto_8

    :goto_7
    throw v2

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "target":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "method":Ljava/lang/String;
    iput-object p2, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->response:Lorg/apache/http/HttpResponse;

    .line 53
    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HEAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Lorg/apache/http/MethodNotSupportedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this method name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_1
    :goto_0
    instance-of v2, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_2

    .line 58
    move-object v2, p1

    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 59
    .local v2, "req":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-direct {p0, v2}, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->processHttpEntityEnclosingRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 61
    .end local v2    # "req":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_2
    return-void
.end method

.method public writeToHTML(Ljava/lang/String;)V
    .locals 2
    .param p1, "returnStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/apache/http/entity/EntityTemplate;

    new-instance v1, Lcom/shenma/tvlauncher/utils/UploadFileHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/shenma/tvlauncher/utils/UploadFileHandler$1;-><init>(Lcom/shenma/tvlauncher/utils/UploadFileHandler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 162
    .local v0, "body":Lorg/apache/http/entity/EntityTemplate;
    const-string/jumbo v1, "text/html; charset=UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/UploadFileHandler;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 164
    return-void
.end method

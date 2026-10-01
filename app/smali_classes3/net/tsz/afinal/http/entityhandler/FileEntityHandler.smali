.class public Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;
.super Ljava/lang/Object;
.source "FileEntityHandler.java"


# instance fields
.field private mStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    .line 27
    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 16
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "callback"    # Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "isResume"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 48
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "targetFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 54
    :cond_1
    iget-boolean v3, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v3, :cond_2

    .line 55
    return-object v2

    .line 59
    :cond_2
    const-wide/16 v3, 0x0

    .line 60
    .local v3, "current":J
    const/4 v5, 0x0

    .line 61
    .local v5, "os":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 63
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .end local v5    # "os":Ljava/io/FileOutputStream;
    .local v6, "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 65
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 68
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :goto_0
    iget-boolean v5, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v5, :cond_4

    .line 69
    return-object v2

    .line 72
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 73
    .local v5, "input":Ljava/io/InputStream;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    add-long v10, v7, v3

    .line 75
    .local v10, "count":J
    cmp-long v7, v3, v10

    if-gez v7, :cond_a

    iget-boolean v7, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v7, :cond_5

    goto :goto_4

    .line 79
    :cond_5
    const/4 v7, 0x0

    .line 80
    .local v7, "readLen":I
    const/16 v8, 0x400

    new-array v15, v8, [B

    .line 81
    .local v15, "buffer":[B
    move-wide v12, v3

    .end local v3    # "current":J
    .local v12, "current":J
    :goto_1
    iget-boolean v3, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-nez v3, :cond_6

    cmp-long v3, v12, v10

    if-gez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v5, v15, v3, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v7, v4

    if-gtz v4, :cond_7

    :cond_6
    goto :goto_2

    .line 82
    :cond_7
    invoke-virtual {v6, v15, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 83
    int-to-long v3, v7

    add-long/2addr v12, v3

    .line 84
    const/4 v14, 0x0

    move-object/from16 v9, p2

    invoke-interface/range {v9 .. v14}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    goto :goto_1

    .line 86
    :goto_2
    const/4 v14, 0x1

    move-object/from16 v9, p2

    invoke-interface/range {v9 .. v14}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    .line 88
    iget-boolean v3, v0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v3, :cond_9

    cmp-long v3, v12, v10

    if-ltz v3, :cond_8

    goto :goto_3

    .line 89
    :cond_8
    new-instance v3, Ljava/io/IOException;

    const-string v4, "user stop download thread"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_9
    :goto_3
    return-object v2

    .line 76
    .end local v7    # "readLen":I
    .end local v12    # "current":J
    .end local v15    # "buffer":[B
    .restart local v3    # "current":J
    :cond_a
    :goto_4
    return-object v2

    .line 46
    .end local v2    # "targetFile":Ljava/io/File;
    .end local v3    # "current":J
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "count":J
    :cond_b
    :goto_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public isStop()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    return v0
.end method

.method public setStop(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .line 40
    iput-boolean p1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    .line 41
    return-void
.end method

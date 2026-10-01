.class public Lnet/tsz/afinal/http/entityhandler/StringEntityHandler;
.super Ljava/lang/Object;
.source "StringEntityHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "callback"    # Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 34
    .local v1, "buffer":[B
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 35
    .local v3, "count":J
    const-wide/16 v5, 0x0

    .line 36
    .local v5, "curCount":J
    const/4 v2, -0x1

    .line 37
    .local v2, "len":I
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 38
    .local v8, "is":Ljava/io/InputStream;
    nop

    :goto_0
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v9, v7

    .end local v2    # "len":I
    .local v9, "len":I
    const/4 v2, -0x1

    if-ne v7, v2, :cond_1

    .line 44
    const/4 v7, 0x1

    move-object v2, p2

    .end local p2    # "callback":Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    .local v2, "callback":Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    invoke-interface/range {v2 .. v7}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 46
    .local p2, "data":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 47
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 48
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v7

    .line 39
    .end local v2    # "callback":Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    .local p2, "callback":Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    :cond_1
    move-object v2, p2

    .end local p2    # "callback":Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    .restart local v2    # "callback":Lnet/tsz/afinal/http/entityhandler/EntityCallBack;
    const/4 p2, 0x0

    invoke-virtual {v0, v1, p2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 40
    int-to-long v10, v9

    add-long/2addr v5, v10

    .line 41
    if-eqz v2, :cond_2

    .line 42
    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    .line 38
    :cond_2
    move-object p2, v2

    move v2, v9

    goto :goto_0
.end method

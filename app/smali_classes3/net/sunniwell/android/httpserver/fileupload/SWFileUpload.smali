.class public Lnet/sunniwell/android/httpserver/fileupload/SWFileUpload;
.super Lorg/apache/commons/fileupload/SWFileUploadBase;
.source "SWFileUpload.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/fileupload/SWFileUploadBase;-><init>()V

    .line 31
    return-void
.end method

.method public static final isMultipartContent(Lorg/apache/http/HttpEntityEnclosingRequest;)Z
    .locals 4
    .param p0, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 15
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16
    return v1

    .line 18
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    const/4 v1, 0x1

    return v1

    .line 25
    :cond_2
    return v1
.end method


# virtual methods
.method public getItemIterator(Lorg/apache/http/HttpEntityEnclosingRequest;)Lorg/apache/commons/fileupload/FileItemIterator;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 39
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    new-instance v1, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;

    .line 40
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v4, v3

    .line 41
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v4, v3}, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;)V

    .line 39
    invoke-super {p0, v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getItemIterator(Lorg/apache/commons/fileupload/RequestContext;)Lorg/apache/commons/fileupload/FileItemIterator;

    move-result-object v1

    return-object v1
.end method

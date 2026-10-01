.class public Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;
.super Ljava/lang/Object;
.source "SWRequestContext.java"

# interfaces
.implements Lorg/apache/commons/fileupload/RequestContext;


# instance fields
.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # I
    .param p4, "inputStream"    # Ljava/io/InputStream;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->contentLength:I

    .line 20
    iput-object p1, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->encoding:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->contentType:Ljava/lang/String;

    .line 22
    iput p3, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->contentLength:I

    .line 23
    iput-object p4, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->inputStream:Ljava/io/InputStream;

    .line 24
    return-void
.end method


# virtual methods
.method public closeInputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-void
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 38
    iget v0, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->contentLength:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentLength="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->getContentLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lnet/sunniwell/android/httpserver/fileupload/SWRequestContext;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;
.super Ljava/lang/Object;
.source "SWFileUploadBase.java"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItemStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemStreamImpl"
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final fieldName:Ljava/lang/String;

.field private final formField:Z

.field private headers:Lorg/apache/commons/fileupload/FileItemHeaders;

.field private final name:Ljava/lang/String;

.field private opened:Z

.field private final stream:Ljava/io/InputStream;

.field final synthetic this$1:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 17
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pFieldName"    # Ljava/lang/String;
    .param p4, "pContentType"    # Ljava/lang/String;
    .param p5, "pFormField"    # Z
    .param p6, "pContentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->this$1:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;

    .line 499
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 502
    move-object/from16 v6, p2

    iput-object v6, v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->name:Ljava/lang/String;

    .line 503
    move-object/from16 v7, p3

    iput-object v7, v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    .line 504
    move-object/from16 v8, p4

    iput-object v8, v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->contentType:Ljava/lang/String;

    .line 505
    move/from16 v9, p5

    iput-boolean v9, v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->formField:Z

    .line 506
    invoke-static {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->access$0(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/MultipartStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream;->newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    move-result-object v2

    .line 507
    .local v2, "itemStream":Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
    move-object v5, v2

    .line 508
    .local v2, "istream":Ljava/io/InputStream;
    .local v5, "itemStream":Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
    invoke-static {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/SWFileUploadBase;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$0(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v3

    const-wide/16 v10, -0x1

    cmp-long v12, v3, v10

    if-eqz v12, :cond_2

    .line 509
    cmp-long v3, p6, v10

    if-eqz v3, :cond_1

    invoke-static {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/SWFileUploadBase;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$0(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v3

    cmp-long v10, p6, v3

    if-gtz v10, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    new-instance v11, Lorg/apache/commons/fileupload/SWFileUploadBase$FileSizeLimitExceededException;

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 512
    const-string v4, " exceeds its maximum permitted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 513
    const-string v4, " size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/SWFileUploadBase;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$0(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 514
    const-string v4, " characters."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 511
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 514
    nop

    .line 515
    invoke-static {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/SWFileUploadBase;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$0(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v15

    .line 510
    move-wide/from16 v13, p6

    invoke-direct/range {v11 .. v16}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileSizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    .line 516
    .local v11, "e":Lorg/apache/commons/fileupload/FileUploadException;
    new-instance v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;

    invoke-direct {v0, v11}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;-><init>(Lorg/apache/commons/fileupload/FileUploadException;)V

    throw v0

    .line 518
    .end local v11    # "e":Lorg/apache/commons/fileupload/FileUploadException;
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/SWFileUploadBase;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$0(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;-><init>(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;Ljava/io/InputStream;JLorg/apache/commons/fileupload/MultipartStream$ItemInputStream;)V

    move-object v2, v0

    .line 531
    :cond_2
    iput-object v2, v1, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    .line 532
    return-void
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;)Ljava/lang/String;
    .locals 0

    .line 461
    iget-object p0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 597
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lorg/apache/commons/fileupload/FileItemHeaders;
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->headers:Lorg/apache/commons/fileupload/FileItemHeaders;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isFormField()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->formField:Z

    return v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->opened:Z

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    check-cast v0, Lorg/apache/commons/fileupload/util/Closeable;

    invoke-interface {v0}, Lorg/apache/commons/fileupload/util/Closeable;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->stream:Ljava/io/InputStream;

    return-object v0

    .line 584
    :cond_0
    new-instance v0, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v0}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v0

    .line 580
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 581
    nop

    .line 580
    const-string v1, "The stream was already opened."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V
    .locals 0
    .param p1, "pHeaders"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .line 615
    iput-object p1, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->headers:Lorg/apache/commons/fileupload/FileItemHeaders;

    .line 616
    return-void
.end method

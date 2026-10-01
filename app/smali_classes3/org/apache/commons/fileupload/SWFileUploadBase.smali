.class public Lorg/apache/commons/fileupload/SWFileUploadBase;
.super Ljava/lang/Object;
.source "SWFileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;,
        Lorg/apache/commons/fileupload/SWFileUploadBase$FileSizeLimitExceededException;,
        Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;,
        Lorg/apache/commons/fileupload/SWFileUploadBase$IOFileUploadException;,
        Lorg/apache/commons/fileupload/SWFileUploadBase$InvalidContentTypeException;,
        Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;,
        Lorg/apache/commons/fileupload/SWFileUploadBase$SizeLimitExceededException;
    }
.end annotation


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-disposition"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-type"

.field public static final FORM_DATA:Ljava/lang/String; = "form-data"

.field public static final MULTIPART:Ljava/lang/String; = "multipart/"

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field public static final MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"


# instance fields
.field private fileSizeMax:J

.field private headerEncoding:Ljava/lang/String;

.field private listener:Lorg/apache/commons/fileupload/ProgressListener;

.field private sizeMax:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->sizeMax:J

    .line 118
    iput-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->fileSizeMax:J

    .line 30
    return-void
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/SWFileUploadBase;)J
    .locals 2

    .line 118
    iget-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->fileSizeMax:J

    return-wide v0
.end method

.method static synthetic access$1(Lorg/apache/commons/fileupload/SWFileUploadBase;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->sizeMax:J

    return-wide v0
.end method

.method static synthetic access$2(Lorg/apache/commons/fileupload/SWFileUploadBase;)Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->headerEncoding:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3(Lorg/apache/commons/fileupload/SWFileUploadBase;)Lorg/apache/commons/fileupload/ProgressListener;
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    return-object p0
.end method

.method private getFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pContentDisposition"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "fieldName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "form-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    new-instance v1, Lorg/apache/commons/fileupload/ParameterParser;

    invoke-direct {v1}, Lorg/apache/commons/fileupload/ParameterParser;-><init>()V

    .line 335
    .local v1, "parser":Lorg/apache/commons/fileupload/ParameterParser;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/fileupload/ParameterParser;->setLowerCaseNames(Z)V

    .line 337
    const/16 v2, 0x3b

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v2

    .line 338
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 343
    .end local v1    # "parser":Lorg/apache/commons/fileupload/ParameterParser;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pContentDisposition"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "fileName":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "cdl":Ljava/lang/String;
    const-string v2, "form-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "attachment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    :cond_0
    new-instance v2, Lorg/apache/commons/fileupload/ParameterParser;

    invoke-direct {v2}, Lorg/apache/commons/fileupload/ParameterParser;-><init>()V

    .line 290
    .local v2, "parser":Lorg/apache/commons/fileupload/ParameterParser;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/fileupload/ParameterParser;->setLowerCaseNames(Z)V

    .line 292
    nop

    .line 293
    nop

    .line 292
    const/16 v3, 0x3b

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v3

    .line 294
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "filename"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 296
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 298
    goto :goto_0

    .line 302
    :cond_1
    const-string v0, ""

    .line 307
    .end local v1    # "cdl":Ljava/lang/String;
    .end local v2    # "parser":Lorg/apache/commons/fileupload/ParameterParser;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static final isMultipartContent(Lorg/apache/commons/fileupload/RequestContext;)Z
    .locals 4
    .param p0, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;

    .line 54
    invoke-interface {p0}, Lorg/apache/commons/fileupload/RequestContext;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const/4 v1, 0x1

    return v1

    .line 61
    :cond_1
    return v1
.end method

.method private parseEndOfLine(Ljava/lang/String;I)I
    .locals 4
    .param p1, "headerPart"    # Ljava/lang/String;
    .param p2, "end"    # I

    .line 412
    move v0, p2

    .line 414
    .local v0, "index":I
    :goto_0
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 415
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 419
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 420
    return v1

    .line 422
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 413
    .end local v1    # "offset":I
    goto :goto_0

    .line 416
    .restart local v1    # "offset":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 417
    nop

    .line 416
    const-string v3, "Expected headers to be terminated by an empty line."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private parseHeaderLine(Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;Ljava/lang/String;)V
    .locals 3
    .param p1, "headers"    # Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;
    .param p2, "header"    # Ljava/lang/String;

    .line 435
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 436
    .local v1, "colonOffset":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 438
    return-void

    .line 440
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "headerName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method


# virtual methods
.method protected getBoundary(Ljava/lang/String;)[B
    .locals 5
    .param p1, "contentType"    # Ljava/lang/String;

    .line 246
    new-instance v0, Lorg/apache/commons/fileupload/ParameterParser;

    invoke-direct {v0}, Lorg/apache/commons/fileupload/ParameterParser;-><init>()V

    .line 247
    .local v0, "parser":Lorg/apache/commons/fileupload/ParameterParser;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/ParameterParser;->setLowerCaseNames(Z)V

    .line 249
    nop

    .line 250
    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 249
    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;[C)Ljava/util/Map;

    move-result-object v1

    .line 251
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "boundary"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, "boundaryStr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 254
    const/4 v3, 0x0

    return-object v3

    .line 258
    :cond_0
    :try_start_0
    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v3, "boundary":[B
    goto :goto_0

    .end local v3    # "boundary":[B
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v3, v4

    .line 262
    .local v3, "boundary":[B
    :goto_0
    return-object v3

    :array_0
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method protected getFieldName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;
    .locals 1
    .param p1, "headers"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .line 320
    const-string v0, "Content-disposition"

    invoke-interface {p1, v0}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;
    .locals 1
    .param p1, "headers"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .line 274
    const-string v0, "Content-disposition"

    invoke-interface {p1, v0}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSizeMax()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->fileSizeMax:J

    return-wide v0
.end method

.method public getHeaderEncoding()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->headerEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getItemIterator(Lorg/apache/commons/fileupload/RequestContext;)Lorg/apache/commons/fileupload/FileItemIterator;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;-><init>(Lorg/apache/commons/fileupload/SWFileUploadBase;Lorg/apache/commons/fileupload/RequestContext;)V

    return-object v0
.end method

.method protected getParsedHeaders(Ljava/lang/String;)Lorg/apache/commons/fileupload/FileItemHeaders;
    .locals 8
    .param p1, "headerPart"    # Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 362
    .local v0, "len":I
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/SWFileUploadBase;->newFileItemHeaders()Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;

    move-result-object v1

    .line 363
    .local v1, "headers":Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;
    const/4 v2, 0x0

    .line 365
    .local v2, "start":I
    :goto_0
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/fileupload/SWFileUploadBase;->parseEndOfLine(Ljava/lang/String;I)I

    move-result v3

    .line 366
    .local v3, "end":I
    if-ne v2, v3, :cond_0

    .line 367
    nop

    .line 390
    .end local v3    # "end":I
    return-object v1

    .line 369
    .restart local v3    # "end":I
    :cond_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "header":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x2

    .line 371
    nop

    :goto_1
    if-lt v2, v0, :cond_1

    goto :goto_4

    .line 372
    :cond_1
    move v5, v2

    .line 373
    .local v5, "nonWs":I
    nop

    :goto_2
    if-lt v5, v0, :cond_2

    goto :goto_3

    .line 374
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 375
    .local v6, "c":C
    const/16 v7, 0x20

    if-eq v6, v7, :cond_4

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    .line 376
    nop

    .line 380
    .end local v6    # "c":C
    :goto_3
    if-ne v5, v2, :cond_3

    .line 381
    nop

    .line 388
    .end local v5    # "nonWs":I
    :goto_4
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/fileupload/SWFileUploadBase;->parseHeaderLine(Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;Ljava/lang/String;)V

    .line 364
    .end local v3    # "end":I
    .end local v4    # "header":Ljava/lang/String;
    goto :goto_0

    .line 384
    .restart local v3    # "end":I
    .restart local v4    # "header":Ljava/lang/String;
    .restart local v5    # "nonWs":I
    :cond_3
    invoke-direct {p0, p1, v5}, Lorg/apache/commons/fileupload/SWFileUploadBase;->parseEndOfLine(Ljava/lang/String;I)I

    move-result v3

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 386
    add-int/lit8 v2, v3, 0x2

    goto :goto_1

    .line 378
    .restart local v6    # "c":C
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public getProgressListener()Lorg/apache/commons/fileupload/ProgressListener;
    .locals 1

    .line 1066
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    return-object v0
.end method

.method public getSizeMax()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->sizeMax:J

    return-wide v0
.end method

.method protected newFileItemHeaders()Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;
    .locals 1

    .line 399
    new-instance v0, Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;

    invoke-direct {v0}, Lorg/apache/commons/fileupload/util/FileItemHeadersImpl;-><init>()V

    return-object v0
.end method

.method public setFileSizeMax(J)V
    .locals 0
    .param p1, "fileSizeMax"    # J

    .line 181
    iput-wide p1, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->fileSizeMax:J

    .line 182
    return-void
.end method

.method public setHeaderEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->headerEncoding:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setProgressListener(Lorg/apache/commons/fileupload/ProgressListener;)V
    .locals 0
    .param p1, "pListener"    # Lorg/apache/commons/fileupload/ProgressListener;

    .line 1076
    iput-object p1, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    .line 1077
    return-void
.end method

.method public setSizeMax(J)V
    .locals 0
    .param p1, "sizeMax"    # J

    .line 158
    iput-wide p1, p0, Lorg/apache/commons/fileupload/SWFileUploadBase;->sizeMax:J

    .line 159
    return-void
.end method

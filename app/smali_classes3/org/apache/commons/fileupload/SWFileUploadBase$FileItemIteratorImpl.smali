.class Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;
.super Ljava/lang/Object;
.source "SWFileUploadBase.java"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItemIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/SWFileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;
    }
.end annotation


# instance fields
.field private final boundary:[B

.field private currentFieldName:Ljava/lang/String;

.field private currentItem:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

.field private eof:Z

.field private itemValid:Z

.field private final multi:Lorg/apache/commons/fileupload/MultipartStream;

.field private final notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

.field private skipPreamble:Z

.field final synthetic this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/SWFileUploadBase;Lorg/apache/commons/fileupload/RequestContext;)V
    .locals 16
    .param p2, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;

    .line 662
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 664
    if-eqz p2, :cond_6

    .line 668
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "contentType":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 670
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "multipart/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 678
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 680
    .local v3, "input":Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 681
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getContentLength()I

    move-result v4

    .line 682
    .local v4, "requestSize":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 683
    new-instance v5, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$1;

    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v6

    invoke-direct {v5, v0, v3, v6, v7}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$1;-><init>(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;Ljava/io/InputStream;J)V

    move-object v3, v5

    .line 696
    goto :goto_0

    .line 697
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-ltz v5, :cond_2

    int-to-long v5, v4

    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gtz v9, :cond_1

    goto :goto_0

    .line 698
    :cond_1
    new-instance v10, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeLimitExceededException;

    .line 699
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "the request was rejected because its size ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 701
    const-string v6, ") exceeds the configured maximum ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 702
    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 699
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 702
    int-to-long v12, v4

    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$1(Lorg/apache/commons/fileupload/SWFileUploadBase;)J

    move-result-wide v14

    .line 698
    invoke-direct/range {v10 .. v15}, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    throw v10

    .line 707
    .end local v4    # "requestSize":I
    :cond_2
    :goto_0
    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$2(Lorg/apache/commons/fileupload/SWFileUploadBase;)Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, "charEncoding":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 709
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    .line 712
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getBoundary(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->boundary:[B

    .line 713
    iget-object v5, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->boundary:[B

    if-eqz v5, :cond_4

    .line 719
    new-instance v5, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-static {v1}, Lorg/apache/commons/fileupload/SWFileUploadBase;->access$3(Lorg/apache/commons/fileupload/SWFileUploadBase;)Lorg/apache/commons/fileupload/ProgressListener;

    move-result-object v1

    .line 720
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getContentLength()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v1, v6, v7}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;-><init>(Lorg/apache/commons/fileupload/ProgressListener;J)V

    .line 719
    iput-object v5, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 721
    new-instance v1, Lorg/apache/commons/fileupload/MultipartStream;

    iget-object v5, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->boundary:[B

    iget-object v6, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-direct {v1, v3, v5, v6}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    iput-object v1, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    .line 722
    iget-object v1, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v1, v4}, Lorg/apache/commons/fileupload/MultipartStream;->setHeaderEncoding(Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    .line 725
    invoke-direct {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->findNextItem()Z

    .line 726
    return-void

    .line 714
    :cond_4
    new-instance v1, Lorg/apache/commons/fileupload/FileUploadException;

    .line 715
    nop

    .line 714
    const-string v5, "the request was rejected because no multipart boundary was found"

    invoke-direct {v1, v5}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "charEncoding":Ljava/lang/String;
    :cond_5
    new-instance v1, Lorg/apache/commons/fileupload/SWFileUploadBase$InvalidContentTypeException;

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the request doesn\'t contain a multipart/form-data or multipart/mixed stream, content type header is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 672
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 671
    invoke-direct {v1, v3}, Lorg/apache/commons/fileupload/SWFileUploadBase$InvalidContentTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ctx parameter"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$0(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/MultipartStream;
    .locals 0

    .line 622
    iget-object p0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    return-object p0
.end method

.method static synthetic access$1(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/SWFileUploadBase;
    .locals 0

    .line 449
    iget-object p0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;

    return-object p0
.end method

.method private findNextItem()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->eof:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 737
    return v2

    .line 739
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-virtual {v0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->close()V

    .line 741
    iput-object v3, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 745
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v0}, Lorg/apache/commons/fileupload/MultipartStream;->skipPreamble()Z

    move-result v0

    .line 747
    .local v0, "nextPart":Z
    move v8, v0

    goto :goto_1

    .line 748
    .end local v0    # "nextPart":Z
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v0}, Lorg/apache/commons/fileupload/MultipartStream;->readBoundary()Z

    move-result v0

    move v8, v0

    .line 750
    .local v8, "nextPart":Z
    :goto_1
    const/4 v9, 0x1

    if-nez v8, :cond_4

    .line 751
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 753
    iput-boolean v9, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->eof:Z

    .line 754
    return v2

    .line 757
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    iget-object v4, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->boundary:[B

    invoke-virtual {v0, v4}, Lorg/apache/commons/fileupload/MultipartStream;->setBoundary([B)V

    .line 758
    iput-object v3, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    .line 759
    goto :goto_0

    .line 761
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;

    iget-object v4, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v4}, Lorg/apache/commons/fileupload/MultipartStream;->readHeaders()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getParsedHeaders(Ljava/lang/String;)Lorg/apache/commons/fileupload/FileItemHeaders;

    move-result-object v10

    .line 762
    .local v10, "headers":Lorg/apache/commons/fileupload/FileItemHeaders;
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    const-string v4, "Content-type"

    if-nez v0, :cond_8

    .line 764
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;

    invoke-virtual {v0, v10}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getFieldName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "fieldName":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 766
    invoke-interface {v10, v4}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 767
    .local v11, "subContentType":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 768
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 769
    nop

    .line 768
    const-string v6, "multipart/mixed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 769
    if-eqz v5, :cond_5

    .line 770
    iput-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    .line 772
    iget-object v4, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;

    invoke-virtual {v4, v11}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getBoundary(Ljava/lang/String;)[B

    move-result-object v4

    .line 773
    .local v4, "subBoundary":[B
    iget-object v5, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v5, v4}, Lorg/apache/commons/fileupload/MultipartStream;->setBoundary([B)V

    .line 774
    iput-boolean v9, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    .line 775
    goto :goto_0

    .line 777
    .end local v4    # "subBoundary":[B
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;

    invoke-virtual {v3, v10}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, "fileName":Ljava/lang/String;
    move-object v2, v3

    const/4 v5, 0x0

    move-object v3, v0

    .end local v0    # "fieldName":Ljava/lang/String;
    .local v2, "fileName":Ljava/lang/String;
    .local v3, "fieldName":Ljava/lang/String;
    new-instance v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 779
    invoke-interface {v10, v4}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 780
    if-nez v2, :cond_6

    const/4 v5, 0x1

    :cond_6
    invoke-direct {p0, v10}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;-><init>(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 778
    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    .end local v3    # "fieldName":Ljava/lang/String;
    .restart local v0    # "fieldName":Ljava/lang/String;
    iput-object v3, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 781
    iget-object v3, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-virtual {v3}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteItem()V

    .line 782
    iput-boolean v9, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 783
    return v9

    .line 765
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v11    # "subContentType":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 786
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/SWFileUploadBase;

    invoke-virtual {v0, v10}, Lorg/apache/commons/fileupload/SWFileUploadBase;->getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .restart local v2    # "fileName":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 788
    new-instance v0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 789
    iget-object v3, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    .line 790
    invoke-interface {v10, v4}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 791
    invoke-direct {p0, v10}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J

    move-result-wide v6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;-><init>(Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 788
    iput-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 792
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-virtual {v0}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteItem()V

    .line 793
    iput-boolean v9, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 794
    return v9

    .line 797
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v0}, Lorg/apache/commons/fileupload/MultipartStream;->discardBodyData()I

    .line 743
    .end local v8    # "nextPart":Z
    .end local v10    # "headers":Lorg/apache/commons/fileupload/FileItemHeaders;
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J
    .locals 3
    .param p1, "pHeaders"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .line 803
    :try_start_0
    const-string v0, "Content-length"

    invoke-interface {p1, v0}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, -0x1

    return-wide v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->eof:Z

    if-eqz v0, :cond_0

    .line 822
    const/4 v0, 0x0

    return v0

    .line 824
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->itemValid:Z

    if-eqz v0, :cond_1

    .line 825
    const/4 v0, 0x1

    return v0

    .line 827
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->findNextItem()Z

    move-result v0

    return v0
.end method

.method public next()Lorg/apache/commons/fileupload/FileItemStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->eof:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->itemValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 848
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/SWFileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    return-object v0

    .line 845
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

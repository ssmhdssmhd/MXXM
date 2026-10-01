.class Lcom/shenma/tvlauncher/BaseActivity$9;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/BaseActivity;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/BaseActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/BaseActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 517
    iput-object p1, p0, Lcom/shenma/tvlauncher/BaseActivity$9;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 16
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "method":Ljava/lang/String;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "POST"

    if-nez v3, :cond_1

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    new-instance v3, Lorg/apache/http/MethodNotSupportedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " method not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 524
    :cond_1
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 525
    move-object/from16 v3, p1

    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 526
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_5

    .line 528
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "postParams":Ljava/lang/String;
    const/4 v5, 0x0

    .line 530
    .local v5, "word":Ljava/lang/String;
    const/4 v6, 0x0

    .line 531
    .local v6, "action":Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 532
    .local v7, "params":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    aget-object v11, v7, v10

    .line 533
    .local v11, "param":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 534
    .local v12, "keyValue":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 535
    aget-object v13, v12, v9

    const-string v14, "word"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_2

    .line 536
    aget-object v5, v12, v14

    goto :goto_2

    .line 537
    :cond_2
    aget-object v13, v12, v9

    const-string v15, "do"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 538
    aget-object v6, v12, v14

    .line 532
    .end local v11    # "param":Ljava/lang/String;
    .end local v12    # "keyValue":[Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 543
    :cond_4
    if-eqz v5, :cond_5

    const-string v8, "search"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 544
    iget-object v8, v0, Lcom/shenma/tvlauncher/BaseActivity$9;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    invoke-virtual {v8, v5}, Lcom/shenma/tvlauncher/BaseActivity;->SearchIntent(Ljava/lang/String;)V

    .line 545
    iget-object v8, v0, Lcom/shenma/tvlauncher/BaseActivity$9;->this$0:Lcom/shenma/tvlauncher/BaseActivity;

    const/high16 v9, 0x10a0000

    const v10, 0x10a0001

    invoke-virtual {v8, v9, v10}, Lcom/shenma/tvlauncher/BaseActivity;->overridePendingTransition(II)V

    .line 546
    const/16 v8, 0xc8

    invoke-interface {v1, v8}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 547
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, "target":Ljava/lang/String;
    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 549
    .local v9, "path":Ljava/lang/String;
    new-instance v10, Lorg/apache/http/entity/EntityTemplate;

    new-instance v11, Lcom/shenma/tvlauncher/BaseActivity$9$1;

    invoke-direct {v11, v0, v9}, Lcom/shenma/tvlauncher/BaseActivity$9$1;-><init>(Lcom/shenma/tvlauncher/BaseActivity$9;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 560
    .local v10, "body":Lorg/apache/http/entity/EntityTemplate;
    const-string v11, "text/html; charset=UTF-8"

    invoke-virtual {v10, v11}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 561
    invoke-interface {v1, v10}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 565
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "postParams":Ljava/lang/String;
    .end local v5    # "word":Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "params":[Ljava/lang/String;
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "body":Lorg/apache/http/entity/EntityTemplate;
    :cond_5
    return-void
.end method

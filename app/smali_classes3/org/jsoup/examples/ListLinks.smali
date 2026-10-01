.class public Lorg/jsoup/examples/ListLinks;
.super Ljava/lang/Object;
.source "ListLinks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 18
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "usage: supply url to fetch"

    invoke-static {v1, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 17
    aget-object v1, v0, v2

    .line 18
    .local v1, "url":Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v5, "Fetching %s..."

    invoke-static {v5, v4}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {v1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v4

    invoke-interface {v4}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v4

    .line 21
    .local v4, "doc":Lorg/jsoup/nodes/Document;
    const-string v5, "a[href]"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    .line 22
    .local v5, "links":Lorg/jsoup/select/Elements;
    const-string v6, "[src]"

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    .line 23
    .local v6, "media":Lorg/jsoup/select/Elements;
    const-string v7, "link[href]"

    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    .line 25
    .local v7, "imports":Lorg/jsoup/select/Elements;
    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v2

    const-string v8, "\nMedia: (%d)"

    invoke-static {v8, v9}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 27
    .local v9, "src":Lorg/jsoup/nodes/Element;
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "img"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "abs:src"

    if-eqz v12, :cond_1

    .line 28
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v13}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "width"

    invoke-virtual {v9, v14}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "height"

    invoke-virtual {v9, v15}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v2, "alt"

    invoke-virtual {v9, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x3

    const/16 v10, 0x14

    invoke-static {v2, v10}, Lorg/jsoup/examples/ListLinks;->trim(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v12, v10, v16

    aput-object v13, v10, v3

    aput-object v14, v10, v11

    aput-object v15, v10, v17

    const/4 v11, 0x4

    aput-object v2, v10, v11

    const-string v2, " * %s: <%s> %sx%s (%s)"

    invoke-static {v2, v10}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 32
    :cond_1
    const/16 v16, 0x0

    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v13}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v16

    aput-object v10, v11, v3

    const-string v2, " * %s: <%s>"

    invoke-static {v2, v11}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v9    # "src":Lorg/jsoup/nodes/Element;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 26
    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x3

    .line 35
    .end local v8    # "i$":Ljava/util/Iterator;
    invoke-virtual {v7}, Lorg/jsoup/select/Elements;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v16

    const-string v2, "\nImports: (%d)"

    invoke-static {v2, v8}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v7}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "abs:href"

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 37
    .local v8, "link":Lorg/jsoup/nodes/Element;
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "rel"

    invoke-virtual {v8, v12}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v10, v14, v16

    aput-object v9, v14, v3

    aput-object v12, v14, v11

    const-string v9, " * %s <%s> (%s)"

    invoke-static {v9, v14}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v17, 0x3

    .end local v8    # "link":Lorg/jsoup/nodes/Element;
    goto :goto_3

    .line 40
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v16

    const-string v2, "\nLinks: (%d)"

    invoke-static {v2, v8}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v5}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 42
    .restart local v8    # "link":Lorg/jsoup/nodes/Element;
    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x23

    invoke-static {v12, v13}, Lorg/jsoup/examples/ListLinks;->trim(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v10, v13, v16

    aput-object v12, v13, v3

    const-string v10, " * a: <%s>  (%s)"

    invoke-static {v10, v13}, Lorg/jsoup/examples/ListLinks;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v8    # "link":Lorg/jsoup/nodes/Element;
    goto :goto_4

    .line 44
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private static varargs print(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private static trim(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "width"    # I

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    return-object p0
.end method

.class public Lcom/baidu/cyberplayer/utils/co;
.super Lcom/baidu/cyberplayer/utils/cl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cl;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/utils/cj;Lorg/w3c/dom/Node;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/cyberplayer/utils/co;->a(Lcom/baidu/cyberplayer/utils/cj;Lorg/w3c/dom/Node;I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;Lorg/w3c/dom/Node;I)Lcom/baidu/cyberplayer/utils/cj;
    .locals 6

    .line 51
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 55
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 62
    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 65
    invoke-virtual {p1, v2}, Lcom/baidu/cyberplayer/utils/cj;->k(Ljava/lang/String;)V

    .line 66
    return-object p1

    .line 69
    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 70
    return-object p1

    .line 72
    :cond_2
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->i(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 76
    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 79
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    .line 83
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 84
    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 85
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v0, v5, v4}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 92
    if-nez p1, :cond_5

    .line 93
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 94
    return-object v0

    .line 97
    :cond_5
    add-int/lit8 p2, p3, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/cyberplayer/utils/co;->a(Lcom/baidu/cyberplayer/utils/cj;Lorg/w3c/dom/Node;I)Lcom/baidu/cyberplayer/utils/cj;

    .line 98
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 99
    if-nez p1, :cond_5

    .line 101
    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 114
    nop

    .line 117
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 119
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 120
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 124
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/co;->a(Lcom/baidu/cyberplayer/utils/cj;Lorg/w3c/dom/Node;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    nop

    .line 138
    return-object v0

    .line 134
    :catch_0
    move-exception p1

    .line 135
    new-instance v0, Lcom/baidu/cyberplayer/utils/cm;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/cm;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.class public Lcom/baidu/cyberplayer/utils/cp;
.super Lcom/baidu/cyberplayer/utils/cl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/cl;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 102
    nop

    .line 105
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 107
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/cp;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 114
    return-object p1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Lcom/baidu/cyberplayer/utils/cm;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/cm;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lcom/baidu/cyberplayer/utils/cj;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/cm;
        }
    .end annotation

    .line 40
    nop

    .line 41
    nop

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    move-object v1, v0

    .line 48
    :goto_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    .line 49
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 79
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p2

    .line 80
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1, p2}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 83
    :cond_0
    goto :goto_2

    .line 86
    :pswitch_1
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cj;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p2

    move-object v1, p2

    goto :goto_2

    .line 52
    :pswitch_2
    new-instance p2, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {p2}, Lcom/baidu/cyberplayer/utils/cj;-><init>()V

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 55
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/baidu/cyberplayer/utils/cj;->i(Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 64
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 65
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {p2, v4, v5}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_3
    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {v1, p2}, Lcom/baidu/cyberplayer/utils/cj;->c(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 72
    :cond_4
    nop

    .line 73
    if-nez v0, :cond_5

    .line 74
    move-object v0, p2

    .line 76
    :cond_5
    move-object v1, p2

    .line 90
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :cond_6
    nop

    .line 97
    return-object v0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    new-instance p2, Lcom/baidu/cyberplayer/utils/cm;

    invoke-direct {p2, p1}, Lcom/baidu/cyberplayer/utils/cm;-><init>(Ljava/lang/Exception;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

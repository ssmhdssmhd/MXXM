.class public Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;
.super Ljava/lang/Object;
.source "NetMediaXmlParse.java"


# instance fields
.field private chanelPostion:I

.field private classPostion:I

.field private inputStream:Ljava/io/InputStream;

.field private netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

.field private netMediaCollection:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

.field private positionNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMediaCollection:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    .line 17
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 18
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public parseFileXml(Ljava/io/File;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;
    .locals 14
    .param p1, "xmlFile"    # Ljava/io/File;

    .line 24
    const-string v0, "name"

    const-string v1, "source"

    const-string v2, "epg"

    const-string v3, "link"

    const-string v4, "classname"

    const/4 v5, 0x0

    iput v5, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->classPostion:I

    .line 25
    iput v5, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->chanelPostion:I

    .line 26
    const/4 v6, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_0

    goto/16 :goto_3

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 34
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->inputStream:Ljava/io/InputStream;

    .line 36
    new-instance v8, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-direct {v8}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;-><init>()V

    iput-object v8, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMediaCollection:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    .line 38
    iget-object v8, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->inputStream:Ljava/io/InputStream;

    const-string v9, "utf-8"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 40
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 42
    .local v8, "evtType":I
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v8, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    .line 44
    packed-switch v8, :pswitch_data_0

    .line 112
    goto :goto_0

    .line 110
    :pswitch_0
    goto :goto_0

    .line 47
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, "nameSpaceStart":Ljava/lang/String;
    const-string v11, "class"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 50
    iget v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->classPostion:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->classPostion:I

    .line 51
    iput v5, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->chanelPostion:I

    .line 52
    new-instance v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-direct {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;-><init>()V

    iput-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 53
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput v5, v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->level:I

    .line 54
    invoke-interface {v7, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 55
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-interface {v7, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->setChannleClass(Ljava/lang/String;)V

    .line 59
    :cond_1
    const-string v11, "channel"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    iget v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->chanelPostion:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->chanelPostion:I

    .line 61
    iget v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->positionNum:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->positionNum:I

    .line 62
    new-instance v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-direct {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;-><init>()V

    iput-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 63
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput v10, v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->level:I

    .line 64
    invoke-interface {v7, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 65
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-interface {v7, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->setEpg(Ljava/lang/String;)V

    .line 68
    :cond_2
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 69
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->setChannlename(Ljava/lang/String;)V

    .line 73
    :cond_3
    const-string v11, "tvlink"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_5

    .line 74
    new-instance v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-direct {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;-><init>()V

    iput-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 75
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iput v12, v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->level:I

    .line 76
    invoke-interface {v7, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 77
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-interface {v7, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->setLink(Ljava/lang/String;)V

    .line 80
    :cond_4
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 81
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->setSource(Ljava/lang/String;)V

    .line 86
    :cond_5
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    if-eqz v11, :cond_9

    .line 87
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iget v11, v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->level:I

    if-nez v11, :cond_6

    .line 88
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMediaCollection:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v11

    iget-object v13, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iget v11, v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->level:I

    if-ne v11, v10, :cond_7

    iget v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->classPostion:I

    if-lez v11, :cond_7

    .line 92
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iget v13, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->positionNum:I

    invoke-virtual {v11, v13}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->setTotlePosition(I)V

    .line 93
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMediaCollection:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v11

    iget v13, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->classPostion:I

    sub-int/2addr v13, v10

    .line 94
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 95
    invoke-virtual {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v11

    iget-object v13, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_7
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    iget v11, v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->level:I

    if-ne v11, v12, :cond_8

    iget v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->chanelPostion:I

    if-lez v11, :cond_8

    .line 99
    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMediaCollection:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    invoke-virtual {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v11

    iget v12, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->classPostion:I

    sub-int/2addr v12, v10

    .line 100
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 101
    invoke-virtual {v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v11

    iget v12, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->chanelPostion:I

    sub-int/2addr v12, v10

    .line 102
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 103
    invoke-virtual {v10}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_8
    iput-object v6, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMedia:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 107
    :cond_9
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v8, v10

    .line 108
    goto/16 :goto_0

    .line 115
    .end local v9    # "nameSpaceStart":Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    iput-object v6, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "evtType":I
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    goto :goto_2

    .line 118
    :catch_1
    move-exception v0

    .line 120
    :goto_1
    nop

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaXmlParse;->netMediaCollection:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    return-object v0

    .line 28
    :cond_b
    :goto_3
    return-object v6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;
.super Ljava/lang/Object;
.source "PtopMainInterfaceParse.java"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

.field private mPtoPMainInterface:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mPtoPMainInterface:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    .line 18
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 19
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public parseFileXml(Ljava/lang/Object;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;
    .locals 7
    .param p1, "xmlFile"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_3

    .line 26
    move-object v1, p1

    check-cast v1, Ljava/io/File;

    .line 28
    .local v1, "xmlFile2":Ljava/io/File;
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_1

    .line 35
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 30
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_0
    return-object v0

    .line 40
    .end local v1    # "xmlFile2":Ljava/io/File;
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 41
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 42
    .local v1, "String1":Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->inputStream:Ljava/io/InputStream;

    goto :goto_2

    .line 40
    .end local v1    # "String1":Ljava/lang/String;
    :cond_4
    :goto_1
    nop

    .line 47
    :goto_2
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 49
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    invoke-direct {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;-><init>()V

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mPtoPMainInterface:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    .line 51
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->inputStream:Ljava/io/InputStream;

    const-string v3, "utf-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 55
    .local v2, "eventType":I
    :cond_5
    :goto_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    .line 57
    const-string v3, "m"

    packed-switch v2, :pswitch_data_0

    .line 84
    goto :goto_3

    .line 76
    :pswitch_0
    :try_start_2
    const-string v4, "handan11"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    if-eqz v3, :cond_6

    .line 78
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mPtoPMainInterface:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 81
    :cond_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v2, v3

    .line 82
    goto :goto_3

    .line 59
    :pswitch_1
    const-string v5, "handan"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 61
    new-instance v3, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-direct {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;-><init>()V

    iput-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 63
    :cond_7
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    if-eqz v3, :cond_5

    .line 65
    const-string v3, "list_name"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 66
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->setList_name(Ljava/lang/String;)V

    .line 68
    :cond_8
    const-string v3, "list_src"

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mMainItem:Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->setList_src(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 87
    :cond_9
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 88
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "eventType":I
    goto :goto_4

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 90
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 91
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 94
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    nop

    .line 95
    :goto_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->mPtoPMainInterface:Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

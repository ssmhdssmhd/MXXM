.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
.super Ljava/lang/Object;
.source "NumberParse.java"


# instance fields
.field private final nextCmd:I

.field final numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "nextCmd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .line 12
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 14
    iput p2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->nextCmd:I

    .line 15
    return-void
.end method

.method static final getNumberParseAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 29
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    return-object v2

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 39
    .local v0, "n":I
    const/4 v1, 0x0

    .line 40
    .local v1, "p":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    .line 42
    .local v3, "skipChar":Z
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 43
    if-eqz v3, :cond_0

    .line 44
    const/4 v3, 0x0

    .line 45
    goto :goto_2

    .line 47
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 48
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    .line 71
    :sswitch_0
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 73
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 74
    .local v7, "f":Ljava/lang/Float;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v7    # "f":Ljava/lang/Float;
    :cond_1
    move v1, v4

    .line 77
    new-instance v7, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    invoke-direct {v7, v2, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;-><init>(Ljava/util/ArrayList;I)V

    return-object v7

    .line 83
    .end local v6    # "str":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 85
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 86
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 87
    .restart local v7    # "f":Ljava/lang/Float;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const/16 v8, 0x2d

    if-ne v5, v8, :cond_2

    .line 89
    move v1, v4

    goto :goto_1

    .line 91
    :cond_2
    add-int/lit8 v1, v4, 0x1

    .line 92
    const/4 v3, 0x1

    .line 94
    .end local v7    # "f":Ljava/lang/Float;
    :goto_1
    goto :goto_2

    .line 95
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 97
    nop

    .line 42
    .end local v5    # "c":C
    .end local v6    # "str":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "last":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 104
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_3

    .line 105
    :catch_0
    move-exception v5

    .line 108
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 110
    :cond_5
    new-instance v5, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    invoke-direct {v5, v2, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;-><init>(Ljava/util/ArrayList;I)V

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x20 -> :sswitch_1
        0x29 -> :sswitch_0
        0x2c -> :sswitch_1
        0x41 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x56 -> :sswitch_0
        0x5a -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x76 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getNextCmd()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->nextCmd:I

    return v0
.end method

.method public getNumber(I)F
    .locals 1
    .param p1, "index"    # I

    .line 24
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

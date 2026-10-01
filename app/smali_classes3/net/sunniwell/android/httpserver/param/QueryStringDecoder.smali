.class public Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;
.super Ljava/lang/Object;
.source "QueryStringDecoder.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lnet/sunniwell/android/httpserver/param/HttpCodecUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_1

    .line 55
    if-eqz p2, :cond_0

    .line 59
    iput-object p1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 61
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .line 68
    sget-object v0, Lnet/sunniwell/android/httpserver/param/HttpCodecUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_1

    .line 79
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 85
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 171
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 174
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method private static decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 159
    if-nez p0, :cond_0

    .line 160
    const-string v0, ""

    return-object v0

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 121
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 123
    .local v2, "pos":I
    const/4 v3, 0x0

    .line 124
    .local v3, "c":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    if-lt v4, v5, :cond_3

    .line 145
    if-eq v2, v4, :cond_1

    .line 146
    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v7}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    goto :goto_2

    .line 149
    :cond_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_1
    if-eqz v1, :cond_2

    .line 152
    invoke-static {v0, v1, v6}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 151
    :cond_2
    :goto_1
    nop

    .line 155
    :goto_2
    return-object v0

    .line 125
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 126
    const/16 v5, 0x3d

    if-ne v3, v5, :cond_5

    if-nez v1, :cond_5

    .line 127
    if-eq v2, v4, :cond_4

    .line 128
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_4
    add-int/lit8 v2, v4, 0x1

    goto :goto_5

    .line 131
    :cond_5
    const/16 v5, 0x26

    if-ne v3, v5, :cond_8

    .line 132
    if-nez v1, :cond_6

    if-eq v2, v4, :cond_6

    .line 136
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v7}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 137
    :cond_6
    if-eqz v1, :cond_7

    .line 138
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    goto :goto_4

    .line 137
    :cond_7
    :goto_3
    nop

    .line 141
    :goto_4
    add-int/lit8 v2, v4, 0x1

    goto :goto_6

    .line 131
    :cond_8
    :goto_5
    nop

    .line 124
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->params:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 109
    .local v0, "pathLength":I
    iget-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 111
    iget-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->decodeParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 113
    :cond_0
    iget-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->decodeParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->params:Ljava/util/Map;

    .line 115
    .end local v0    # "pathLength":I
    :cond_1
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 93
    .local v0, "pathEndPos":I
    if-gez v0, :cond_0

    .line 94
    iget-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    iput-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->path:Ljava/lang/String;

    .line 95
    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->uri:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->path:Ljava/lang/String;

    return-object v1

    .line 100
    .end local v0    # "pathEndPos":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sunniwell/android/httpserver/param/QueryStringDecoder;->path:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 21
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .line 40
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 42
    .local v2, "now":J
    iget-object v4, v1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 44
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 45
    .local v5, "serverDate":J
    const-wide/16 v7, 0x0

    .line 46
    .local v7, "serverExpires":J
    const-wide/16 v9, 0x0

    .line 47
    .local v9, "softExpire":J
    const-wide/16 v11, 0x0

    .line 48
    .local v11, "maxAge":J
    const/4 v0, 0x0

    .line 50
    .local v0, "hasCacheControl":Z
    const/4 v13, 0x0

    .line 53
    .local v13, "serverEtag":Ljava/lang/String;
    const-string v14, "Date"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 54
    .local v14, "headerValue":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 55
    invoke-static {v14}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v5

    .line 58
    :cond_0
    const-string v15, "Cache-Control"

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Ljava/lang/String;

    .line 59
    if-eqz v14, :cond_7

    .line 60
    const/4 v15, 0x1

    .line 61
    .end local v0    # "hasCacheControl":Z
    .local v15, "hasCacheControl":Z
    const-string v0, ","

    move-wide/from16 v16, v2

    .end local v2    # "now":J
    .local v16, "now":J
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    array-length v0, v2

    if-lt v3, v0, :cond_1

    move v0, v15

    goto :goto_3

    .line 63
    :cond_1
    aget-object v0, v2, v3

    move-object/from16 v18, v2

    .end local v2    # "tokens":[Ljava/lang/String;
    .local v18, "tokens":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "token":Ljava/lang/String;
    const-string v0, "no-cache"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "no-store"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 66
    :cond_2
    const-string v0, "max-age="

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v11, v19

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    goto :goto_1

    .line 71
    :cond_3
    const-string v0, "must-revalidate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "proxy-revalidate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    :cond_4
    const-wide/16 v11, 0x0

    .line 62
    .end local v2    # "token":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v18

    goto :goto_0

    .line 65
    .restart local v2    # "token":Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 59
    .end local v3    # "i":I
    .end local v15    # "hasCacheControl":Z
    .end local v16    # "now":J
    .end local v18    # "tokens":[Ljava/lang/String;
    .restart local v0    # "hasCacheControl":Z
    .local v2, "now":J
    :cond_7
    move-wide/from16 v16, v2

    .line 77
    .end local v2    # "now":J
    .restart local v16    # "now":J
    :goto_3
    const-string v2, "Expires"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .end local v14    # "headerValue":Ljava/lang/String;
    .local v2, "headerValue":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 79
    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v7

    .line 82
    :cond_8
    const-string v3, "ETag"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .end local v13    # "serverEtag":Ljava/lang/String;
    .local v3, "serverEtag":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 87
    const-wide/16 v13, 0x3e8

    mul-long v13, v13, v11

    add-long v9, v16, v13

    goto :goto_4

    .line 88
    :cond_9
    const-wide/16 v13, 0x0

    cmp-long v15, v5, v13

    if-lez v15, :cond_a

    cmp-long v13, v7, v5

    if-ltz v13, :cond_a

    .line 90
    sub-long v13, v7, v5

    add-long v9, v16, v13

    .line 93
    :cond_a
    :goto_4
    new-instance v13, Lcom/android/volley/Cache$Entry;

    invoke-direct {v13}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 94
    .local v13, "entry":Lcom/android/volley/Cache$Entry;
    iget-object v14, v1, Lcom/android/volley/NetworkResponse;->data:[B

    iput-object v14, v13, Lcom/android/volley/Cache$Entry;->data:[B

    .line 95
    iput-object v3, v13, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 96
    iput-wide v9, v13, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 97
    iget-wide v14, v13, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v14, v13, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 98
    iput-wide v5, v13, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 99
    iput-object v4, v13, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 101
    return-object v13
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 122
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 124
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "params":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "pair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 128
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    const/4 v4, 0x1

    aget-object v4, v3, v4

    return-object v4

    .line 125
    .end local v3    # "pair":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "params":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    :goto_1
    const-string v1, "ISO-8859-1"

    return-object v1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

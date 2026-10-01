.class public final Lcom/baidu/cyberplayer/utils/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/baidu/cyberplayer/utils/ce;->a(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;IIIZ)I
    .locals 7

    .line 53
    const/4 v0, -0x1

    if-nez p4, :cond_0

    .line 54
    return v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    nop

    .line 58
    :goto_0
    if-lez p4, :cond_1

    .line 59
    if-ge p3, p2, :cond_2

    .line 60
    goto :goto_1

    .line 63
    :cond_1
    if-ge p2, p3, :cond_2

    .line 64
    nop

    .line 83
    :goto_1
    return v0

    .line 66
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 67
    nop

    .line 68
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v1, :cond_6

    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 70
    const/4 v6, 0x1

    if-ne p5, v6, :cond_3

    .line 71
    if-ne v2, v5, :cond_5

    .line 72
    return p2

    .line 75
    :cond_3
    if-eq v2, v5, :cond_4

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    :cond_4
    if-ne v4, v1, :cond_5

    .line 78
    return p2

    .line 68
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 81
    :cond_6
    add-int/2addr p2, p4

    .line 82
    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)J
    .locals 2

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 108
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/utils/ce;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 109
    if-gez v0, :cond_0

    .line 110
    nop

    .line 111
    return-object p0

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/utils/ce;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 115
    if-gez p1, :cond_1

    .line 116
    nop

    .line 117
    return-object p0

    .line 119
    :cond_1
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 120
    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_1

    .line 25
    return v0

    .line 26
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/baidu/cyberplayer/utils/ce;->a(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.class public Lcom/baidu/cyberplayer/utils/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/cyberplayer/utils/cn;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 32
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 33
    return-object v0

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 36
    new-array v3, v2, [C

    .line 37
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 38
    nop

    .line 39
    nop

    .line 40
    move-object v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 41
    aget-char v7, v3, v4

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 44
    :sswitch_0
    const-string v6, "&gt;"

    goto :goto_1

    .line 43
    :sswitch_1
    const-string v6, "&lt;"

    goto :goto_1

    .line 45
    :sswitch_2
    if-eqz p1, :cond_1

    const-string v6, "&apos;"

    goto :goto_1

    .line 42
    :sswitch_3
    const-string v6, "&amp;"

    goto :goto_1

    .line 46
    :cond_1
    :sswitch_4
    if-eqz p1, :cond_2

    const-string v6, "&quot;"

    .line 48
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 49
    sub-int v7, v4, v5

    invoke-virtual {v1, v3, v5, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v5, v4, 0x1

    .line 52
    move-object v6, v0

    .line 40
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_4
    if-nez v5, :cond_5

    .line 56
    return-object p0

    .line 57
    :cond_5
    sub-int/2addr v2, v5

    invoke-virtual {v1, v3, v5, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 78
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 79
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 80
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 81
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 83
    return-object p0
.end method

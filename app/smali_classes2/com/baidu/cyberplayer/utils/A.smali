.class public Lcom/baidu/cyberplayer/utils/A;
.super Lcom/baidu/cyberplayer/utils/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/w;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/v;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    new-instance v0, Lcom/baidu/cyberplayer/utils/v;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/v;-><init>()V

    .line 133
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    goto :goto_1

    .line 137
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    :goto_1
    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    add-int/lit8 v3, v3, 0x3

    .line 141
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 142
    add-int/lit8 v3, v3, 0x3

    .line 143
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 144
    add-int/lit8 v3, v3, 0x3

    .line 145
    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 146
    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v6, v5

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v6, v4

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v6, v2

    .line 147
    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/utils/v;->a(I)V

    .line 148
    add-int/lit8 v3, v3, 0x4

    .line 149
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    goto :goto_3

    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 155
    :cond_3
    :goto_3
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 156
    add-int/lit8 v2, v2, 0x3

    .line 157
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 158
    add-int/lit8 v2, v2, 0x3

    .line 159
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 160
    add-int/lit8 v2, v2, 0x3

    .line 162
    nop

    .line 163
    move v6, v2

    move v7, v6

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 164
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_4

    .line 165
    goto :goto_5

    .line 167
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 169
    :cond_5
    :goto_5
    if-ne v2, v7, :cond_6

    .line 170
    goto :goto_6

    .line 172
    :cond_6
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    :goto_6
    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v1, v5

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v1, v4

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v1, v3

    .line 175
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/v;->b(I)V

    .line 176
    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    :cond_0
    :goto_0
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 106
    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_1
    :goto_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 112
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v0, :cond_1

    .line 113
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 116
    :cond_2
    return-object p1
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 188
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 189
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 193
    const-wide/16 v5, 0x400

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    .line 194
    move-wide v3, v5

    .line 198
    :cond_0
    const/16 p1, 0x401

    new-array p1, p1, [B

    .line 199
    const/4 v0, 0x0

    long-to-int v4, v3

    invoke-virtual {v2, p1, v0, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 200
    new-instance v0, Lcom/baidu/cyberplayer/utils/y;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/y;-><init>()V

    .line 201
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/y;->a([B)I

    move-result p1

    .line 202
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/z;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string p1, "GBK"

    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "OTHER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const-string p1, "UTF-8"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :cond_2
    :goto_0
    nop

    .line 225
    nop

    .line 226
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 228
    nop

    .line 229
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    .line 225
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 222
    :catch_0
    move-exception p1

    goto :goto_2

    .line 225
    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_5

    .line 222
    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 225
    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_5

    .line 222
    :catch_2
    move-exception p1

    move-object v2, v0

    .line 223
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 225
    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 228
    :cond_3
    if-eqz v2, :cond_4

    .line 229
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 232
    :cond_4
    const-string/jumbo p1, "utf-8"

    :goto_4
    return-object p1

    .line 225
    :catchall_3
    move-exception p1

    :goto_5
    if-eqz v0, :cond_5

    .line 226
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 228
    :cond_5
    if-eqz v2, :cond_6

    .line 229
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_6
    throw p1
.end method

.method public a(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/cyberplayer/utils/v;",
            ">;"
        }
    .end annotation

    .line 40
    const-string v0, "SrtParser"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/A;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 44
    nop

    .line 46
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/high16 p1, 0x30000

    invoke-direct {v4, v5, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    nop

    .line 50
    :try_start_2
    const-string p1, "\\d\\d:\\d\\d:\\d\\d,\\d\\d\\d"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 52
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    nop

    .line 58
    :try_start_3
    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/utils/A;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/v;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    nop

    .line 65
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 69
    :goto_1
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 70
    if-nez v3, :cond_1

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 75
    :cond_2
    :goto_2
    invoke-direct {p0, v5}, Lcom/baidu/cyberplayer/utils/A;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/v;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    const-string v3, "paseTime error"

    invoke-static {v0, v3, v2}, Lcom/baidu/cyberplayer/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    goto :goto_0

    .line 83
    :cond_3
    nop

    .line 85
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 83
    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_6

    .line 80
    :catch_1
    move-exception p1

    move-object v3, v4

    goto :goto_3

    .line 83
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 80
    :catch_2
    move-exception p1

    .line 81
    :goto_3
    :try_start_6
    const-string v2, "parse subtitle"

    invoke-static {v0, v2, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 83
    if-eqz v3, :cond_4

    .line 85
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 88
    :goto_4
    goto :goto_5

    .line 86
    :catch_3
    move-exception p1

    goto :goto_4

    .line 93
    :cond_4
    :goto_5
    goto :goto_8

    .line 83
    :goto_6
    if-eqz v3, :cond_5

    .line 85
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 88
    goto :goto_7

    .line 86
    :catch_4
    move-exception v0

    .line 88
    :cond_5
    :goto_7
    :try_start_9
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 91
    :catch_5
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_8
    return-object v1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/cyberplayer/utils/v;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/A;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

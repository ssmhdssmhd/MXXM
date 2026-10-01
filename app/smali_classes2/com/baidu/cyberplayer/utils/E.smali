.class public Lcom/baidu/cyberplayer/utils/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/E;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/E;->b(Ljava/lang/String;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    return-void

    .line 44
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 45
    if-gez v0, :cond_1

    .line 46
    return-void

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 48
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v2, v3, v4, p1}, Ljava/lang/String;-><init>([BII)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/E;->a(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/E;->b(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/E;->a(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/E;->b(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static final a([BLjava/lang/String;)I
    .locals 0

    .line 140
    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/utils/E;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 142
    :catch_0
    move-exception p0

    .line 143
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 90
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 94
    new-instance v2, Lcom/baidu/cyberplayer/utils/E;

    invoke-direct {v2, v1}, Lcom/baidu/cyberplayer/utils/E;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/E;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 97
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/E;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/E;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 111
    :cond_2
    nop

    .line 112
    return-object v0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 110
    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 117
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance p0, Ljava/io/LineNumberReader;

    invoke-direct {p0, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 119
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/utils/E;->a(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/E;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/E;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/E;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public a()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/E;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/E;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/E;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/E;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

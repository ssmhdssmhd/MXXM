.class public Lcom/baidu/cyberplayer/utils/K;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/K;->a:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/baidu/cyberplayer/utils/K;->a:I

    .line 36
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/K;->a:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/baidu/cyberplayer/utils/K;->a:I

    .line 39
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/K;->a:[Ljava/net/InetAddress;

    .line 40
    iput p2, p0, Lcom/baidu/cyberplayer/utils/K;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/K;->a:[Ljava/net/InetAddress;

    .line 77
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 79
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 80
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()I

    move-result v0

    .line 84
    new-array v2, v0, [Ljava/lang/String;

    .line 85
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 86
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_1
    nop

    .line 90
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 91
    new-instance v3, Lcom/baidu/cyberplayer/utils/J;

    invoke-direct {v3}, Lcom/baidu/cyberplayer/utils/J;-><init>()V

    .line 92
    aget-object v4, v2, v1

    if-eqz v4, :cond_3

    aget-object v4, v2, v1

    iget v5, p0, Lcom/baidu/cyberplayer/utils/K;->a:I

    invoke-virtual {v3, v4, v5}, Lcom/baidu/cyberplayer/utils/J;->a(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/K;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 93
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/K;->a()V

    .line 94
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/K;->clear()V

    .line 90
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 100
    :cond_4
    return v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/J;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/K;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/J;

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/K;->size()I

    move-result v0

    .line 68
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/K;->a(I)Lcom/baidu/cyberplayer/utils/J;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/J;->a()Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/H;)V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/K;->size()I

    move-result v0

    .line 50
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/K;->a(I)Lcom/baidu/cyberplayer/utils/J;

    move-result-object v2

    .line 52
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/J;->a(Lcom/baidu/cyberplayer/utils/H;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 106
    iput p1, p0, Lcom/baidu/cyberplayer/utils/K;->a:I

    .line 107
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/K;->a()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/K;->size()I

    move-result v0

    .line 117
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/K;->a(I)Lcom/baidu/cyberplayer/utils/J;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/J;->c()Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/K;->size()I

    move-result v0

    .line 126
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/K;->a(I)Lcom/baidu/cyberplayer/utils/J;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/J;->d()Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

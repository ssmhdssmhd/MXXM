.class public Lcom/baidu/cyberplayer/utils/aV;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private a:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aV;->a:[Ljava/net/InetAddress;

    .line 36
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aV;->a:[Ljava/net/InetAddress;

    .line 42
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aV;->a:[Ljava/net/InetAddress;

    .line 43
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/aU;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aV;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/aU;

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->size()I

    move-result v0

    .line 115
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aV;->a(I)Lcom/baidu/cyberplayer/utils/aU;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aU;->c()Z

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/Z;)V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->size()I

    move-result v0

    .line 57
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aV;->a(I)Lcom/baidu/cyberplayer/utils/aU;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/aU;->a(Lcom/baidu/cyberplayer/utils/Z;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aV;->a:[Ljava/net/InetAddress;

    .line 79
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 81
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 82
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()I

    move-result v0

    .line 86
    new-array v2, v0, [Ljava/lang/String;

    .line 87
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 88
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :cond_1
    const/4 v0, 0x0

    :goto_2
    :try_start_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 93
    new-instance v3, Lcom/baidu/cyberplayer/utils/aU;

    aget-object v4, v2, v0

    invoke-direct {v3, v4, p1}, Lcom/baidu/cyberplayer/utils/aU;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v3}, Lcom/baidu/cyberplayer/utils/aU;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/aV;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 102
    :cond_3
    nop

    .line 103
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->size()I

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 104
    :cond_4
    const/4 p1, 0x1

    return p1

    .line 97
    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->c()V

    .line 99
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->a()V

    .line 100
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->clear()V

    .line 101
    return v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aS;)Z
    .locals 8

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->size()I

    move-result v0

    .line 151
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 152
    invoke-virtual {p0, v3}, Lcom/baidu/cyberplayer/utils/aV;->a(I)Lcom/baidu/cyberplayer/utils/aU;

    move-result-object v5

    .line 153
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/aU;->a()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual {p1, v6}, Lcom/baidu/cyberplayer/utils/aS;->n(Ljava/lang/String;)V

    .line 155
    nop

    .line 156
    invoke-static {v6}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v1, :cond_0

    .line 157
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aL;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 156
    :cond_0
    const-string v6, "239.255.255.250"

    .line 159
    :goto_1
    const/16 v7, 0x76c

    invoke-virtual {v5, v6, v7, p1}, Lcom/baidu/cyberplayer/utils/aU;->a(Ljava/lang/String;ILcom/baidu/cyberplayer/utils/aS;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    const/4 v4, 0x0

    .line 151
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_2
    return v4
.end method

.method public b()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->size()I

    move-result v0

    .line 128
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aV;->a(I)Lcom/baidu/cyberplayer/utils/aU;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aU;->a()V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aV;->size()I

    move-result v0

    .line 137
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aV;->a(I)Lcom/baidu/cyberplayer/utils/aU;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aU;->b()V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

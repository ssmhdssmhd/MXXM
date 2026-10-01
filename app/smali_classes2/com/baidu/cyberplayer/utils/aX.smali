.class public Lcom/baidu/cyberplayer/utils/aX;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:[Ljava/net/InetAddress;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aX;->a:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aX;->a:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aL;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aX;->b:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lcom/baidu/cyberplayer/utils/aX;->a:I

    .line 40
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aX;->a:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aX;->a:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aL;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aX;->b:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lcom/baidu/cyberplayer/utils/aX;->a:I

    .line 58
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aX;->a:[Ljava/net/InetAddress;

    .line 59
    iput p2, p0, Lcom/baidu/cyberplayer/utils/aX;->a:I

    .line 60
    iput-object p3, p0, Lcom/baidu/cyberplayer/utils/aX;->a:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/baidu/cyberplayer/utils/aX;->b:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/aW;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aX;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/aW;

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aX;->size()I

    move-result v0

    .line 121
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 122
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aX;->a(I)Lcom/baidu/cyberplayer/utils/aW;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aW;->b()Z

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aX;->clear()V

    .line 126
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ay;)V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aX;->size()I

    move-result v0

    .line 79
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aX;->a(I)Lcom/baidu/cyberplayer/utils/aW;

    move-result-object v2

    .line 81
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/aW;->a(Lcom/baidu/cyberplayer/utils/ay;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aX;->a:[Ljava/net/InetAddress;

    .line 92
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 94
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 95
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()I

    move-result v0

    .line 99
    new-array v2, v0, [Ljava/lang/String;

    .line 100
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 101
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    :cond_1
    nop

    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 106
    aget-object v0, v2, v1

    if-eqz v0, :cond_3

    .line 108
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    new-instance v0, Lcom/baidu/cyberplayer/utils/aW;

    aget-object v3, v2, v1

    iget v4, p0, Lcom/baidu/cyberplayer/utils/aX;->a:I

    iget-object v5, p0, Lcom/baidu/cyberplayer/utils/aX;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/baidu/cyberplayer/utils/aW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 111
    :cond_2
    new-instance v0, Lcom/baidu/cyberplayer/utils/aW;

    aget-object v3, v2, v1

    iget v4, p0, Lcom/baidu/cyberplayer/utils/aX;->a:I

    iget-object v5, p0, Lcom/baidu/cyberplayer/utils/aX;->a:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/baidu/cyberplayer/utils/aW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    :goto_3
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aX;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 115
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aX;->size()I

    move-result v0

    .line 135
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aX;->a(I)Lcom/baidu/cyberplayer/utils/aW;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aW;->a()V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aX;->size()I

    move-result v0

    .line 144
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 145
    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aX;->a(I)Lcom/baidu/cyberplayer/utils/aW;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aW;->b()V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

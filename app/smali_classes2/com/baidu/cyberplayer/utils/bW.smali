.class public Lcom/baidu/cyberplayer/utils/bW;
.super Lcom/baidu/cyberplayer/utils/bX;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lcom/baidu/cyberplayer/utils/K;

.field private a:Lcom/baidu/cyberplayer/utils/aP;

.field private a:Lcom/baidu/cyberplayer/utils/aX;

.field private a:Lcom/baidu/cyberplayer/utils/ar;

.field private a:Lcom/baidu/cyberplayer/utils/cc;

.field private a:Ljava/io/File;

.field private a:Ljava/lang/String;

.field private a:[Ljava/net/InetAddress;

.field private b:I

.field private b:Ljava/lang/String;

.field private b:[Ljava/net/InetAddress;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bX;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Ljava/io/File;

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/bW;->b:Ljava/lang/String;

    .line 77
    const/16 v1, 0x708

    iput v1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:I

    .line 93
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/K;

    .line 102
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:[Ljava/net/InetAddress;

    .line 116
    const/16 v1, 0xfa4

    iput v1, p0, Lcom/baidu/cyberplayer/utils/bW;->b:I

    .line 130
    new-instance v1, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/cc;

    .line 146
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/aX;

    .line 147
    const-string v1, "239.255.255.250"

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/bW;->c:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aL;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/bW;->d:Ljava/lang/String;

    .line 149
    const/16 v1, 0x76c

    iput v1, p0, Lcom/baidu/cyberplayer/utils/bW;->c:I

    .line 150
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->b:[Ljava/net/InetAddress;

    .line 243
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/aP;

    .line 257
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/ar;

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:I

    return v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/K;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/K;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/baidu/cyberplayer/utils/K;

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:[Ljava/net/InetAddress;

    iget v2, p0, Lcom/baidu/cyberplayer/utils/bW;->b:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/K;-><init>([Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/K;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/K;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aP;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/aP;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aX;
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/aX;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/baidu/cyberplayer/utils/aX;

    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/bW;->b:[Ljava/net/InetAddress;

    iget v2, p0, Lcom/baidu/cyberplayer/utils/bW;->c:I

    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/bW;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/cyberplayer/utils/bW;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/cyberplayer/utils/aX;-><init>([Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/aX;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/aX;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ar;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/ar;

    return-object v0
.end method

.method public a()Ljava/io/File;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Ljava/io/File;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:I

    .line 87
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/aP;

    .line 251
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ar;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Lcom/baidu/cyberplayer/utils/ar;

    .line 262
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Ljava/io/File;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bW;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a()[Ljava/net/InetAddress;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->a:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bW;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bW;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/baidu/cyberplayer/utils/bW;->b:I

    .line 124
    return-void
.end method

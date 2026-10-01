.class public Lcom/baidu/cyberplayer/utils/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cj;

.field private a:Ljava/lang/Object;

.field private b:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/X;->a:Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/baidu/cyberplayer/utils/cj;

    const-string v2, "argument"

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/cyberplayer/utils/X;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 92
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/X;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/X;->a:Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/X;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 103
    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/X;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/X;-><init>()V

    .line 109
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/X;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private a()Lcom/baidu/cyberplayer/utils/bV;
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/X;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/bV;

    .line 200
    if-nez v1, :cond_0

    .line 201
    new-instance v1, Lcom/baidu/cyberplayer/utils/bV;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bV;-><init>()V

    .line 202
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/bV;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 205
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 119
    const-string v0, "argument"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/X;->c()Ljava/lang/String;

    move-result-object v0

    .line 231
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/X;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/X;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/X;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public a()Z
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/X;->b()Ljava/lang/String;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/X;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/X;->a()Lcom/baidu/cyberplayer/utils/bV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bV;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public b()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/X;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/X;->a()Lcom/baidu/cyberplayer/utils/bV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bV;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

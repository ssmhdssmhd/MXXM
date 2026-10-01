.class public Lcom/baidu/cyberplayer/utils/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/ci;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->b:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/baidu/cyberplayer/utils/ci;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ci;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Lcom/baidu/cyberplayer/utils/ci;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->b:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/baidu/cyberplayer/utils/ci;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ci;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Lcom/baidu/cyberplayer/utils/ci;

    .line 31
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bn;->a(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/baidu/cyberplayer/utils/bn;->b(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ci;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/ch;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ci;->a(I)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ci;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bn;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object p1

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ch;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ch;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Lcom/baidu/cyberplayer/utils/ci;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ci;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bn;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/baidu/cyberplayer/utils/ch;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bn;->a(Lcom/baidu/cyberplayer/utils/ch;)V

    .line 93
    return-void
.end method

.method public a()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/bn;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bn;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bn;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ch;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/ch;->b(Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/ch;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/ch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bn;->a(Lcom/baidu/cyberplayer/utils/ch;)V

    .line 122
    return-void
.end method

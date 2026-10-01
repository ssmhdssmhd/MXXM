.class public Lcom/baidu/cyberplayer/utils/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bb;->a(I)V

    .line 36
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bb;->b(I)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bb;->c(I)V

    .line 38
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bb;->a(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/bb;->b(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bb;->d(I)V

    .line 41
    const-string p1, "Output"

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bb;->c(Ljava/lang/String;)V

    .line 42
    const-string p1, "Unknown"

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bb;->d(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bb;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/baidu/cyberplayer/utils/bb;->a:I

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bb;->a:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public b()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bb;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/baidu/cyberplayer/utils/bb;->b:I

    .line 70
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bb;->b:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public c()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bb;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/baidu/cyberplayer/utils/bb;->c:I

    .line 86
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bb;->c:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public d()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/baidu/cyberplayer/utils/bb;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/baidu/cyberplayer/utils/bb;->d:I

    .line 134
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bb;->d:Ljava/lang/String;

    .line 166
    return-void
.end method

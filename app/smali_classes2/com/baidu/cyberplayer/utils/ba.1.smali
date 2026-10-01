.class public Lcom/baidu/cyberplayer/utils/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ba;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ba;->a:Lcom/baidu/cyberplayer/utils/cj;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ba;->a:Lcom/baidu/cyberplayer/utils/cj;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/ba;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 42
    return-void
.end method

.class public Lcom/baidu/cyberplayer/utils/bY;
.super Lcom/baidu/cyberplayer/utils/bX;
.source "SourceFile"


# instance fields
.field private a:J

.field private a:Lcom/baidu/cyberplayer/utils/aF;

.field private a:Lcom/baidu/cyberplayer/utils/cc;

.field private a:Lcom/baidu/cyberplayer/utils/cj;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bX;-><init>()V

    .line 37
    new-instance v0, Lcom/baidu/cyberplayer/utils/cc;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cc;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->a:Lcom/baidu/cyberplayer/utils/cc;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 61
    new-instance v0, Lcom/baidu/cyberplayer/utils/aF;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/aF;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->a:Lcom/baidu/cyberplayer/utils/aF;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->a:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->b:Ljava/lang/String;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/utils/bY;->a:J

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/aF;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->a:Lcom/baidu/cyberplayer/utils/aF;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bY;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/baidu/cyberplayer/utils/bY;->a:J

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bY;->b:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bY;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 55
    return-void
.end method

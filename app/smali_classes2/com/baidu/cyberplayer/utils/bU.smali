.class public Lcom/baidu/cyberplayer/utils/bU;
.super Lcom/baidu/cyberplayer/utils/bX;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/ai;

.field private a:Lcom/baidu/cyberplayer/utils/am;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bX;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bU;->a:Lcom/baidu/cyberplayer/utils/ai;

    .line 44
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bU;->a:Lcom/baidu/cyberplayer/utils/am;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/ai;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bU;->a:Lcom/baidu/cyberplayer/utils/ai;

    return-object v0
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ai;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bU;->a:Lcom/baidu/cyberplayer/utils/ai;

    .line 38
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/am;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bU;->a:Lcom/baidu/cyberplayer/utils/am;

    .line 54
    return-void
.end method

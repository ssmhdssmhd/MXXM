.class public Lcom/baidu/cyberplayer/utils/bV;
.super Lcom/baidu/cyberplayer/utils/bX;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bX;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/bV;->a:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/bV;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/bV;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

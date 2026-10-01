.class public Lcom/baidu/cyberplayer/utils/aC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aC;->a:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aC;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aC;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string p1, ""

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aC;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aC;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string p1, ""

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aC;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.class public Lcom/baidu/cyberplayer/utils/aF;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/aE;
    .locals 0

    .line 38
    nop

    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aF;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    .line 43
    :goto_0
    check-cast p1, Lcom/baidu/cyberplayer/utils/aE;

    return-object p1
.end method

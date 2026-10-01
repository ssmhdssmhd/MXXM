.class public Lcom/baidu/cyberplayer/utils/bO;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/bN;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bO;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/bN;

    return-object p1
.end method

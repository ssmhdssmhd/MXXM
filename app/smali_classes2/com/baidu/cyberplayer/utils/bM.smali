.class public Lcom/baidu/cyberplayer/utils/bM;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/bL;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bM;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/bL;

    return-object p1
.end method

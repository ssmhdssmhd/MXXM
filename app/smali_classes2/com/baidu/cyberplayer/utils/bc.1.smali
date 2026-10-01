.class public Lcom/baidu/cyberplayer/utils/bc;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/bb;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/bc;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/bb;

    return-object p1
.end method

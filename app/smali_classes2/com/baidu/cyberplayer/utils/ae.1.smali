.class public Lcom/baidu/cyberplayer/utils/ae;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/af;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/ae;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/af;

    return-object p1
.end method

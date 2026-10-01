.class public Lcom/baidu/cyberplayer/utils/aD;
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
.method public a(I)Lcom/baidu/cyberplayer/utils/aC;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aD;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/cyberplayer/utils/aC;

    return-object p1
.end method

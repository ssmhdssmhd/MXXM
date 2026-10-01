.class Lcom/baidu/cyberplayer/core/a$n;
.super Lcom/baidu/cyberplayer/core/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field final synthetic c:Lcom/baidu/cyberplayer/core/a;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/core/a;Z)V
    .locals 8

    .line 1071
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$n;->c:Lcom/baidu/cyberplayer/core/a;

    .line 1072
    if-eqz p2, :cond_0

    const/16 p2, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/baidu/cyberplayer/core/a$b;-><init>(Lcom/baidu/cyberplayer/core/a;IIIIII)V

    .line 1073
    return-void
.end method

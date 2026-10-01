.class public Lcom/baidu/cyberplayer/subtitle/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/baidu/cyberplayer/subtitle/utils/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/baidu/cyberplayer/subtitle/utils/a<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/utils/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/cyberplayer/subtitle/utils/a;-><init>(Ljava/lang/Object;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;)V

    return-object v0
.end method

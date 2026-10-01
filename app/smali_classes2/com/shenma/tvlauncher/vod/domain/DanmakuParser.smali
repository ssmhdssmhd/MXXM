.class public Lcom/shenma/tvlauncher/vod/domain/DanmakuParser;
.super Ljava/lang/Object;
.source "DanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJsonString(Ljava/lang/String;Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;)V
    .locals 2
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;

    .line 20
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;

    invoke-direct {v0, p0, p1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;-><init>(Ljava/lang/String;Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 95
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

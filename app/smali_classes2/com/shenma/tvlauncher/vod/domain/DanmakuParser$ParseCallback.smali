.class public interface abstract Lcom/shenma/tvlauncher/vod/domain/DanmakuParser$ParseCallback;
.super Ljava/lang/Object;
.source "DanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/domain/DanmakuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParseCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onParseComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/DanmakuItem;",
            ">;)V"
        }
    .end annotation
.end method

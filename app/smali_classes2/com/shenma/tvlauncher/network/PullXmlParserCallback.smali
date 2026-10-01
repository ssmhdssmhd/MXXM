.class public interface abstract Lcom/shenma/tvlauncher/network/PullXmlParserCallback;
.super Ljava/lang/Object;
.source "PullXmlParserCallback.java"


# virtual methods
.method public abstract endDocument()V
.end method

.method public abstract endFlag(Ljava/lang/String;)V
.end method

.method public abstract haveError(Lcom/shenma/tvlauncher/network/PullXmlParserError;)V
.end method

.method public abstract startDocument()V
.end method

.method public abstract startFlag(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract text(Ljava/lang/String;)V
.end method

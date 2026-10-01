.class public interface abstract Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBrowseCallBack"
.end annotation


# virtual methods
.method public abstract onBrowse(ZLjava/util/List;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/baidu/cyberplayer/dlna/ContentItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

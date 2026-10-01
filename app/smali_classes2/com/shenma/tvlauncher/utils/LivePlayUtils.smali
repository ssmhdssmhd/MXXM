.class public Lcom/shenma/tvlauncher/utils/LivePlayUtils;
.super Ljava/lang/Object;
.source "LivePlayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static getData(I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 13
    const-string/jumbo v1, "\u89c6\u9891\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const-string/jumbo v1, "\u753b\u9762\u6bd4\u4f8b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const-string/jumbo v1, "\u504f\u597d\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string/jumbo v1, "\u64ad\u653e\u5185\u6838"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-string/jumbo v1, "\u6e05\u7406\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 19
    const-string/jumbo v1, "\u8f6f\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    const-string/jumbo v1, "\u786c\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 22
    const-string/jumbo v1, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "4:3 \u7f29\u653e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v1, "16:9\u7f29\u653e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string/jumbo v1, "\u5168\u5c4f\u62c9\u4f38"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string/jumbo v1, "\u7b49\u6bd4\u7f29\u653e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-string/jumbo v1, "\u5168\u5c4f\u88c1\u526a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 29
    const-string/jumbo v1, "\u4e0a\u4e0b\u952e\u5207\u6362\u9009\u96c6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const-string/jumbo v1, "\u4e0a\u4e0b\u952e\u8c03\u8282\u97f3\u91cf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 32
    const-string/jumbo v1, "\u81ea\u52a8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string/jumbo v1, "\u7cfb\u7edf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "IJK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "EXO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string/jumbo v1, "\u963f\u91cc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    .line 38
    const-string/jumbo v1, "\u6e05\u7406\u6240\u6709\u8bb0\u5fc6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string/jumbo v1, "\u6e05\u7406\u9891\u9053\u8bb0\u5fc6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string/jumbo v1, "\u6e05\u7406\u8d44\u6e90\u8bb0\u5fc6"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_5
    :goto_0
    return-object v0
.end method

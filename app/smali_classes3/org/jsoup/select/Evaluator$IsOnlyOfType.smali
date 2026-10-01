.class public final Lorg/jsoup/select/Evaluator$IsOnlyOfType;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsOnlyOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 7
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 571
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 572
    .local v0, "p":Lorg/jsoup/nodes/Element;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 574
    :cond_0
    const/4 v2, 0x0

    .line 575
    .local v2, "pos":I
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v3

    .line 576
    .local v3, "family":Lorg/jsoup/select/Elements;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 577
    invoke-virtual {v3, v4}, Lorg/jsoup/select/Elements;->get(I)Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 576
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 579
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 572
    .end local v2    # "pos":I
    .end local v3    # "family":Lorg/jsoup/select/Elements;
    :cond_4
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 583
    const-string v0, ":only-of-type"

    return-object v0
.end method

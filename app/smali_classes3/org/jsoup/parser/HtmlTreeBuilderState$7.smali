.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 5
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 766
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v1

    .line 768
    .local v1, "stack":Lorg/jsoup/helper/DescendableLinkedList;, "Lorg/jsoup/helper/DescendableLinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v1}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 769
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 770
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 771
    .local v3, "node":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 774
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 775
    :cond_0
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 776
    goto :goto_1

    .line 778
    :cond_1
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 779
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 780
    const/4 v4, 0x0

    return v4

    .line 783
    .end local v3    # "node":Lorg/jsoup/nodes/Element;
    :cond_2
    goto :goto_0

    .line 784
    :cond_3
    :goto_1
    const/4 v3, 0x1

    return v3
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 29
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v4, v1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "address"

    const-string v5, "a"

    const-string v6, "h6"

    const-string v7, "h5"

    const-string v8, "h4"

    const-string v9, "h3"

    const-string v10, "h2"

    const-string v11, "h1"

    const/16 v16, 0x9

    const-string v13, "body"

    const/16 v17, 0x7

    const/16 v18, 0xb

    const/16 v19, 0xa

    const/16 v20, 0x4

    const/16 v21, 0x5

    const/16 v22, 0x3

    const-string v15, "p"

    const/16 v23, 0x8

    const/16 v24, 0x6

    const/16 v25, 0x1

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_17

    .line 249
    :pswitch_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v3

    .line 250
    .local v3, "c":Lorg/jsoup/parser/Token$Character;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 253
    return v12

    .line 254
    :cond_0
    invoke-static {v3}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 256
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto/16 :goto_17

    .line 258
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 259
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 260
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 262
    goto/16 :goto_17

    .line 247
    .end local v3    # "c":Lorg/jsoup/parser/Token$Character;
    :pswitch_1
    const/4 v3, 0x0

    .local v3, "name":Ljava/lang/String;
    const/16 v26, 0x0

    .line 559
    .local v26, "startTag":Lorg/jsoup/parser/Token$StartTag;
    const/16 v27, 0x0

    invoke-virtual {v1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v12

    .line 560
    .local v12, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v12}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 562
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 563
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 564
    return v27

    .line 567
    :cond_2
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 569
    :cond_3
    const/16 v28, 0x2

    const-string v14, "html"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 570
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v13}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    .line 571
    .local v4, "notIgnored":Z
    if-eqz v4, :cond_4

    .line 572
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v5

    return v5

    .line 573
    .end local v4    # "notIgnored":Z
    :cond_4
    goto/16 :goto_17

    :cond_5
    const/16 v13, 0x18

    new-array v13, v13, [Ljava/lang/String;

    aput-object v4, v13, v27

    const-string v4, "article"

    aput-object v4, v13, v25

    const-string v4, "aside"

    aput-object v4, v13, v28

    const-string v4, "blockquote"

    aput-object v4, v13, v22

    const-string v4, "button"

    aput-object v4, v13, v20

    const-string v4, "center"

    aput-object v4, v13, v21

    const-string v4, "details"

    aput-object v4, v13, v24

    const-string v4, "dir"

    aput-object v4, v13, v17

    const-string v4, "div"

    aput-object v4, v13, v23

    const-string v4, "dl"

    aput-object v4, v13, v16

    const-string v4, "fieldset"

    aput-object v4, v13, v19

    const-string v4, "figcaption"

    aput-object v4, v13, v18

    const-string v4, "figure"

    const/16 v14, 0xc

    aput-object v4, v13, v14

    const-string v4, "footer"

    const/16 v14, 0xd

    aput-object v4, v13, v14

    const-string v4, "header"

    const/16 v14, 0xe

    aput-object v4, v13, v14

    const-string v4, "hgroup"

    const/16 v14, 0xf

    aput-object v4, v13, v14

    const-string v4, "listing"

    const/16 v14, 0x10

    aput-object v4, v13, v14

    const-string v4, "menu"

    const/16 v14, 0x11

    aput-object v4, v13, v14

    const-string v4, "nav"

    const/16 v14, 0x12

    aput-object v4, v13, v14

    const-string v4, "ol"

    const/16 v14, 0x13

    aput-object v4, v13, v14

    const-string v4, "pre"

    const/16 v14, 0x14

    aput-object v4, v13, v14

    const-string v4, "section"

    const/16 v14, 0x15

    aput-object v4, v13, v14

    const-string v4, "summary"

    const/16 v14, 0x16

    aput-object v4, v13, v14

    const-string v4, "ul"

    const/16 v14, 0x17

    aput-object v4, v13, v14

    invoke-static {v3, v13}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 578
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 580
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 581
    return v27

    .line 583
    :cond_6
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 584
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 585
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 586
    :cond_7
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 588
    :cond_8
    const-string v4, "form"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 589
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 590
    .local v4, "currentForm":Lorg/jsoup/nodes/Element;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    .line 591
    if-eqz v4, :cond_b

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    .line 595
    :cond_9
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 596
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 597
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 599
    :cond_a
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 601
    .end local v4    # "currentForm":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    .line 592
    .restart local v4    # "currentForm":Lorg/jsoup/nodes/Element;
    :cond_b
    :goto_0
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 593
    return v27

    .line 601
    .end local v4    # "currentForm":Lorg/jsoup/nodes/Element;
    :cond_c
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 602
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 603
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 604
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v4, v3}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 605
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 607
    :cond_d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 609
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 610
    :cond_e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 612
    :cond_f
    const-string v4, "li"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 613
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 614
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 615
    return v27

    .line 617
    :cond_10
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 619
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 620
    :cond_11
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 622
    :cond_12
    const/4 v4, 0x2

    new-array v13, v4, [Ljava/lang/String;

    const-string v4, "dd"

    aput-object v4, v13, v27

    const-string v4, "dt"

    aput-object v4, v13, v25

    invoke-static {v3, v13}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 623
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 624
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 625
    return v27

    .line 627
    :cond_13
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 629
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 630
    :cond_14
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 632
    :cond_15
    const/4 v4, 0x6

    new-array v13, v4, [Ljava/lang/String;

    aput-object v11, v13, v27

    aput-object v10, v13, v25

    const/16 v28, 0x2

    aput-object v9, v13, v28

    aput-object v8, v13, v22

    aput-object v7, v13, v20

    aput-object v6, v13, v21

    invoke-static {v3, v13}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 633
    new-array v5, v4, [Ljava/lang/String;

    aput-object v11, v5, v27

    aput-object v10, v5, v25

    aput-object v9, v5, v28

    aput-object v8, v5, v22

    aput-object v7, v5, v20

    aput-object v6, v5, v21

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 634
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 635
    return v27

    .line 637
    :cond_16
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 639
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 640
    :cond_17
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    aput-object v11, v4, v27

    aput-object v10, v4, v25

    const/16 v28, 0x2

    aput-object v9, v4, v28

    aput-object v8, v4, v22

    aput-object v7, v4, v20

    aput-object v6, v4, v21

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_17

    .line 642
    :cond_18
    const-string v4, "sarcasm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 644
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 645
    :cond_19
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v27

    const-string v5, "b"

    aput-object v5, v4, v25

    const-string v5, "big"

    const/16 v28, 0x2

    aput-object v5, v4, v28

    const-string v5, "code"

    aput-object v5, v4, v22

    const-string v5, "em"

    aput-object v5, v4, v20

    const-string v5, "font"

    aput-object v5, v4, v21

    const-string v5, "i"

    const/16 v24, 0x6

    aput-object v5, v4, v24

    const-string v5, "nobr"

    aput-object v5, v4, v17

    const-string v5, "s"

    aput-object v5, v4, v23

    const-string v5, "small"

    aput-object v5, v4, v16

    const-string v5, "strike"

    aput-object v5, v4, v19

    const-string v5, "strong"

    aput-object v5, v4, v18

    const-string v5, "tt"

    const/16 v6, 0xc

    aput-object v5, v4, v6

    const-string v5, "u"

    const/16 v6, 0xd

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 649
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2b

    .line 650
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 651
    .local v5, "formatEl":Lorg/jsoup/nodes/Element;
    if-nez v5, :cond_1a

    .line 652
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v6

    return v6

    .line 653
    :cond_1a
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 654
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 655
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 656
    return v25

    .line 657
    :cond_1b
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 658
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 659
    return v27

    .line 660
    :cond_1c
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-eq v6, v5, :cond_1d

    .line 661
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 663
    :cond_1d
    const/4 v6, 0x0

    .line 664
    .local v6, "furthestBlock":Lorg/jsoup/nodes/Element;
    const/4 v7, 0x0

    .line 665
    .local v7, "commonAncestor":Lorg/jsoup/nodes/Element;
    const/4 v8, 0x0

    .line 666
    .local v8, "seenFormattingElement":Z
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v9

    .line 669
    .local v9, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    const/4 v10, 0x0

    .local v10, "si":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v10, v11, :cond_20

    const/16 v11, 0x40

    if-ge v10, v11, :cond_20

    .line 670
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 671
    .local v11, "el":Lorg/jsoup/nodes/Element;
    if-ne v11, v5, :cond_1e

    .line 672
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v9, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 673
    const/4 v8, 0x1

    goto :goto_3

    .line 674
    :cond_1e
    if-eqz v8, :cond_1f

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 675
    move-object v6, v11

    .line 676
    goto :goto_4

    .line 669
    .end local v11    # "el":Lorg/jsoup/nodes/Element;
    :cond_1f
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 679
    .end local v10    # "si":I
    :cond_20
    :goto_4
    if-nez v6, :cond_21

    .line 680
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 682
    return v25

    .line 687
    :cond_21
    move-object v10, v6

    .line 688
    .local v10, "node":Lorg/jsoup/nodes/Element;
    move-object v11, v6

    .line 690
    .local v11, "lastNode":Lorg/jsoup/nodes/Element;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    const/4 v14, 0x3

    if-ge v13, v14, :cond_26

    .line 691
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 692
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v10

    .line 693
    :cond_22
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 694
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 695
    move/from16 v16, v4

    goto :goto_6

    .line 696
    :cond_23
    if-ne v10, v5, :cond_24

    .line 697
    move/from16 v16, v4

    goto :goto_7

    .line 699
    :cond_24
    new-instance v14, Lorg/jsoup/nodes/Element;

    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v15

    move/from16 v16, v4

    .end local v4    # "i":I
    .local v16, "i":I
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v15, v4}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 700
    .local v14, "replacement":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v10, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 701
    invoke-virtual {v2, v10, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 702
    move-object v4, v14

    .line 704
    .end local v10    # "node":Lorg/jsoup/nodes/Element;
    .local v4, "node":Lorg/jsoup/nodes/Element;
    nop

    .line 708
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v10

    if-eqz v10, :cond_25

    .line 709
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->remove()V

    .line 710
    :cond_25
    invoke-virtual {v4, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 712
    move-object v10, v4

    move-object v11, v10

    .line 690
    .end local v4    # "node":Lorg/jsoup/nodes/Element;
    .end local v14    # "replacement":Lorg/jsoup/nodes/Element;
    .restart local v10    # "node":Lorg/jsoup/nodes/Element;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/16 v22, 0x3

    goto :goto_5

    .end local v16    # "i":I
    .local v4, "i":I
    :cond_26
    move/from16 v16, v4

    .line 715
    .end local v4    # "i":I
    .end local v13    # "j":I
    .restart local v16    # "i":I
    :goto_7
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/String;

    const-string v13, "table"

    aput-object v13, v14, v27

    const-string v13, "tbody"

    aput-object v13, v14, v25

    const-string v13, "tfoot"

    const/16 v28, 0x2

    aput-object v13, v14, v28

    const-string v13, "thead"

    const/16 v22, 0x3

    aput-object v13, v14, v22

    const-string v13, "tr"

    aput-object v13, v14, v20

    invoke-static {v4, v14}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 716
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 717
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->remove()V

    .line 718
    :cond_27
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    goto :goto_8

    .line 720
    :cond_28
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 721
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->remove()V

    .line 722
    :cond_29
    invoke-virtual {v7, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 725
    :goto_8
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-static {v3}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v13

    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 726
    .local v4, "adopter":Lorg/jsoup/nodes/Element;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v14

    new-array v14, v14, [Lorg/jsoup/nodes/Node;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lorg/jsoup/nodes/Node;

    .line 727
    .local v13, "childNodes":[Lorg/jsoup/nodes/Node;
    move-object v14, v13

    .local v14, "arr$":[Lorg/jsoup/nodes/Node;
    array-length v15, v14

    .local v15, "len$":I
    const/16 v17, 0x0

    move-object/from16 v18, v7

    move/from16 v7, v17

    .local v7, "i$":I
    .local v18, "commonAncestor":Lorg/jsoup/nodes/Element;
    :goto_9
    if-ge v7, v15, :cond_2a

    move/from16 v17, v7

    .end local v7    # "i$":I
    .local v17, "i$":I
    aget-object v7, v14, v17

    .line 728
    .local v7, "childNode":Lorg/jsoup/nodes/Node;
    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 727
    .end local v7    # "childNode":Lorg/jsoup/nodes/Node;
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "i$":I
    .local v7, "i$":I
    goto :goto_9

    :cond_2a
    move/from16 v17, v7

    .line 730
    .end local v7    # "i$":I
    .end local v14    # "arr$":[Lorg/jsoup/nodes/Node;
    .end local v15    # "len$":I
    invoke-virtual {v6, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 731
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 733
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 734
    invoke-virtual {v2, v6, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 649
    .end local v4    # "adopter":Lorg/jsoup/nodes/Element;
    .end local v5    # "formatEl":Lorg/jsoup/nodes/Element;
    .end local v6    # "furthestBlock":Lorg/jsoup/nodes/Element;
    .end local v8    # "seenFormattingElement":Z
    .end local v9    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    .end local v10    # "node":Lorg/jsoup/nodes/Element;
    .end local v11    # "lastNode":Lorg/jsoup/nodes/Element;
    .end local v13    # "childNodes":[Lorg/jsoup/nodes/Node;
    .end local v18    # "commonAncestor":Lorg/jsoup/nodes/Element;
    add-int/lit8 v4, v16, 0x1

    const/16 v21, 0x5

    const/16 v22, 0x3

    const/16 v23, 0x8

    .end local v16    # "i":I
    .local v4, "i":I
    goto/16 :goto_1

    :cond_2b
    move/from16 v16, v4

    .end local v4    # "i":I
    goto/16 :goto_17

    .line 736
    :cond_2c
    const/4 v14, 0x3

    new-array v4, v14, [Ljava/lang/String;

    const-string v5, "applet"

    aput-object v5, v4, v27

    const-string v5, "marquee"

    aput-object v5, v4, v25

    const-string v5, "object"

    const/16 v28, 0x2

    aput-object v5, v4, v28

    invoke-static {v3, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 737
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 738
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 739
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 740
    return v27

    .line 742
    :cond_2d
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 743
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 744
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 745
    :cond_2e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_17

    .line 748
    :cond_2f
    const-string v4, "br"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 749
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 750
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    const-string v5, "br"

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 751
    return v27

    .line 753
    :cond_30
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    return v4

    .line 273
    .end local v3    # "name":Ljava/lang/String;
    .end local v12    # "endTag":Lorg/jsoup/parser/Token$EndTag;
    .end local v26    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :pswitch_2
    const/16 v27, 0x0

    invoke-virtual {v1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 274
    .local v3, "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v12

    .line 275
    .local v12, "name":Ljava/lang/String;
    const-string v14, "html"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 276
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/helper/DescendableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 279
    .local v4, "html":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Attribute;

    .line 280
    .local v6, "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 281
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    .end local v6    # "attribute":Lorg/jsoup/nodes/Attribute;
    :cond_31
    goto :goto_a

    .line 283
    .end local v4    # "html":Lorg/jsoup/nodes/Element;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_32
    goto/16 :goto_17

    :cond_33
    move-object/from16 v26, v4

    const/16 v14, 0xa

    new-array v4, v14, [Ljava/lang/String;

    const-string v14, "base"

    aput-object v14, v4, v27

    const-string v14, "basefont"

    aput-object v14, v4, v25

    const-string v14, "bgsound"

    const/16 v28, 0x2

    aput-object v14, v4, v28

    const-string v14, "command"

    const/16 v22, 0x3

    aput-object v14, v4, v22

    const-string v14, "link"

    aput-object v14, v4, v20

    const-string v14, "meta"

    const/16 v21, 0x5

    aput-object v14, v4, v21

    const-string v14, "noframes"

    const/16 v24, 0x6

    aput-object v14, v4, v24

    const-string v14, "script"

    aput-object v14, v4, v17

    const-string v14, "style"

    const/16 v23, 0x8

    aput-object v14, v4, v23

    const-string v14, "title"

    aput-object v14, v4, v16

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 284
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v4

    return v4

    .line 285
    :cond_34
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 286
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 287
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v4

    .line 288
    .local v4, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_38

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_35

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_c

    .line 292
    :cond_35
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 293
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 294
    .local v5, "body":Lorg/jsoup/nodes/Element;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Attribute;

    .line 295
    .local v7, "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 296
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    .end local v7    # "attribute":Lorg/jsoup/nodes/Attribute;
    :cond_36
    goto :goto_b

    .line 299
    .end local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    .end local v5    # "body":Lorg/jsoup/nodes/Element;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_37
    goto/16 :goto_17

    .line 290
    .restart local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_38
    :goto_c
    const/16 v27, 0x0

    return v27

    .line 299
    .end local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_39
    const-string v4, "frameset"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 300
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 301
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v4

    .line 302
    .restart local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3e

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_3a

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_e

    .line 305
    :cond_3a
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 306
    const/16 v27, 0x0

    return v27

    .line 308
    :cond_3b
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 309
    .local v5, "second":Lorg/jsoup/nodes/Element;
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 310
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->remove()V

    .line 312
    :cond_3c
    :goto_d
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3d

    .line 313
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_d

    .line 314
    :cond_3d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 315
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 317
    .end local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    .end local v5    # "second":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    .line 304
    .restart local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_3e
    :goto_e
    const/16 v27, 0x0

    return v27

    .line 317
    .end local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_3f
    const/16 v27, 0x0

    const/16 v4, 0x16

    new-array v4, v4, [Ljava/lang/String;

    aput-object v26, v4, v27

    const-string v13, "article"

    const/16 v25, 0x1

    aput-object v13, v4, v25

    const-string v13, "aside"

    const/16 v28, 0x2

    aput-object v13, v4, v28

    const-string v13, "blockquote"

    const/16 v22, 0x3

    aput-object v13, v4, v22

    const-string v13, "center"

    aput-object v13, v4, v20

    const-string v13, "details"

    const/16 v21, 0x5

    aput-object v13, v4, v21

    const-string v13, "dir"

    const/16 v24, 0x6

    aput-object v13, v4, v24

    const-string v13, "div"

    aput-object v13, v4, v17

    const-string v13, "dl"

    const/16 v23, 0x8

    aput-object v13, v4, v23

    const-string v13, "fieldset"

    aput-object v13, v4, v16

    const-string v13, "figcaption"

    const/16 v19, 0xa

    aput-object v13, v4, v19

    const-string v13, "figure"

    aput-object v13, v4, v18

    const-string v13, "footer"

    const/16 v14, 0xc

    aput-object v13, v4, v14

    const-string v13, "header"

    const/16 v14, 0xd

    aput-object v13, v4, v14

    const-string v13, "hgroup"

    const/16 v14, 0xe

    aput-object v13, v4, v14

    const-string v13, "menu"

    const/16 v14, 0xf

    aput-object v13, v4, v14

    const-string v13, "nav"

    const/16 v14, 0x10

    aput-object v13, v4, v14

    const-string v13, "ol"

    const/16 v14, 0x11

    aput-object v13, v4, v14

    const/16 v13, 0x12

    aput-object v15, v4, v13

    const-string v13, "section"

    const/16 v14, 0x13

    aput-object v13, v4, v14

    const-string v13, "summary"

    const/16 v14, 0x14

    aput-object v13, v4, v14

    const-string v13, "ul"

    const/16 v14, 0x15

    aput-object v13, v4, v14

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 321
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 322
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 324
    :cond_40
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 325
    :cond_41
    const/4 v4, 0x6

    new-array v13, v4, [Ljava/lang/String;

    const/16 v27, 0x0

    aput-object v11, v13, v27

    const/16 v25, 0x1

    aput-object v10, v13, v25

    const/16 v28, 0x2

    aput-object v9, v13, v28

    const/16 v22, 0x3

    aput-object v8, v13, v22

    aput-object v7, v13, v20

    const/16 v21, 0x5

    aput-object v6, v13, v21

    invoke-static {v12, v13}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 326
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 327
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 329
    :cond_42
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/16 v27, 0x0

    aput-object v11, v5, v27

    const/16 v25, 0x1

    aput-object v10, v5, v25

    const/16 v28, 0x2

    aput-object v9, v5, v28

    const/16 v22, 0x3

    aput-object v8, v5, v22

    aput-object v7, v5, v20

    const/16 v21, 0x5

    aput-object v6, v5, v21

    invoke-static {v4, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 330
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 331
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 333
    :cond_43
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 334
    :cond_44
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "pre"

    const/16 v27, 0x0

    aput-object v6, v4, v27

    const-string v6, "listing"

    const/16 v25, 0x1

    aput-object v6, v4, v25

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 335
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 336
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 338
    :cond_45
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 340
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 341
    :cond_46
    const-string v4, "form"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 342
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 343
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 344
    const/16 v27, 0x0

    return v27

    .line 346
    :cond_47
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 347
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 349
    :cond_48
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 350
    .local v4, "form":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    .line 351
    .end local v4    # "form":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_49
    const-string v4, "li"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 352
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 353
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v4

    .line 354
    .local v4, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v25, 0x1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_f
    if-lez v5, :cond_4c

    .line 355
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 356
    .local v6, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "li"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 357
    new-instance v7, Lorg/jsoup/parser/Token$EndTag;

    const-string v8, "li"

    invoke-direct {v7, v8}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 358
    goto :goto_10

    .line 360
    :cond_4a
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/String;

    const/16 v27, 0x0

    aput-object v26, v8, v27

    const-string v9, "div"

    const/16 v25, 0x1

    aput-object v9, v8, v25

    const/16 v28, 0x2

    aput-object v15, v8, v28

    invoke-static {v7, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 361
    goto :goto_10

    .line 354
    .end local v6    # "el":Lorg/jsoup/nodes/Element;
    :cond_4b
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    .line 363
    .end local v5    # "i":I
    :cond_4c
    :goto_10
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 364
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 366
    :cond_4d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 367
    .end local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    goto/16 :goto_17

    :cond_4e
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "dd"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "dt"

    const/16 v25, 0x1

    aput-object v6, v4, v25

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 368
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 369
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v4

    .line 370
    .restart local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "i":I
    :goto_11
    if-lez v5, :cond_51

    .line 371
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 372
    .restart local v6    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const-string v8, "dd"

    const/16 v27, 0x0

    aput-object v8, v9, v27

    const-string v8, "dt"

    const/16 v25, 0x1

    aput-object v8, v9, v25

    invoke-static {v7, v9}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 373
    new-instance v7, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 374
    goto :goto_12

    .line 376
    :cond_4f
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/String;

    const/16 v27, 0x0

    aput-object v26, v8, v27

    const-string v9, "div"

    const/16 v25, 0x1

    aput-object v9, v8, v25

    const/16 v28, 0x2

    aput-object v15, v8, v28

    invoke-static {v7, v8}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 377
    goto :goto_12

    .line 370
    .end local v6    # "el":Lorg/jsoup/nodes/Element;
    :cond_50
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    .line 379
    .end local v5    # "i":I
    :cond_51
    :goto_12
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 380
    new-instance v5, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v5, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 382
    :cond_52
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 383
    .end local v4    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    goto/16 :goto_17

    :cond_53
    const-string v4, "plaintext"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 384
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 385
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 387
    :cond_54
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 388
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v5, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_17

    .line 389
    :cond_55
    const-string v4, "button"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 390
    const-string v4, "button"

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 392
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 393
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    const-string v5, "button"

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 394
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_17

    .line 396
    :cond_56
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 397
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 398
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 400
    :cond_57
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 401
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 402
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 403
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 406
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 407
    .local v4, "remainingA":Lorg/jsoup/nodes/Element;
    if-eqz v4, :cond_58

    .line 408
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 409
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 412
    .end local v4    # "remainingA":Lorg/jsoup/nodes/Element;
    :cond_58
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 413
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 414
    .local v4, "a":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 415
    .end local v4    # "a":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_59
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "b"

    const/16 v27, 0x0

    aput-object v5, v4, v27

    const-string v5, "big"

    const/16 v25, 0x1

    aput-object v5, v4, v25

    const-string v5, "code"

    const/16 v28, 0x2

    aput-object v5, v4, v28

    const-string v5, "em"

    const/16 v22, 0x3

    aput-object v5, v4, v22

    const-string v5, "font"

    aput-object v5, v4, v20

    const-string v5, "i"

    const/16 v21, 0x5

    aput-object v5, v4, v21

    const-string v5, "s"

    const/16 v24, 0x6

    aput-object v5, v4, v24

    const-string v5, "small"

    aput-object v5, v4, v17

    const-string v5, "strike"

    const/16 v23, 0x8

    aput-object v5, v4, v23

    const-string v5, "strong"

    aput-object v5, v4, v16

    const-string v5, "tt"

    const/16 v19, 0xa

    aput-object v5, v4, v19

    const-string v5, "u"

    aput-object v5, v4, v18

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 417
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 418
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 419
    .local v4, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 420
    .end local v4    # "el":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_5a
    const-string v4, "nobr"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 421
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 422
    const-string v4, "nobr"

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 423
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 424
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    const-string v5, "nobr"

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 425
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 427
    :cond_5b
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 428
    .restart local v4    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 429
    .end local v4    # "el":Lorg/jsoup/nodes/Element;
    goto/16 :goto_17

    :cond_5c
    const/4 v14, 0x3

    new-array v4, v14, [Ljava/lang/String;

    const-string v5, "applet"

    const/16 v27, 0x0

    aput-object v5, v4, v27

    const-string v5, "marquee"

    const/16 v25, 0x1

    aput-object v5, v4, v25

    const-string v5, "object"

    const/16 v28, 0x2

    aput-object v5, v4, v28

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 430
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 431
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 432
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 433
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 434
    :cond_5d
    const-string v4, "table"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 435
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v4

    sget-object v5, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v4, v5, :cond_5e

    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 436
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 438
    :cond_5e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 439
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 440
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 441
    :cond_5f
    const/4 v5, 0x0

    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/String;

    const-string v4, "area"

    aput-object v4, v6, v5

    const-string v4, "br"

    const/16 v25, 0x1

    aput-object v4, v6, v25

    const-string v4, "embed"

    const/16 v28, 0x2

    aput-object v4, v6, v28

    const-string v4, "img"

    const/16 v22, 0x3

    aput-object v4, v6, v22

    const-string v4, "keygen"

    aput-object v4, v6, v20

    const-string v4, "wbr"

    const/16 v21, 0x5

    aput-object v4, v6, v21

    invoke-static {v12, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 442
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 443
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 444
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 445
    :cond_60
    const-string v4, "input"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 446
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 447
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 448
    .restart local v4    # "el":Lorg/jsoup/nodes/Element;
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 449
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 450
    .end local v4    # "el":Lorg/jsoup/nodes/Element;
    :cond_61
    goto/16 :goto_17

    :cond_62
    const/4 v5, 0x0

    const/4 v14, 0x3

    new-array v4, v14, [Ljava/lang/String;

    const-string v6, "param"

    aput-object v6, v4, v5

    const-string v5, "source"

    const/16 v25, 0x1

    aput-object v5, v4, v25

    const-string v5, "track"

    const/16 v28, 0x2

    aput-object v5, v4, v28

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 451
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 452
    :cond_63
    const-string v4, "hr"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 453
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 454
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 456
    :cond_64
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 457
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_17

    .line 458
    :cond_65
    const-string v4, "image"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 460
    const-string v4, "img"

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    .line 461
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v4

    return v4

    .line 462
    :cond_66
    const-string v4, "isindex"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 464
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 465
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 466
    const/16 v27, 0x0

    return v27

    .line 468
    :cond_67
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v4}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 469
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    const-string v5, "form"

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 470
    iget-object v4, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 471
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 472
    .local v4, "form":Lorg/jsoup/nodes/Element;
    iget-object v5, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v6, "action"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v4, v6, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 474
    .end local v4    # "form":Lorg/jsoup/nodes/Element;
    :cond_68
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    const-string v5, "hr"

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 475
    new-instance v4, Lorg/jsoup/parser/Token$StartTag;

    const-string v5, "label"

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 477
    iget-object v4, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "prompt"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    iget-object v4, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "prompt"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_69
    const-string v4, "This is a searchable index. Enter search keywords: "

    .line 481
    .local v4, "prompt":Ljava/lang/String;
    :goto_13
    new-instance v5, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v5, v4}, Lorg/jsoup/parser/Token$Character;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 484
    new-instance v5, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v5}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 485
    .local v5, "inputAttribs":Lorg/jsoup/nodes/Attributes;
    iget-object v6, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Attribute;

    .line 486
    .local v7, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x3

    new-array v9, v14, [Ljava/lang/String;

    const-string v10, "name"

    const/16 v27, 0x0

    aput-object v10, v9, v27

    const-string v10, "action"

    const/16 v25, 0x1

    aput-object v10, v9, v25

    const-string v10, "prompt"

    const/16 v28, 0x2

    aput-object v10, v9, v28

    invoke-static {v8, v9}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 487
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    .end local v7    # "attr":Lorg/jsoup/nodes/Attribute;
    :cond_6a
    goto :goto_14

    .line 489
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_6b
    const-string v6, "name"

    const-string v7, "isindex"

    invoke-virtual {v5, v6, v7}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v6, Lorg/jsoup/parser/Token$StartTag;

    const-string v7, "input"

    invoke-direct {v6, v7, v5}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 491
    new-instance v6, Lorg/jsoup/parser/Token$EndTag;

    const-string v7, "label"

    invoke-direct {v6, v7}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 492
    new-instance v6, Lorg/jsoup/parser/Token$StartTag;

    const-string v7, "hr"

    invoke-direct {v6, v7}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 493
    new-instance v6, Lorg/jsoup/parser/Token$EndTag;

    const-string v7, "form"

    invoke-direct {v6, v7}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 494
    .end local v4    # "prompt":Ljava/lang/String;
    .end local v5    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    goto/16 :goto_17

    :cond_6c
    const-string v4, "textarea"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 495
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 497
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v5, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 498
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 499
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 500
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_17

    .line 501
    :cond_6d
    const-string v4, "xmp"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 502
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 503
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v4, v15}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 505
    :cond_6e
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 506
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 507
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 508
    :cond_6f
    const/4 v5, 0x0

    const-string v4, "iframe"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 509
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 510
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 511
    :cond_70
    const-string v4, "noembed"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 513
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_17

    .line 514
    :cond_71
    const-string v4, "select"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 515
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 516
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 517
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 519
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v4

    .line 520
    .local v4, "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    goto :goto_15

    .line 523
    :cond_72
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_16

    .line 521
    :cond_73
    :goto_15
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 524
    .end local v4    # "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    :goto_16
    goto/16 :goto_17

    :cond_74
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "option"

    const/16 v27, 0x0

    aput-object v5, v4, v27

    const-string v5, "optgroup"

    invoke-static {v5, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 525
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "option"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 526
    new-instance v4, Lorg/jsoup/parser/Token$EndTag;

    const-string v5, "option"

    invoke-direct {v4, v5}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 527
    :cond_75
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 528
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 529
    :cond_76
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "rt"

    const/16 v27, 0x0

    aput-object v5, v4, v27

    const-string v5, "rp"

    invoke-static {v5, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 530
    const-string v4, "ruby"

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 531
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 532
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ruby"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 533
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 534
    const-string v4, "ruby"

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 536
    :cond_77
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_17

    .line 538
    :cond_78
    const-string v4, "math"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 539
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 541
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 542
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v4}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto :goto_17

    .line 543
    :cond_79
    const-string v4, "svg"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 544
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 546
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 547
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v4}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto :goto_17

    .line 548
    :cond_7a
    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "caption"

    const/16 v27, 0x0

    aput-object v5, v4, v27

    const-string v5, "col"

    const/16 v25, 0x1

    aput-object v5, v4, v25

    const-string v5, "colgroup"

    const/16 v28, 0x2

    aput-object v5, v4, v28

    const-string v5, "frame"

    const/16 v22, 0x3

    aput-object v5, v4, v22

    const-string v5, "head"

    aput-object v5, v4, v20

    const-string v5, "tbody"

    const/16 v21, 0x5

    aput-object v5, v4, v21

    const-string v5, "td"

    const/16 v24, 0x6

    aput-object v5, v4, v24

    const-string v5, "tfoot"

    aput-object v5, v4, v17

    const-string v5, "th"

    const/16 v23, 0x8

    aput-object v5, v4, v23

    const-string v5, "thead"

    aput-object v5, v4, v16

    const-string v5, "tr"

    const/16 v19, 0xa

    aput-object v5, v4, v19

    invoke-static {v12, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 550
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 551
    const/16 v27, 0x0

    return v27

    .line 553
    :cond_7b
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 554
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 556
    goto :goto_17

    .line 269
    .end local v3    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    .end local v12    # "name":Ljava/lang/String;
    :pswitch_3
    const/16 v27, 0x0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 270
    return v27

    .line 265
    :pswitch_4
    invoke-virtual {v1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 266
    nop

    .line 762
    :cond_7c
    :goto_17
    const/16 v25, 0x1

    return v25

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

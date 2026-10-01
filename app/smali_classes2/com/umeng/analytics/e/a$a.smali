.class Lcom/umeng/analytics/e/a$a;
.super Lcom/umeng/a/a/a/c/c;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/a/a/a/c/c<",
        "Lcom/umeng/analytics/e/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Lcom/umeng/a/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/e/a$1;)V
    .locals 0

    .line 605
    invoke-direct {p0}, Lcom/umeng/analytics/e/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 605
    check-cast p2, Lcom/umeng/analytics/e/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/e/a$a;->b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V

    return-void
.end method

.method public a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 609
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->j()Lcom/umeng/a/a/a/b/m;

    .line 612
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->l()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    .line 613
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-nez v1, :cond_3

    .line 614
    nop

    .line 694
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->k()V

    .line 697
    invoke-virtual {p2}, Lcom/umeng/analytics/e/a;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 700
    invoke-virtual {p2}, Lcom/umeng/analytics/e/a;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 703
    invoke-virtual {p2}, Lcom/umeng/analytics/e/a;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 706
    invoke-virtual {p2}, Lcom/umeng/analytics/e/a;->F()V

    .line 707
    return-void

    .line 704
    :cond_0
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 701
    :cond_1
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 698
    :cond_2
    new-instance p1, Lcom/umeng/a/a/a/b/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/a/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 616
    :cond_3
    iget-short v1, v0, Lcom/umeng/a/a/a/b/c;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 690
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    goto/16 :goto_1

    .line 682
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_4

    .line 683
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    .line 684
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->i(Z)V

    goto/16 :goto_1

    .line 686
    :cond_4
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 688
    goto/16 :goto_1

    .line 674
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_5

    .line 675
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    .line 676
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->h(Z)V

    goto/16 :goto_1

    .line 678
    :cond_5
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 680
    goto/16 :goto_1

    .line 666
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_6

    .line 667
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    .line 668
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->g(Z)V

    goto/16 :goto_1

    .line 670
    :cond_6
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 672
    goto/16 :goto_1

    .line 658
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_7

    .line 659
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/e/a;->f:I

    .line 660
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->f(Z)V

    goto/16 :goto_1

    .line 662
    :cond_7
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 664
    goto :goto_1

    .line 650
    :pswitch_4
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_8

    .line 651
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/e/a;->e:I

    .line 652
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->e(Z)V

    goto :goto_1

    .line 654
    :cond_8
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 656
    goto :goto_1

    .line 642
    :pswitch_5
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v2, :cond_9

    .line 643
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/e/a;->d:I

    .line 644
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->d(Z)V

    goto :goto_1

    .line 646
    :cond_9
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 648
    goto :goto_1

    .line 634
    :pswitch_6
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_a

    .line 635
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    .line 636
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->c(Z)V

    goto :goto_1

    .line 638
    :cond_a
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 640
    goto :goto_1

    .line 626
    :pswitch_7
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_b

    .line 627
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    .line 628
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->b(Z)V

    goto :goto_1

    .line 630
    :cond_b
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 632
    goto :goto_1

    .line 618
    :pswitch_8
    iget-byte v1, v0, Lcom/umeng/a/a/a/b/c;->b:B

    if-ne v1, v3, :cond_c

    .line 619
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    .line 620
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/e/a;->a(Z)V

    goto :goto_1

    .line 622
    :cond_c
    iget-byte v0, v0, Lcom/umeng/a/a/a/b/c;->b:B

    invoke-static {p1, v0}, Lcom/umeng/a/a/a/b/k;->a(Lcom/umeng/a/a/a/b/h;B)V

    .line 624
    nop

    .line 692
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/a/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 605
    check-cast p2, Lcom/umeng/analytics/e/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/e/a$a;->a(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V

    return-void
.end method

.method public b(Lcom/umeng/a/a/a/b/h;Lcom/umeng/analytics/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/a/a/a/j;
        }
    .end annotation

    .line 710
    invoke-virtual {p2}, Lcom/umeng/analytics/e/a;->F()V

    .line 712
    invoke-static {}, Lcom/umeng/analytics/e/a;->G()Lcom/umeng/a/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/m;)V

    .line 713
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 714
    invoke-static {}, Lcom/umeng/analytics/e/a;->H()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 715
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 718
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 719
    invoke-static {}, Lcom/umeng/analytics/e/a;->I()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 720
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 723
    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 724
    invoke-static {}, Lcom/umeng/analytics/e/a;->J()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 725
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 728
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/e/a;->K()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 729
    iget v0, p2, Lcom/umeng/analytics/e/a;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 730
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 731
    invoke-static {}, Lcom/umeng/analytics/e/a;->L()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 732
    iget v0, p2, Lcom/umeng/analytics/e/a;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 733
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 734
    invoke-static {}, Lcom/umeng/analytics/e/a;->M()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 735
    iget v0, p2, Lcom/umeng/analytics/e/a;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(I)V

    .line 736
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 737
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 738
    invoke-static {}, Lcom/umeng/analytics/e/a;->N()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 739
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/nio/ByteBuffer;)V

    .line 740
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 742
    :cond_3
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 743
    invoke-static {}, Lcom/umeng/analytics/e/a;->O()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 744
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 747
    :cond_4
    iget-object v0, p2, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 748
    invoke-static {}, Lcom/umeng/analytics/e/a;->P()Lcom/umeng/a/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/a/b/h;->a(Lcom/umeng/a/a/a/b/c;)V

    .line 749
    iget-object p2, p2, Lcom/umeng/analytics/e/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/a/a/a/b/h;->a(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->c()V

    .line 752
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->d()V

    .line 753
    invoke-virtual {p1}, Lcom/umeng/a/a/a/b/h;->b()V

    .line 754
    return-void
.end method

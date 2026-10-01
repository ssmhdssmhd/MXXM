.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/network/PullXmlParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->loadDataFromXml(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

.field protected mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

.field protected mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

.field protected mlist:I

.field protected mm:I

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

.field final synthetic val$menuType:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    const/4 p2, -0x1

    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mlist:I

    .line 679
    iput p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mm:I

    .line 680
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 681
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 682
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 2

    .line 809
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity======endDocument"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 821
    :pswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 815
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 816
    goto :goto_0

    .line 818
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 819
    goto :goto_0

    .line 812
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 813
    nop

    .line 825
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public endFlag(Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 765
    const-string v0, "TVBackActivity======endFlag"

    const-string v1, "TVBackActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 767
    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mlist:I

    goto :goto_0

    .line 768
    :cond_0
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iput v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mm:I

    .line 770
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 795
    :pswitch_1
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmProgramlist()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    goto :goto_0

    .line 778
    :pswitch_2
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmChannelDatelist()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 784
    goto :goto_0

    .line 786
    :pswitch_3
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 793
    goto :goto_0

    .line 772
    :pswitch_4
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmchannellist()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChannelinfo.getChanneName()=="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 774
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->getChanneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iput-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 776
    nop

    .line 805
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public haveError(Lcom/shenma/tvlauncher/network/PullXmlParserError;)V
    .locals 2
    .param p1, "error"    # Lcom/shenma/tvlauncher/network/PullXmlParserError;

    .line 760
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity======haveError"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public startDocument()V
    .locals 2

    .line 739
    const-string v0, "TVBackActivity"

    const-string v1, "TVBackActivity======startDocument"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 751
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfputmProgramlist(Ljava/util/ArrayList;)V

    .line 752
    goto :goto_0

    .line 742
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfputmChannelDatelist(Ljava/util/ArrayList;)V

    .line 743
    goto :goto_0

    .line 745
    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfputmNowProgramlist(Ljava/util/ArrayList;)V

    .line 746
    goto :goto_0

    .line 748
    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfputmchannellist(Ljava/util/ArrayList;)V

    .line 749
    nop

    .line 756
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startFlag(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
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

    .line 693
    .local p2, "attribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 694
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mlist:I

    goto/16 :goto_0

    .line 695
    :cond_0
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iput v1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mm:I

    .line 697
    iget v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->val$menuType:I

    const-string/jumbo v1, "src"

    const-string v2, "list_src"

    const-string v3, "label"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 723
    :pswitch_1
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 724
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 725
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->getNameToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramName(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramUrl(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 728
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getTimeToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setTime(Ljava/lang/String;)V

    .line 729
    goto/16 :goto_0

    .line 706
    :pswitch_2
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 707
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 708
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 707
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->setChannelDate_label(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 710
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 709
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->setChannelDate_Url(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mchannelDateInfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;

    .line 712
    const-string v1, "date"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 711
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelDateInfo;->setChannelDate(Ljava/lang/String;)V

    .line 713
    goto :goto_0

    .line 715
    :pswitch_3
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 716
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 717
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/Utils;->getNameToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramName(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setProgramUrl(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mProgramInfo:Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 720
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getTimeToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->setTime(Ljava/lang/String;)V

    .line 721
    goto :goto_0

    .line 699
    :pswitch_4
    new-instance v0, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 700
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 701
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 700
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->setChanneName(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$13;->mChannelinfo:Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;

    .line 703
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 702
    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvback/domain/ChannelInfo;->setChanneUrl(Ljava/lang/String;)V

    .line 704
    nop

    .line 735
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public text(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TVBackActivity======text=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVBackActivity"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void
.end method

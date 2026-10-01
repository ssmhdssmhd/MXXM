.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;
.super Landroid/os/Handler;
.source "TVLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "TVLivePlayer"

    const/16 v2, 0xe

    const-string v3, "mProgramNews="

    const-string v4, "mProgramNews"

    const-string v5, "news.xml"

    const/4 v6, 0x2

    const-string v7, ""

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 218
    :sswitch_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const-string v1, "\u6b63\u5728\u4e3a\u60a8\u66f4\u65b0\u76f4\u64ad\u63d2\u4ef6!"

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 219
    goto/16 :goto_4

    .line 215
    :sswitch_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$minitIntent(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 216
    goto/16 :goto_4

    .line 346
    :sswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mshowLineToast(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    goto/16 :goto_4

    .line 238
    :sswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetepg_layout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    goto/16 :goto_4

    .line 316
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramNews(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmTimeOut(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    mul-long v3, v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    goto/16 :goto_4

    .line 323
    :sswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramPoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v0

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetliveData(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmClassPoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v3

    .line 324
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    if-ne v0, v2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v9}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmProgramPoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramPoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmProgramPoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetliveData(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;->getNetMediaList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmClassPoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    .line 330
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlesArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramPoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmCurrentMedia(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;)V

    .line 331
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v9}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmSourcePoint(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V

    .line 332
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    const-string v0, "LiveConstant.PLAY_NEXT...\u4e0d\u80fd\u64ad\u653e"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    sget v1, Lcom/shenma/tvlauncher/R$string;->play_next:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 335
    goto/16 :goto_4

    .line 306
    :sswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmTimeOut(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_7

    .line 307
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramNews(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetnewsString(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramNews(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 257
    :sswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;-><init>()V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 258
    invoke-virtual {v6}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->parseFileXml(Ljava/lang/Object;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;)V

    .line 260
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_name()Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string v3, "timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_name()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmTimeOut(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;J)V

    goto :goto_2

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetnewsString(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 272
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v4

    .line 274
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 275
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputnewsString(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;)V

    .line 261
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 279
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    goto/16 :goto_4

    .line 255
    :sswitch_8
    goto/16 :goto_4

    .line 282
    :sswitch_9
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;

    invoke-direct {v1}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;-><init>()V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    .line 283
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtopMainInterfaceParse;->parseFileXml(Ljava/lang/Object;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;)V

    .line 285
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetTVTYPE(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVLIVE_DIY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    .line 288
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const-string v3, "http://diy.vbohd.com/user_list_xml.php?user_id=10086"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    goto :goto_3

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgettvlive_server(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 292
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    const-string v3, "http://wephd.live.cctv1949.com/api_new/wephd.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    goto :goto_3

    .line 294
    :cond_5
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    .line 297
    :goto_3
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;

    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmEnterList(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/PtoPMainInterface;->getMainItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;

    .line 298
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/parsexml/MainItem;->getList_src()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;-><init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$LoadXMLThread;->start()V

    .line 304
    goto/16 :goto_4

    .line 243
    :sswitch_a
    sget-object v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 244
    sget-object v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, "position":I
    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2, v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$minitSelectChannle(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V

    .line 247
    .end local v0    # "position":I
    :cond_6
    sput-object v7, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramNum(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u9891\u9053"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyChanne="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->keyChanne:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    goto :goto_4

    .line 252
    :sswitch_b
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmProgramNum(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    goto :goto_4

    .line 235
    :sswitch_c
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmLeftLayout(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 236
    goto :goto_4

    .line 230
    :sswitch_d
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mswichLine(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;I)V

    .line 231
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v0, v0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfgetDELAY_TIME()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    goto :goto_4

    .line 221
    :sswitch_e
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    sget v1, Lcom/shenma/tvlauncher/R$string;->load_err:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->showDialog(I)V

    .line 222
    goto :goto_4

    .line 228
    :sswitch_f
    goto :goto_4

    .line 224
    :sswitch_10
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$minitUI(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 225
    goto :goto_4

    .line 343
    :sswitch_11
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mcloseLineDialog(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 344
    goto :goto_4

    .line 340
    :sswitch_12
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetrl_progressBar(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    goto :goto_4

    .line 337
    :sswitch_13
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$1;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetrl_progressBar(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    nop

    .line 349
    :cond_7
    :goto_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 350
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_12
        0x3 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_c
        0x9 -> :sswitch_b
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_8
        0xd -> :sswitch_7
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_0
    .end sparse-switch
.end method

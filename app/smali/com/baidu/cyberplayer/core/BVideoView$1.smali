.class Lcom/baidu/cyberplayer/core/BVideoView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/BVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/core/BVideoView;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/core/BVideoView;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 583
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/4 v2, -0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 585
    :sswitch_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;I)V

    .line 586
    goto/16 :goto_3

    .line 775
    :sswitch_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 776
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->d(Lcom/baidu/cyberplayer/core/BVideoView;)V

    .line 777
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->postInvalidate()V

    goto/16 :goto_3

    .line 768
    :sswitch_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 769
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->c(Lcom/baidu/cyberplayer/core/BVideoView;)V

    .line 771
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->postInvalidate()V

    goto/16 :goto_3

    .line 761
    :sswitch_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 762
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)V

    .line 763
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->postInvalidate()V

    goto/16 :goto_3

    .line 753
    :sswitch_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 755
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)V

    .line 757
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->postInvalidate()V

    goto/16 :goto_3

    .line 743
    :sswitch_5
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ak_checke_state"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 747
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->postInvalidate()V

    goto/16 :goto_3

    .line 736
    :sswitch_6
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 737
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u9274\u6743\u5931\u8d25\uff0c\u8bf7\u5148\u6ce8\u518c\u6210\u4e3a\u767e\u5ea6\u5f00\u653e\u4e91\u7528\u6237!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->postInvalidate()V

    goto/16 :goto_3

    .line 729
    :sswitch_7
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 730
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Access Key\u4e3a\u7a7a\uff0c\u8bf7\u8c03\u7528setAK:\u8bbe\u7f6eAccess Key!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->postInvalidate()V

    goto/16 :goto_3

    .line 724
    :sswitch_8
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->d(Lcom/baidu/cyberplayer/core/BVideoView;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 725
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto/16 :goto_3

    .line 709
    :sswitch_9
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->d(Lcom/baidu/cyberplayer/core/BVideoView;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-nez v0, :cond_13

    .line 710
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->e(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v0

    if-ne v0, v4, :cond_13

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 713
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 714
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v1, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 715
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 716
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->a(Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    goto/16 :goto_3

    .line 703
    :sswitch_a
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 704
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->releaseSubtitle()V

    goto/16 :goto_3

    .line 604
    :sswitch_b
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v0

    if-lez v0, :cond_13

    .line 605
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 606
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;I)V

    .line 607
    goto/16 :goto_3

    .line 599
    :sswitch_c
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Ljava/lang/String;)V

    .line 600
    goto/16 :goto_3

    .line 588
    :sswitch_d
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/core/b$a;

    sget-object v1, Lcom/baidu/cyberplayer/core/b$a;->a:Lcom/baidu/cyberplayer/core/b$a;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 591
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v4}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 592
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v4}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 593
    goto/16 :goto_3

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 595
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 597
    goto/16 :goto_3

    .line 611
    :sswitch_e
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 612
    return-void

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    if-nez v0, :cond_4

    .line 616
    goto/16 :goto_3

    .line 619
    :cond_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/core/b;->c()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;I)I

    .line 620
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->b()D

    move-result-wide v0

    double-to-long v0, v0

    .line 621
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 622
    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView$OnPositionUpdateListener;->onPositionUpdate(J)Z

    .line 625
    :cond_5
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->getIsDragging()Z

    move-result v0

    if-nez v0, :cond_7

    .line 627
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 628
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BMediaController;->setMax(I)V

    .line 629
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->c(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 630
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/BMediaController;->hide()V

    .line 631
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;I)I

    goto :goto_1

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v0

    if-lez v0, :cond_7

    .line 633
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->a()D

    move-result-wide v0

    double-to-int v0, v0

    .line 634
    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;I)V

    .line 639
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->d(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 641
    goto/16 :goto_3

    .line 643
    :sswitch_f
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 644
    return-void

    .line 646
    :cond_8
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b$c;

    move-result-object v0

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_a

    .line 647
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 648
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 649
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 650
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 651
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 653
    :cond_9
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 655
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/b;->d()V

    .line 656
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/b;)Lcom/baidu/cyberplayer/core/b;

    goto :goto_2

    .line 658
    :cond_a
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b$c;

    move-result-object v0

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->c:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_d

    .line 659
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 661
    :cond_b
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 662
    :cond_c
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v0, v0, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 666
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 667
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BMediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/BMediaController;->UpdateUI(Lcom/baidu/cyberplayer/core/b$c;)V

    goto/16 :goto_3

    .line 670
    :sswitch_10
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b$c;

    move-result-object v0

    sget-object v1, Lcom/baidu/cyberplayer/core/b$c;->a:Lcom/baidu/cyberplayer/core/b$c;

    if-ne v0, v1, :cond_13

    .line 671
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v6, Lcom/baidu/cyberplayer/core/b;

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/baidu/cyberplayer/core/BVideoView;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/baidu/cyberplayer/core/BVideoView;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v11, v1, Lcom/baidu/cyberplayer/core/BVideoView;->a:Landroid/os/Handler;

    invoke-direct/range {v6 .. v11}, Lcom/baidu/cyberplayer/core/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0, v6}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/b;)Lcom/baidu/cyberplayer/core/b;

    .line 673
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->a(Lcom/baidu/cyberplayer/core/b$b;)V

    .line 674
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->c(Lcom/baidu/cyberplayer/core/BVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->b(Z)V

    .line 675
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->e(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->a(I)V

    .line 676
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    invoke-static {}, Lcom/baidu/cyberplayer/core/BVideoView;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->d(I)V

    .line 678
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 679
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v4}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Z)V

    .line 680
    :cond_f
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    if-nez v0, :cond_10

    .line 681
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v1, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v3}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    .line 682
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 684
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 685
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/core/CyberPlayerSurface;->setZOrderMediaOverlay(Z)V

    .line 691
    const-string v0, "CyberPlayerVideoView"

    const-string v1, "mMediaSurface setZOrderMediaOverlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_10
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->e(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v0

    if-eq v0, v4, :cond_11

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->e(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->e(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 696
    :cond_11
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->f(Lcom/baidu/cyberplayer/core/BVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/core/b;->b(I)V

    .line 697
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v2}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/CyberPlayerSurface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/core/b;->a(Ljava/lang/String;Lcom/baidu/cyberplayer/core/CyberPlayerSurface;)V

    .line 699
    :cond_12
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$1;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/core/BVideoView;->c(Lcom/baidu/cyberplayer/core/BVideoView;I)V

    .line 784
    :cond_13
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_10
        0x3 -> :sswitch_f
        0x4 -> :sswitch_e
        0x5 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_6
        0xd -> :sswitch_5
        0xe -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.class Lcom/shenma/tvlauncher/HomeActivity$47;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2008
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .line 2089
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .line 2084
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "position"    # I

    .line 2015
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 2017
    .local v0, "i":I
    sget-object v1, Lcom/shenma/tvlauncher/HomeActivity;->ISTV:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2018
    if-ge p1, v0, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2022
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-string v3, "Topic"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 2023
    .local v1, "Topic":I
    if-nez v1, :cond_2

    .line 2025
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2034
    :pswitch_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2035
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetsf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 2036
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetsf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_0

    .line 2027
    :pswitch_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2028
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetrf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 2029
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetrf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2039
    :cond_1
    :goto_0
    goto/16 :goto_1

    .line 2044
    :cond_2
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 2060
    :pswitch_2
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2061
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetsf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 2062
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetsf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/SettingFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/SettingFragment;->st_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_1

    .line 2053
    :pswitch_3
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2054
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetmf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/TopicFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 2055
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetmf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/TopicFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/TopicFragment;->mv_typeLogs:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_1

    .line 2046
    :pswitch_4
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2047
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetrf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 2048
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetrf(Lcom/shenma/tvlauncher/HomeActivity;)Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/RecommendFragment;->re_typeLogs:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2068
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgettitle_group(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    .line 2071
    .local v3, "toX":F
    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-static {v4, v5}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputmAnimationSet(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;)V

    .line 2072
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetfromXDelta(Lcom/shenma/tvlauncher/HomeActivity;)F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputmTranslateAnimation(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/TranslateAnimation;)V

    .line 2074
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetmAnimationSet(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v5}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetmTranslateAnimation(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$minitAnimation(Lcom/shenma/tvlauncher/HomeActivity;Landroid/view/animation/AnimationSet;Landroid/view/animation/TranslateAnimation;)V

    .line 2075
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetiv_titile(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v4, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v4}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetmAnimationSet(Lcom/shenma/tvlauncher/HomeActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2076
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$47;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputfromXDelta(Lcom/shenma/tvlauncher/HomeActivity;F)V

    .line 2077
    invoke-static {p1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$sfputtitile_position(I)V

    .line 2078
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

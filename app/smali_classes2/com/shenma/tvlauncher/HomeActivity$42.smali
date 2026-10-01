.class Lcom/shenma/tvlauncher/HomeActivity$42;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$typeEn:Ljava/lang/String;

.field final synthetic val$typeName:Ljava/lang/String;

.field final synthetic val$typeStatus:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1787
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    iput-object p3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeName:Ljava/lang/String;

    iput p4, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .line 1790
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1791
    .local v0, "pBundle":Landroid/os/Bundle;
    const-string v1, "TYPE"

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    const-string v1, "TYPENAME"

    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeStatus:I

    const-string v2, "999999999"

    const-wide/16 v3, 0x3e8

    const-string v5, "EMPOWER"

    const-string v6, "USER"

    const-string v7, "LIVE"

    const-string v8, ""

    const-string/jumbo v9, "vip"

    const/4 v10, 0x0

    const-string/jumbo v11, "userName"

    const/4 v12, 0x1

    if-eq v1, v12, :cond_8

    .line 1794
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v13, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-static {v1, v13}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputEn(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    .line 1795
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v13, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeName:Ljava/lang/String;

    invoke-static {v1, v13}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fputName(Lcom/shenma/tvlauncher/HomeActivity;Ljava/lang/String;)V

    .line 1796
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetPWD(Lcom/shenma/tvlauncher/HomeActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1797
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1798
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1799
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1800
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1801
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1802
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1803
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1804
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    .line 1805
    .local v5, "time":J
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1806
    .local v3, "vip":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1807
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1808
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v8, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1809
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v7, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1810
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1811
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetlive(Lcom/shenma/tvlauncher/HomeActivity;)I

    move-result v2

    if-ne v2, v12, :cond_2

    .line 1812
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1813
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v8, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1814
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v7, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1815
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1816
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    sget v7, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v8, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v2, v7, v8}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1820
    .end local v3    # "vip":J
    .end local v5    # "time":J
    :goto_0
    return-void

    .line 1822
    .end local v1    # "username":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v1, v2, v0}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1824
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1825
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1826
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1827
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1828
    return-void

    .line 1829
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1830
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1832
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1833
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1834
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1835
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1836
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1837
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1838
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1840
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1842
    .end local v1    # "username":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$mshowUserDialog(Lcom/shenma/tvlauncher/HomeActivity;)V

    goto/16 :goto_4

    .line 1846
    :cond_8
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1847
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1848
    .restart local v1    # "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1849
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1850
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1851
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1852
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1853
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    .line 1854
    .restart local v5    # "time":J
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1855
    .restart local v3    # "vip":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1856
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1857
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v8, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1858
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v7, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1859
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1860
    :cond_a
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/HomeActivity;->-$$Nest$fgetlive(Lcom/shenma/tvlauncher/HomeActivity;)I

    move-result v2

    if-ne v2, v12, :cond_b

    .line 1861
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1862
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v7, v7, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v8, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1863
    iget-object v7, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v7, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1864
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1865
    :cond_b
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    sget v7, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v8, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v2, v7, v8}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 1869
    .end local v3    # "vip":J
    .end local v5    # "time":J
    :goto_2
    return-void

    .line 1870
    .end local v1    # "username":Ljava/lang/String;
    :cond_c
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1871
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1872
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v2, v2, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1873
    iget-object v2, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v2, v1}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1874
    return-void

    .line 1875
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_d
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->val$typeEn:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1876
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1877
    .local v1, "username":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1878
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1879
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/UserActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1880
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1881
    .end local v2    # "mIntent":Landroid/content/Intent;
    goto :goto_3

    .line 1882
    :cond_e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1883
    .restart local v2    # "mIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/HomeActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1884
    iget-object v3, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shenma/tvlauncher/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1886
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_3
    return-void

    .line 1888
    .end local v1    # "username":Ljava/lang/String;
    :cond_f
    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$42;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    const-class v2, Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-virtual {v1, v2, v0}, Lcom/shenma/tvlauncher/HomeActivity;->openActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1890
    :goto_4
    return-void
.end method

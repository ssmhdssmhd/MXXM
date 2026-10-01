.class Lcom/shenma/tvlauncher/HomeActivity$43;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$paramInt:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
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

    .line 1898
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iput p2, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1902
    if-eqz p2, :cond_4

    .line 1903
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/HomeActivity;->breathingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1904
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity;->whiteBorder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1905
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1906
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1907
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x19

    .line 1908
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    .line 1909
    .local v3, "height":I
    aget v4, v0, v1

    int-to-float v4, v4

    .line 1910
    .local v4, "x":F
    const/4 v5, 0x1

    aget v5, v0, v5

    int-to-float v5, v5

    .line 1911
    .local v5, "y":F
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget v6, v6, Lcom/shenma/tvlauncher/HomeActivity;->mHeight:I

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget v6, v6, Lcom/shenma/tvlauncher/HomeActivity;->mWidth:I

    if-le v6, v7, :cond_0

    .line 1912
    const v5, 0x446cc000    # 947.0f

    .line 1913
    iget v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->val$paramInt:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1936
    :pswitch_0
    const v4, 0x44d2a000    # 1685.0f

    goto :goto_0

    .line 1933
    :pswitch_1
    const v4, 0x44b68000    # 1460.0f

    .line 1934
    goto :goto_0

    .line 1930
    :pswitch_2
    const v4, 0x449a4000    # 1234.0f

    .line 1931
    goto :goto_0

    .line 1927
    :pswitch_3
    const v4, 0x447cc000    # 1011.0f

    .line 1928
    goto :goto_0

    .line 1924
    :pswitch_4
    const/high16 v4, 0x44450000    # 788.0f

    .line 1925
    goto :goto_0

    .line 1921
    :pswitch_5
    const v4, 0x440d8000    # 566.0f

    .line 1922
    goto :goto_0

    .line 1918
    :pswitch_6
    const v4, 0x43aa8000    # 341.0f

    .line 1919
    goto :goto_0

    .line 1915
    :pswitch_7
    const/high16 v4, 0x42e60000    # 115.0f

    .line 1916
    nop

    .line 1937
    :goto_0
    goto :goto_3

    .line 1940
    :cond_0
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget v6, v6, Lcom/shenma/tvlauncher/HomeActivity;->mHeight:I

    const/16 v7, 0x320

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget v6, v6, Lcom/shenma/tvlauncher/HomeActivity;->mHeight:I

    const/16 v7, 0x2f0

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 1942
    :cond_1
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget v6, v6, Lcom/shenma/tvlauncher/HomeActivity;->mHeight:I

    const/16 v7, 0x2e0

    if-ne v6, v7, :cond_2

    .line 1943
    const v5, 0x441cc000    # 627.0f

    goto :goto_2

    .line 1945
    :cond_2
    const v5, 0x4418c000    # 611.0f

    goto :goto_2

    .line 1941
    :cond_3
    :goto_1
    const v5, 0x4420c000    # 643.0f

    .line 1947
    :goto_2
    iget v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->val$paramInt:I

    packed-switch v6, :pswitch_data_1

    goto :goto_3

    .line 1970
    :pswitch_8
    const v4, 0x44898000    # 1100.0f

    goto :goto_3

    .line 1967
    :pswitch_9
    const v4, 0x446d8000    # 950.0f

    .line 1968
    goto :goto_3

    .line 1964
    :pswitch_a
    const v4, 0x4447c000    # 799.0f

    .line 1965
    goto :goto_3

    .line 1961
    :pswitch_b
    const v4, 0x4422c000    # 651.0f

    .line 1962
    goto :goto_3

    .line 1958
    :pswitch_c
    const/high16 v4, 0x43fb0000    # 502.0f

    .line 1959
    goto :goto_3

    .line 1955
    :pswitch_d
    const/high16 v4, 0x43b10000    # 354.0f

    .line 1956
    goto :goto_3

    .line 1952
    :pswitch_e
    const/high16 v4, 0x434c0000    # 204.0f

    .line 1953
    goto :goto_3

    .line 1949
    :pswitch_f
    const/high16 v4, 0x42540000    # 53.0f

    .line 1950
    nop

    .line 1976
    :goto_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/HomeActivity$43;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v6, v1, v1, v4, v5}, Lcom/shenma/tvlauncher/HomeActivity;->flyWhiteBorder(IIFF)V

    .line 1978
    .end local v0    # "location":[I
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

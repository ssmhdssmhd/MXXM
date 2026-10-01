.class Lcom/shenma/tvlauncher/SettingActActvity$3;
.super Ljava/lang/Object;
.source "SettingActActvity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingActActvity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingActActvity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingActActvity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingActActvity$3;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity$3;->this$0:Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SettingActActvity;->-$$Nest$mvip_goods_r_2(Lcom/shenma/tvlauncher/SettingActActvity;)V

    .line 194
    return-void
.end method

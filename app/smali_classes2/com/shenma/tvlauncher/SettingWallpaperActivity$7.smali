.class Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;
.super Ljava/lang/Object;
.source "SettingWallpaperActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SettingWallpaperActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SettingWallpaperActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SettingWallpaperActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 271
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    invoke-static {v0, p3}, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->-$$Nest$fputposition(Lcom/shenma/tvlauncher/SettingWallpaperActivity;I)V

    .line 272
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingWallpaperActivity$7;->this$0:Lcom/shenma/tvlauncher/SettingWallpaperActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/SettingWallpaperActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Set_successfully:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 273
    return-void
.end method

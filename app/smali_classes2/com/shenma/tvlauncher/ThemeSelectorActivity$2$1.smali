.class Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$1;
.super Ljava/lang/Object;
.source "ThemeSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$1;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 170
    return-void
.end method

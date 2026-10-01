.class Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ProgramAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field fl_item:Landroid/widget/FrameLayout;

.field im_program_state:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

.field tv_Program_name:Landroid/widget/TextView;

.field tv_Program_time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter$ViewHolder;->this$0:Lcom/shenma/tvlauncher/tvback/adapter/ProgramAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

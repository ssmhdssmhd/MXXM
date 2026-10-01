.class public final synthetic Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/app/Activity;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput p3, p0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget v2, p0, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/ScreenAdaptUtils;->lambda$apply$0(Landroid/view/View;Landroid/app/Activity;I)V

    return-void
.end method

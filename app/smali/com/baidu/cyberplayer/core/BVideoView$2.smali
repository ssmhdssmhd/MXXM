.class Lcom/baidu/cyberplayer/core/BVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/core/BVideoView;->g()V
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

    .line 1316
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .line 1320
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float v9, v0, v1

    .line 1321
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    new-instance v2, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    iget-object v3, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    const/4 v8, 0x2

    const/4 v10, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    move v11, v9

    invoke-direct/range {v2 .. v11}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;-><init>(Lcom/baidu/cyberplayer/core/BVideoView;IFIFIFIF)V

    invoke-static {v0, v2}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;)Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    .line 1329
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->setDuration(J)V

    .line 1330
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1331
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1332
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->e(Lcom/baidu/cyberplayer/core/BVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v0}, Lcom/baidu/cyberplayer/core/BVideoView;->b(Lcom/baidu/cyberplayer/core/BVideoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/core/BVideoView$2;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    invoke-static {v1}, Lcom/baidu/cyberplayer/core/BVideoView;->a(Lcom/baidu/cyberplayer/core/BVideoView;)Lcom/baidu/cyberplayer/core/BVideoView$TranslateAnim;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1335
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .line 1339
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .line 1343
    return-void
.end method

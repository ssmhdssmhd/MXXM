.class Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;->showItemPic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1831
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1$1;->this$2:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .param p1, "glideDrawable"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)V"
        }
    .end annotation

    .line 1834
    .local p2, "glideAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<-Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1$1;->this$2:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1;->this$1:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgetrootview(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1836
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1831
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$1$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method

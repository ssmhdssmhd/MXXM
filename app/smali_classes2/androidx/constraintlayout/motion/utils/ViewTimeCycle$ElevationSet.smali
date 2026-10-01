.class Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/core/motion/utils/KeyCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 122
    move-object v2, p0

    move-object v6, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/core/motion/utils/KeyCache;
    .local v3, "t":F
    .local v4, "time":J
    .local v6, "view":Landroid/view/View;
    .local v7, "cache":Landroidx/constraintlayout/core/motion/utils/KeyCache;
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F

    move-result p1

    invoke-virtual {v6, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    .line 121
    .end local v3    # "t":F
    .end local v4    # "time":J
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "cache":Landroidx/constraintlayout/core/motion/utils/KeyCache;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "t":F
    .restart local p3    # "time":J
    .restart local p5    # "cache":Landroidx/constraintlayout/core/motion/utils/KeyCache;
    :cond_0
    move-object v2, p0

    move-object v6, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p5

    .line 124
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "t":F
    .end local p3    # "time":J
    .end local p5    # "cache":Landroidx/constraintlayout/core/motion/utils/KeyCache;
    .restart local v3    # "t":F
    .restart local v4    # "time":J
    .restart local v6    # "view":Landroid/view/View;
    .restart local v7    # "cache":Landroidx/constraintlayout/core/motion/utils/KeyCache;
    :goto_0
    iget-boolean p1, v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;->mContinue:Z

    return p1
.end method

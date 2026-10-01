.class public Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/example/widget/media/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;,
        Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

.field private mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSurfaceCallback(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;)Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    .line 70
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    .line 71
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 142
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 143
    return-void
.end method

.method public getSurfaceHolder()Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    .locals 3

    .line 133
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->-$$Nest$fgetmSurfaceTexture(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 76
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 86
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->willDetachFromWindow()V

    .line 87
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 88
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->didDetachFromWindow()V

    .line 89
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 152
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 153
    const-class v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 158
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 159
    const-class v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 128
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->doMeasure(II)V

    .line 129
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method

.method public removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 147
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 148
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .line 118
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->setAspectRatio(I)V

    .line 119
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->requestLayout()V

    .line 120
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .line 112
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->setVideoRotation(I)V

    .line 113
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setRotation(F)V

    .line 114
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .line 104
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 105
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 106
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->requestLayout()V

    .line 108
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 96
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 97
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->setVideoSize(II)V

    .line 98
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->requestLayout()V

    .line 100
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

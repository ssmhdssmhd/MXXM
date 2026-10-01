.class public Lcom/aliyun/player/videoview/AliDisplayView;
.super Landroid/widget/FrameLayout;
.source "AliDisplayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;,
        Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field private mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

.field private mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/videoview/AliDisplayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 121
    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 139
    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 86
    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 121
    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 139
    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 91
    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 121
    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 139
    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 96
    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    .line 97
    return-void
.end method

.method private init()V
    .locals 1

    .line 100
    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;-><init>(Lcom/aliyun/player/videoview/AliDisplayView;)V

    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 101
    return-void
.end method


# virtual methods
.method public getDisplayViewHelper()Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    return-object v0
.end method

.method public getOnViewStatusListener()Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    return-object v0
.end method

.method public getPreferDisplayViewType()Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    return-object v0
.end method

.method public setOnViewStatusListener(Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V
    .locals 0
    .param p1, "onViewStatusListener"    # Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 152
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 153
    return-void
.end method

.method public setPreferDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0
    .param p1, "type"    # Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 132
    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 133
    return-void
.end method

.method public setSurfaceReuse(Z)V
    .locals 1
    .param p1, "reuse"    # Z

    .line 118
    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setSurfaceReuse(Z)V

    .line 119
    return-void
.end method

.class public Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;
.super Lmaster/flame/danmaku/danmaku/renderer/Renderer;
.source "DanmakuRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;
    }
.end annotation


# instance fields
.field private mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

.field private mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;

.field private final mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private final mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

.field private mOnDanmakuShownListener:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;

.field private mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

.field private mVerifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

.field private final verifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 2
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 136
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/Renderer;-><init>()V

    .line 121
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->verifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .line 134
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;

    .line 137
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 138
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isAlignBottom()Z

    move-result v1

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 30
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method static synthetic access$100(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/ICacheManager;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 30
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    return-object v0
.end method

.method static synthetic access$200(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 30
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mVerifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    return-object v0
.end method

.method static synthetic access$300(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 30
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    return-object v0
.end method

.method static synthetic access$400(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 30
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mOnDanmakuShownListener:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;

    return-object v0
.end method

.method static synthetic access$500(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1
    .param p0, "x0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 30
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method


# virtual methods
.method public alignBottom(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 187
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->alignBottom(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->clearRetainer()V

    .line 144
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->clear()V

    .line 145
    return-void
.end method

.method public clearRetainer()V
    .locals 1

    .line 149
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->clear()V

    .line 150
    return-void
.end method

.method public draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/IDanmakus;JLmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V
    .locals 1
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .param p3, "startRenderTime"    # J
    .param p5, "renderingState"    # Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 165
    iget-object v0, p5, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 166
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;

    iput-object p1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->disp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 167
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;

    iput-object p5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->renderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 168
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;

    iput-wide p3, v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;->startRenderTime:J

    .line 169
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mConsumer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$Consumer;

    invoke-interface {p2, v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->forEachSync(Lmaster/flame/danmaku/danmaku/model/IDanmakus$Consumer;)V

    .line 170
    return-void
.end method

.method public release()V
    .locals 1

    .line 154
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->release()V

    .line 155
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->clear()V

    .line 156
    return-void
.end method

.method public removeOnDanmakuShownListener()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mOnDanmakuShownListener:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;

    .line 184
    return-void
.end method

.method public setCacheManager(Lmaster/flame/danmaku/danmaku/model/ICacheManager;)V
    .locals 0
    .param p1, "cacheManager"    # Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    .line 173
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    .line 174
    return-void
.end method

.method public setOnDanmakuShownListener(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;)V
    .locals 0
    .param p1, "onDanmakuShownListener"    # Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;

    .line 178
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mOnDanmakuShownListener:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$OnDanmakuShownListener;

    .line 179
    return-void
.end method

.method public setVerifierEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->verifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mVerifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .line 161
    return-void
.end method

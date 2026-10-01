.class Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;
.super Ljava/lang/Object;
.source "DanmakuRenderer.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    .line 121
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public skipLayout(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;FIZ)Z
    .locals 9
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "fixedTop"    # F
    .param p3, "lines"    # I
    .param p4, "willHit"    # Z

    .line 124
    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$000(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$500(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v6

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;->this$0:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->access$000(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v8

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p3

    move v7, p4

    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p3    # "lines":I
    .end local p4    # "willHit":Z
    .local v3, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .local v4, "lines":I
    .local v7, "willHit":Z
    invoke-virtual/range {v2 .. v8}, Lmaster/flame/danmaku/controller/DanmakuFilters;->filterSecondary(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {v3, v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setVisibility(Z)V

    .line 126
    const/4 p1, 0x1

    return p1

    .line 124
    .end local v3    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v4    # "lines":I
    .end local v7    # "willHit":Z
    .restart local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local p3    # "lines":I
    .restart local p4    # "willHit":Z
    :cond_0
    move-object v3, p1

    move v4, p3

    move v7, p4

    .line 128
    .end local p1    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local p3    # "lines":I
    .end local p4    # "willHit":Z
    .restart local v3    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .restart local v4    # "lines":I
    .restart local v7    # "willHit":Z
    :cond_1
    return v1
.end method

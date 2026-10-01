.class public Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
.super Ljava/lang/Object;
.source "DanmakuContext.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;,
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    }
.end annotation


# instance fields
.field public FBDanmakuVisibility:Z

.field public FTDanmakuVisibility:Z

.field public L2RDanmakuVisibility:Z

.field public R2LDanmakuVisibility:Z

.field public SpecialDanmakuVisibility:Z

.field public cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

.field public danmakuSync:Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;

.field private mBaseComparator:Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

.field private mBlockGuestDanmaku:Z

.field private mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mColorValueWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

.field public mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

.field public mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

.field private mDuplicateMergingEnable:Z

.field mFilterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFont:Landroid/graphics/Typeface;

.field public mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

.field private mIsAlignBottom:Z

.field private mIsMaxLinesLimited:Z

.field private mIsPreventOverlappingEnabled:Z

.field mUserHashBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUserIdBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public margin:I

.field public maximumNumsInScreen:I

.field public scaleTextSize:F

.field public scrollSpeedFactor:F

.field public transparency:I

.field public updateMethod:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFont:Landroid/graphics/Typeface;

    .line 46
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->margin:I

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    .line 57
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    .line 59
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    .line 61
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    .line 63
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SpecialDanmakuVisibility:Z

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    .line 70
    const/4 v2, -0x1

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->maximumNumsInScreen:I

    .line 75
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scrollSpeedFactor:F

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBlockGuestDanmaku:Z

    .line 89
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    .line 91
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsAlignBottom:Z

    .line 99
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .line 101
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    .line 103
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    .line 105
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->create()Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    .line 107
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;->POLICY_DEFAULT:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    .line 130
    iput-byte v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->updateMethod:B

    .line 645
    return-void
.end method

.method public static create()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 24
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;-><init>()V

    return-object v0
.end method

.method private varargs notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 681
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 683
    .local v1, "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .line 684
    .local v2, "cb":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;
    if-eqz v2, :cond_0

    .line 685
    invoke-interface {v2, p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;->onDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    .line 687
    .end local v1    # "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    .end local v2    # "cb":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;
    :cond_0
    goto :goto_0

    .line 689
    :cond_1
    return-void
.end method

.method private setDanmakuVisible(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "type"    # I

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    :goto_0
    return-void
.end method

.method private setFilterData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 209
    .local p2, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 210
    return-void
.end method

.method private setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "primary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 214
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0, p1, p3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->get(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-result-object v0

    .line 215
    .local v0, "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<TT;>;"
    invoke-interface {v0, p2}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->setData(Ljava/lang/Object;)V

    .line 216
    return-void
.end method


# virtual methods
.method public varargs addUserHashBlackList([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "hashes"    # [Ljava/lang/String;

    .line 437
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 441
    const-string v0, "1015_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 443
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 444
    return-object p0

    .line 438
    :cond_1
    :goto_0
    return-object p0
.end method

.method public varargs addUserIdBlackList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "ids"    # [Ljava/lang/Integer;

    .line 489
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 493
    const-string v0, "1014_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 495
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 496
    return-object p0

    .line 490
    :cond_1
    :goto_0
    return-object p0
.end method

.method public alignBottom(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "enable"    # Z

    .line 557
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 558
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsAlignBottom:Z

    .line 559
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->ALIGN_BOTTOM:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 562
    :cond_0
    return-object p0
.end method

.method public blockGuestDanmaku(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "block"    # Z

    .line 509
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBlockGuestDanmaku:Z

    if-eq v0, p1, :cond_1

    .line 510
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBlockGuestDanmaku:Z

    .line 511
    const-string v0, "1016_Filter"

    if-eqz p1, :cond_0

    .line 512
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 516
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 517
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->BLOCK_GUEST_DANMAKU:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 519
    :cond_1
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 714
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBaseComparator()Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;
    .locals 1

    .line 112
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBaseComparator:Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

    return-object v0
.end method

.method public getColorValueWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;
    .locals 1

    .line 120
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    return-object v0
.end method

.method public getFBDanmakuVisibility()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    return v0
.end method

.method public getFTDanmakuVisibility()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    return v0
.end method

.method public getL2RDanmakuVisibility()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    return v0
.end method

.method public getR2LDanmakuVisibility()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    return v0
.end method

.method public getSpecialDanmakuVisibility()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SpecialDanmakuVisibility:Z

    return v0
.end method

.method public getUserHashBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getUserIdBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    return-object v0
.end method

.method public isAlignBottom()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsAlignBottom:Z

    return v0
.end method

.method public isDuplicateMergingEnabled()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    return v0
.end method

.method public isMaxLinesLimited()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsMaxLinesLimited:Z

    return v0
.end method

.method public isPreventOverlappingEnabled()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsPreventOverlappingEnabled:Z

    return v0
.end method

.method public preventOverlapping(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    .line 601
    .local p1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsPreventOverlappingEnabled:Z

    .line 602
    const-string v2, "1019_Filter"

    if-nez p1, :cond_1

    .line 603
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v3, v2, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;Z)V

    goto :goto_1

    .line 605
    :cond_1
    invoke-direct {p0, v2, p1, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 607
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 608
    sget-object v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 609
    return-object p0
.end method

.method public registerConfigChangedCallback(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;)V
    .locals 3
    .param p1, "listener"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .line 651
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 652
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    .line 654
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 655
    .local v1, "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 656
    return-void

    .line 658
    .end local v1    # "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    :cond_2
    goto :goto_0

    .line 659
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method public registerFilter(Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1
    .param p1, "filter"    # Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;

    .line 692
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;)V

    .line 693
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 694
    return-object p0
.end method

.method public varargs removeUserHashBlackList([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5
    .param p1, "hashes"    # [Ljava/lang/String;

    .line 419
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 423
    .local v3, "hash":Ljava/lang/String;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 422
    .end local v3    # "hash":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :cond_1
    const-string v0, "1015_Filter"

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 427
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-direct {p0, v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 428
    return-object p0

    .line 420
    :cond_2
    :goto_1
    return-object p0
.end method

.method public varargs removeUserIdBlackList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5
    .param p1, "ids"    # [Ljava/lang/Integer;

    .line 471
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 474
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 475
    .local v3, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    .end local v3    # "id":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const-string v0, "1014_Filter"

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 479
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-direct {p0, v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 480
    return-object p0

    .line 472
    :cond_2
    :goto_1
    return-object p0
.end method

.method public resetContext()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 704
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .line 705
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    .line 707
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->clear()V

    .line 708
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->create()Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    .line 709
    return-object p0
.end method

.method public setBaseComparator(Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;)V
    .locals 0
    .param p1, "baseComparator"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

    .line 116
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBaseComparator:Lmaster/flame/danmaku/danmaku/model/IDanmakus$BaseComparator;

    .line 117
    return-void
.end method

.method public setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 2
    .param p1, "cacheStuffer"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
    .param p2, "cacheStufferAdapter"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .line 627
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .line 628
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->setProxy(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)V

    .line 630
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;)V

    .line 632
    :cond_0
    return-object p0
.end method

.method public setCachingPolicy(Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0
    .param p1, "cachingPolicy"    # Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    .line 641
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->cachingPolicy:Lmaster/flame/danmaku/danmaku/model/android/CachingPolicy;

    .line 642
    return-object p0
.end method

.method public varargs setColorValueWhiteList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "colors"    # [Ljava/lang/Integer;

    .line 384
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    const-string v0, "1013_Filter"

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 389
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 386
    :cond_1
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 391
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 392
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->COLOR_VALUE_WHITE_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 393
    return-object p0
.end method

.method public setDanmakuBold(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "bold"    # Z

    .line 373
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setFakeBoldText(Z)V

    .line 374
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_BOLD:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 375
    return-object p0
.end method

.method public setDanmakuMargin(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "m"    # I

    .line 170
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->margin:I

    if-eq v0, p1, :cond_0

    .line 171
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->margin:I

    .line 172
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setMargin(I)V

    .line 173
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 174
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 175
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_MARGIN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-object p0
.end method

.method public varargs setDanmakuStyle(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "style"    # I
    .param p2, "values"    # [F

    .line 361
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setDanmakuStyle(I[F)V

    .line 362
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_STYLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 363
    return-object p0
.end method

.method public setDanmakuSync(Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0
    .param p1, "danmakuSync"    # Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;

    .line 636
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->danmakuSync:Lmaster/flame/danmaku/danmaku/model/AbsDanmakuSync;

    .line 637
    return-object p0
.end method

.method public setDanmakuTransparency(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5
    .param p1, "p"    # F

    .line 148
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 149
    .local v0, "newTransparency":I
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    if-eq v0, v1, :cond_0

    .line 150
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    .line 151
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setTransparency(I)V

    .line 152
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TRANSPARENCY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-object p0
.end method

.method public setDuplicateMergingEnabled(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "enable"    # Z

    .line 544
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    if-eq v0, p1, :cond_0

    .line 545
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    .line 546
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 547
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 549
    :cond_0
    return-object p0
.end method

.method public setFBDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .line 239
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 240
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 242
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 243
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    .line 244
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->FB_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 246
    :cond_0
    return-object p0
.end method

.method public setFTDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .line 198
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 199
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 201
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 202
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    .line 203
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->FT_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-object p0
.end method

.method public setL2RDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .line 262
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 263
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 265
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 266
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    .line 267
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->L2R_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 269
    :cond_0
    return-object p0
.end method

.method public setMarginTop(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1
    .param p1, "m"    # I

    .line 181
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setAllMarginTop(I)V

    .line 182
    return-object p0
.end method

.method public setMaximumLines(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    .line 577
    .local p1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsMaxLinesLimited:Z

    .line 578
    const-string v2, "1018_Filter"

    if-nez p1, :cond_1

    .line 579
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v3, v2, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;Z)V

    goto :goto_1

    .line 581
    :cond_1
    invoke-direct {p0, v2, p1, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 583
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 584
    sget-object v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 585
    return-object p0
.end method

.method public setMaximumVisibleSizeInScreen(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5
    .param p1, "maxSize"    # I

    .line 325
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->maximumNumsInScreen:I

    .line 327
    const-string v0, "1012_Filter"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "1011_Filter"

    if-nez p1, :cond_0

    .line 328
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v4, v3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 331
    return-object p0

    .line 334
    :cond_0
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 335
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v4, v3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 337
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 338
    return-object p0

    .line 340
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 342
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 343
    return-object p0
.end method

.method public setOverlapping(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    .local p1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->preventOverlapping(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public setR2LDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .line 285
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 286
    const-string v1, "1010_Filter"

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 288
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    if-eq v1, p1, :cond_0

    .line 289
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    .line 290
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->R2L_DANMAKU_VISIBILIY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct {p0, v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 292
    :cond_0
    return-object p0
.end method

.method public setScaleTextSize(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "p"    # F

    .line 158
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 159
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    .line 160
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->clearTextHeightCache()V

    .line 161
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setScaleTextSizeFactor(F)V

    .line 162
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 163
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 164
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    return-object p0
.end method

.method public setScrollSpeedFactor(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "p"    # F

    .line 528
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scrollSpeedFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 529
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scrollSpeedFactor:F

    .line 530
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->updateDurationFactor(F)V

    .line 531
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 532
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 533
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 535
    :cond_0
    return-object p0
.end method

.method public setSpecialDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .line 308
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 309
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 311
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SpecialDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 312
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SpecialDanmakuVisibility:Z

    .line 313
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SPECIAL_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 315
    :cond_0
    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 2
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 138
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFont:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 139
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFont:Landroid/graphics/Typeface;

    .line 140
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->clearTextHeightCache()V

    .line 141
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setTypeFace(Ljava/lang/Object;)V

    .line 142
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TYPEFACE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 144
    :cond_0
    return-object p0
.end method

.method public varargs setUserHashBlackList([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "hashes"    # [Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    const-string v0, "1015_Filter"

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 408
    :cond_1
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 413
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 414
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 415
    return-object p0
.end method

.method public varargs setUserIdBlackList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "ids"    # [Ljava/lang/Integer;

    .line 458
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 459
    const-string v0, "1014_Filter"

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 463
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 465
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 466
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 467
    return-object p0
.end method

.method public unregisterAllConfigChangedCallbacks()V
    .locals 1

    .line 674
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    .line 678
    :cond_0
    return-void
.end method

.method public unregisterConfigChangedCallback(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;)V
    .locals 3
    .param p1, "listener"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .line 663
    if-eqz p1, :cond_3

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 666
    .local v1, "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 668
    return-void

    .line 670
    .end local v1    # "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    :cond_1
    goto :goto_0

    .line 671
    :cond_2
    return-void

    .line 664
    :cond_3
    :goto_1
    return-void
.end method

.method public unregisterFilter(Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1
    .param p1, "filter"    # Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;

    .line 698
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;)V

    .line 699
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 700
    return-object p0
.end method

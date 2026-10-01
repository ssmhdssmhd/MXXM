.class Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;
.super Ljava/lang/Object;
.source "IjkAliMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->prepareAsyncInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 303
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 306
    const/4 v0, 0x1

    .line 307
    .local v0, "preferExtensionDecoders":Z
    const/4 v1, 0x1

    .line 309
    .local v1, "useExtensionRenderers":Z
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/aliyun/player/AliPlayerFactory;->createAliPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliPlayer;

    move-result-object v3

    iput-object v3, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    .line 314
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-interface {v2, v3}, Lcom/aliyun/player/AliPlayer;->setSurface(Landroid/view/Surface;)V

    .line 319
    :cond_0
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetdeviceId(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetdeviceId(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 320
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v3}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetdeviceId(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aliyun/player/AliPlayer;->setTraceId(Ljava/lang/String;)V

    .line 323
    :cond_1
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v2}, Lcom/aliyun/player/AliPlayer;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 325
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v2}, Lcom/aliyun/player/AliPlayer;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v2

    .line 326
    .local v2, "config":Lcom/aliyun/player/nativeclass/PlayerConfig;
    sget-object v3, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->userAgent:Ljava/lang/String;

    iput-object v3, v2, Lcom/aliyun/player/nativeclass/PlayerConfig;->mUserAgent:Ljava/lang/String;

    .line 327
    sget-object v3, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->Referer:Ljava/lang/String;

    iput-object v3, v2, Lcom/aliyun/player/nativeclass/PlayerConfig;->mReferrer:Ljava/lang/String;

    .line 328
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v3, v2}, Lcom/aliyun/player/AliPlayer;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 330
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 331
    .local v3, "itemsArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 332
    .local v4, "i":I
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v5, v5, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 333
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 334
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    .line 335
    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {v2, v3}, Lcom/aliyun/player/nativeclass/PlayerConfig;->setCustomHeaders([Ljava/lang/String;)V

    .line 338
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v5, v5, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v5, v2}, Lcom/aliyun/player/AliPlayer;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 341
    .end local v2    # "config":Lcom/aliyun/player/nativeclass/PlayerConfig;
    .end local v3    # "itemsArray":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    sget-object v3, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->DECODE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/aliyun/player/AliPlayer;->enableHardwareDecoder(Z)V

    .line 347
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v2}, Lcom/aliyun/player/AliPlayer;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v2

    .line 350
    .restart local v2    # "config":Lcom/aliyun/player/nativeclass/PlayerConfig;
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->mJ:Ljava/lang/String;

    const/16 v5, 0xf

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    .line 352
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mAppContext:Landroid/content/Context;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->Me:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkRetryCount:I

    .line 355
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v3, v2}, Lcom/aliyun/player/AliPlayer;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    .line 378
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonPreparedListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnPreparedListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    .line 381
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonRenderingStartListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnRenderingStartListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    .line 384
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonErrorListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnErrorListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    .line 387
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonLoadingStatusListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    .line 391
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonStateChangedListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnStateChangedListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    .line 394
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonCompletionListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnCompletionListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnCompletionListener(Lcom/aliyun/player/IPlayer$OnCompletionListener;)V

    .line 397
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonInfoListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnInfoListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    .line 404
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonSeekCompleteListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    .line 412
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->-$$Nest$fgetonVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    .line 414
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-boolean v4, v4, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->isLooping:Z

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setLoop(Z)V

    .line 417
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    iget-object v4, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v4, v4, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mMediaSource:Lcom/aliyun/player/source/UrlSource;

    invoke-interface {v3, v4}, Lcom/aliyun/player/AliPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    .line 418
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkAliMediaPlayer;->mInternalPlayer:Lcom/aliyun/player/AliPlayer;

    invoke-interface {v3}, Lcom/aliyun/player/AliPlayer;->prepare()V

    .line 420
    return-void
.end method

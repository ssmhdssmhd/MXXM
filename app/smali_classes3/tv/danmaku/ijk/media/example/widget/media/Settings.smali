.class public Ltv/danmaku/ijk/media/example/widget/media/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final PV_PLAYER__AndroidMediaPlayer:I = 0x1

.field public static final PV_PLAYER__Auto:I = 0x0

.field public static final PV_PLAYER__IjkAliMediaPlayer:I = 0x4

.field public static final PV_PLAYER__IjkExoMediaPlayer:I = 0x3

.field public static final PV_PLAYER__IjkMediaPlayer:I = 0x2


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method


# virtual methods
.method public getEnableBackgroundPlay()Z
    .locals 3

    .line 44
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_enable_background_play:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableDetachedSurfaceTextureView()Z
    .locals 3

    .line 108
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_enable_detached_surface_texture:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableNoView()Z
    .locals 3

    .line 93
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_enable_no_view:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableSurfaceView()Z
    .locals 3

    .line 98
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_enable_surface_view:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableTextureView()Z
    .locals 3

    .line 103
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_enable_texture_view:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getLastDirectory()Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_last_directory:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "/"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMediaCodecHandleResolutionChange()Z
    .locals 3

    .line 78
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_media_codec_handle_resolution_change:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPixelFormat()Ljava/lang/String;
    .locals 3

    .line 88
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_pixel_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPlayer()I
    .locals 5

    .line 49
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_player:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    const-string v3, "LIVE"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 54
    .local v2, "nhposition":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 55
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/NumberFormatException;
    if-nez v2, :cond_0

    .line 58
    sget v4, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->nhposition:I

    return v4

    .line 60
    :cond_0
    sget v4, Lcom/shenma/tvlauncher/vod/LivePlayerActivity;->nhposition:I

    return v4
.end method

.method public getUsingMediaCodec()Z
    .locals 3

    .line 67
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_using_media_codec:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingMediaCodecAutoRotate()Z
    .locals 3

    .line 73
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_using_media_codec_auto_rotate:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingMediaDataSource()Z
    .locals 3

    .line 113
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_using_mediadatasource:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingOpenSLES()Z
    .locals 3

    .line 83
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_using_opensl_es:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setLastDirectory(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->pref_key_last_directory:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    return-void
.end method

.class public Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;
.super Ljava/lang/Object;
.source "SharePreferenceDataUtil.java"


# static fields
.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedBooleanData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 108
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 112
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 113
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 115
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedFloatData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 87
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedFloatData(Landroid/content/Context;Ljava/lang/String;F)Ljava/lang/Float;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 91
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 94
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedIntData(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 45
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 49
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 52
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedStringData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 136
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 129
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedlongData(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 64
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 66
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharedlongData(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 70
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 73
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 18
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 19
    return-void

    .line 22
    :cond_0
    const-string v0, "initData"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    .local v0, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    sput-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->editor:Landroid/content/SharedPreferences$Editor;

    .line 26
    return-void

    .line 29
    .end local v0    # "defaultSharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    sput-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->editor:Landroid/content/SharedPreferences$Editor;

    .line 32
    return-void
.end method

.method public static setSharedBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 98
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 99
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 101
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method public static setSharedFloatData(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 77
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 80
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method public static setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 35
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 38
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static setSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 120
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 122
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public static setSharedlongData(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 56
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->init(Landroid/content/Context;)V

    .line 59
    :cond_0
    sget-object v0, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

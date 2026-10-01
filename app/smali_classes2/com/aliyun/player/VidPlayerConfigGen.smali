.class public Lcom/aliyun/player/VidPlayerConfigGen;
.super Ljava/lang/Object;
.source "VidPlayerConfigGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;
    }
.end annotation


# instance fields
.field private configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public addPlayerConfig(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    return-void
.end method

.method public addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void
.end method

.method public genConfig()Ljava/lang/String;
    .locals 4

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, ""

    return-object v1

    .line 143
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/aliyun/player/VidPlayerConfigGen;->configMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_1

    .line 148
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 151
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptType(Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;)V
    .locals 2
    .param p1, "type"    # Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    .line 71
    sget-object v0, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->AliyunVodEncryption:Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;

    const-string v1, "EncryptType"

    if-ne p1, v0, :cond_0

    .line 72
    const-string v0, "AliyunVoDEncryption"

    invoke-virtual {p0, v1, v0}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/VidPlayerConfigGen$EncryptType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void
.end method

.method public setMtsHlsUriToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 89
    const-string v0, "MtsHlsUriToken"

    invoke-virtual {p0, v0, p1}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setPreviewTime(I)V
    .locals 1
    .param p1, "previewTime"    # I

    .line 24
    const-string v0, "PreviewTime"

    invoke-virtual {p0, v0, p1}, Lcom/aliyun/player/VidPlayerConfigGen;->addPlayerConfig(Ljava/lang/String;I)V

    .line 25
    return-void
.end method

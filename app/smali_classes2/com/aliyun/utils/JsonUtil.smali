.class public Lcom/aliyun/utils/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static final INT_EMPTY_VALUE:I = 0x0

.field private static final STR_EMPTY_VALUE:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # [Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 123
    return-object v0

    .line 126
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 128
    .local v4, "oneName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 129
    :catch_0
    move-exception v5

    .line 130
    .local v5, "e":Lorg/json/JSONException;
    nop

    .line 126
    .end local v4    # "oneName":Ljava/lang/String;
    .end local v5    # "e":Lorg/json/JSONException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 135
    .local v3, "oneName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No json long value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JsonUtil"

    invoke-static {v5, v4}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v3    # "oneName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    :cond_2
    return-object v0
.end method

.method public static varargs getBoolean(Lorg/json/JSONObject;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # [Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 158
    return v0

    .line 161
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 163
    .local v3, "oneName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 164
    :catch_0
    move-exception v4

    .line 165
    .local v4, "e":Lorg/json/JSONException;
    nop

    .line 161
    .end local v3    # "oneName":Ljava/lang/String;
    .end local v4    # "e":Lorg/json/JSONException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 170
    .restart local v3    # "oneName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No json boolean value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JsonUtil"

    invoke-static {v5, v4}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v3    # "oneName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    :cond_2
    return v0
.end method

.method public static varargs getDouble(Lorg/json/JSONObject;[Ljava/lang/String;)D
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # [Ljava/lang/String;

    .line 82
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 83
    return-wide v0

    .line 86
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 88
    .local v5, "oneName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 89
    :catch_0
    move-exception v6

    .line 90
    .local v6, "e":Lorg/json/JSONException;
    nop

    .line 86
    .end local v5    # "oneName":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_1
    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 95
    .local v4, "oneName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No json double value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JsonUtil"

    invoke-static {v6, v5}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v4    # "oneName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    :cond_2
    return-wide v0
.end method

.method public static varargs getInt(Lorg/json/JSONObject;[Ljava/lang/String;)I
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # [Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 22
    return v0

    .line 25
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 27
    .local v3, "oneName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 28
    :catch_0
    move-exception v4

    .line 29
    .local v4, "e":Lorg/json/JSONException;
    nop

    .line 25
    .end local v3    # "oneName":Ljava/lang/String;
    .end local v4    # "e":Lorg/json/JSONException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 34
    .restart local v3    # "oneName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No json int value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JsonUtil"

    invoke-static {v5, v4}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local v3    # "oneName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_2
    return v0
.end method

.method public static varargs getJSONObject(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # [Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 63
    return-object v0

    .line 66
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 68
    .local v4, "oneName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v5

    .line 70
    .local v5, "e":Lorg/json/JSONException;
    nop

    .line 66
    .end local v4    # "oneName":Ljava/lang/String;
    .end local v5    # "e":Lorg/json/JSONException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 75
    .local v3, "oneName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No json object value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JsonUtil"

    invoke-static {v5, v4}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v3    # "oneName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    :cond_2
    return-object v0
.end method

.method public static getJSONObjectAt(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 2
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "index"    # I

    .line 143
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 144
    return-object v0

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 149
    :catch_0
    move-exception v1

    .line 153
    return-object v0
.end method

.method public static varargs getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # [Ljava/lang/String;

    .line 102
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 103
    return-wide v0

    .line 106
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 108
    .local v5, "oneName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 109
    :catch_0
    move-exception v6

    .line 110
    .local v6, "e":Lorg/json/JSONException;
    nop

    .line 106
    .end local v5    # "oneName":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_1
    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 115
    .local v4, "oneName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No json long value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JsonUtil"

    invoke-static {v6, v5}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v4    # "oneName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    :cond_2
    return-wide v0
.end method

.method public static varargs getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # [Ljava/lang/String;

    .line 42
    const-string v0, ""

    if-nez p0, :cond_0

    .line 43
    return-object v0

    .line 46
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 48
    .local v4, "oneName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 49
    :catch_0
    move-exception v5

    .line 50
    .local v5, "e":Lorg/json/JSONException;
    nop

    .line 46
    .end local v4    # "oneName":Ljava/lang/String;
    .end local v5    # "e":Lorg/json/JSONException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 55
    .local v3, "oneName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No json string value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JsonUtil"

    invoke-static {v5, v4}, Lcom/cicada/player/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v3    # "oneName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    :cond_2
    return-object v0
.end method

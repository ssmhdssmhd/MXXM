.class public Lcom/aliyun/player/FilterConfig$FilterOptions;
.super Ljava/lang/Object;
.source "FilterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/FilterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterOptions"
.end annotation


# instance fields
.field options:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/FilterConfig$FilterOptions;->options:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method getOptions()Lorg/json/JSONObject;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig$FilterOptions;->options:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig$FilterOptions;->options:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig$FilterOptions;->options:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

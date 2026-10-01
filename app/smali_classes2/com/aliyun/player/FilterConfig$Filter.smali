.class public Lcom/aliyun/player/FilterConfig$Filter;
.super Ljava/lang/Object;
.source "FilterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/FilterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation


# instance fields
.field filter:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/FilterConfig$Filter;->filter:Lorg/json/JSONObject;

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig$Filter;->filter:Lorg/json/JSONObject;

    const-string/jumbo v1, "target"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method getFilter()Lorg/json/JSONObject;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig$Filter;->filter:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setOptions(Lcom/aliyun/player/FilterConfig$FilterOptions;)V
    .locals 3
    .param p1, "filterOptions"    # Lcom/aliyun/player/FilterConfig$FilterOptions;

    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig$FilterOptions;->getOptions()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig$Filter;->filter:Lorg/json/JSONObject;

    const-string v1, "options"

    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig$FilterOptions;->getOptions()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 27
    :cond_0
    :goto_0
    return-void
.end method

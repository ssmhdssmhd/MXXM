.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;
.super Landroid/os/AsyncTask;
.source "TVLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownEpg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;",
        ">;"
    }
.end annotation


# instance fields
.field private final Egp:Ljava/lang/String;

.field private final EgpFormat:Ljava/lang/String;

.field private epgUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Ljava/lang/String;)V
    .locals 5
    .param p2, "epg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1885
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1881
    const-string v0, "http://aps.lsott.com/egp/"

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->Egp:Ljava/lang/String;

    .line 1882
    const-string v1, ".xml"

    iput-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->EgpFormat:Ljava/lang/String;

    .line 1883
    const-string v2, ""

    iput-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->epgUrl:Ljava/lang/String;

    .line 1886
    invoke-static {p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgettv_name(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmCurrentMedia(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/tvlive/parsexml/NetMedia;->getChannlename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1887
    invoke-static {p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetcurren_tv_title(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    invoke-static {p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetepg2(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1889
    invoke-static {p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetepg1(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1890
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->epgUrl:Ljava/lang/String;

    .line 1891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->epgUrl:Ljava/lang/String;

    .line 1893
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .line 1904
    const-string v0, "doInBackground"

    const-string v1, "TVLivePlayer"

    const/4 v2, 0x0

    .line 1905
    .local v2, "temUrl":Ljava/net/URL;
    const/4 v3, 0x0

    .line 1906
    .local v3, "inStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1907
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const-string v5, ""

    .line 1908
    .local v5, "epgString":Ljava/lang/String;
    const/16 v6, 0x400

    new-array v7, v6, [B

    .line 1910
    .local v7, "data":[B
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->epgUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 1911
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v4, v8

    .line 1912
    const-string v8, "GET"

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1913
    const/16 v8, 0x2710

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1914
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    .line 1915
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1916
    .local v8, "outStream":Ljava/io/ByteArrayOutputStream;
    new-array v6, v6, [B

    .line 1917
    .local v6, "buffer":[B
    const/4 v9, 0x0

    .line 1918
    .local v9, "len":I
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v9, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 1919
    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1921
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1922
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1923
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v10

    .end local v6    # "buffer":[B
    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "len":I
    goto :goto_1

    .line 1930
    :catch_0
    move-exception v6

    .line 1931
    .local v6, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1927
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 1928
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .end local v6    # "e":Ljava/net/MalformedURLException;
    goto :goto_1

    .line 1924
    :catch_2
    move-exception v6

    .line 1925
    .local v6, "e":Ljava/net/ProtocolException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-virtual {v6}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 1933
    .end local v6    # "e":Ljava/net/ProtocolException;
    :goto_1
    nop

    .line 1934
    :goto_2
    const/4 v6, 0x0

    .line 1936
    .local v6, "mEpgs":Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1937
    .local v8, "m":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 1938
    .local v9, "i":Ljava/util/Iterator;
    new-instance v10, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;

    invoke-direct {v10}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;-><init>()V

    move-object v6, v10

    .line 1939
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1940
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1941
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1942
    .local v11, "value":Ljava/lang/String;
    new-instance v12, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;

    invoke-direct {v12}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;-><init>()V

    .line 1943
    .local v12, "epg":Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;
    invoke-virtual {v12, v10}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->setKeyTime(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v12, v11}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;->setValueContent(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v6}, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->getEpgs()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1946
    nop

    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "epg":Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;
    goto :goto_3

    .line 1950
    .end local v8    # "m":Lorg/json/JSONObject;
    .end local v9    # "i":Ljava/util/Iterator;
    :cond_1
    goto :goto_4

    .line 1947
    :catch_3
    move-exception v8

    .line 1948
    .local v8, "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "weibo"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 1951
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "return mEpgs="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1880
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->doInBackground([Ljava/lang/String;)Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;)V
    .locals 1
    .param p1, "result"    # Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;

    .line 1896
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mepgPosition(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;)V

    .line 1897
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1880
    check-cast p1, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$DownEpg;->onPostExecute(Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1900
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1901
    return-void
.end method

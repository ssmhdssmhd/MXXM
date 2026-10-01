.class public Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERR_ALIGN_UNSUPPORT:I = 0xbbd

.field public static final ERR_ARGUMENT_ILLEGAL:I = 0xbba

.field public static final ERR_CANNOT_UPDATE_POSITION:I = 0xbbc

.field public static final ERR_DIR_NOT_WRITABLE:I = 0xbc5

.field public static final ERR_ENCODING_UNSUPPORT:I = 0xbc4

.field public static final ERR_FAIL_CREATE_FILE:I = 0xbbf

.field public static final ERR_FAIL_RENAME_FILE:I = 0xbc0

.field public static final ERR_FILE_NOT_FOUND:I = 0xbc3

.field public static final ERR_IO_EXCEPTION:I = 0xbc2

.field public static final ERR_MALFORMED_URL:I = 0xbc1

.field public static final ERR_NETWORK_NOT_CONNECTED:I = 0xbbe

.field public static final ERR_SERVER_ERRORNO:I = 0xbc6

.field public static final ERR_SUBTITLE_UNKNOWN:I = 0xbb9

.field public static final ERR_UNSUPPORT_TYPE:I = 0xbbb


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorcode"    # I
    .param p2, "errormsg"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorCode:I

    .line 35
    iput-object p2, p0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorMsg:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    :try_start_0
    const-string v1, "01"

    const-string v2, "030201"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "04"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string p1, "05"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string p1, "06"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-static {p0, v0}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception p0

    .line 106
    const-string p1, "SubtitleError"

    const-string p2, "add statistic data fail"

    invoke-static {p1, p2, p0}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :goto_0
    return-void
.end method

.method public static notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;
    .param p3, "errCode"    # I
    .param p4, "errMsg"    # Ljava/lang/String;

    .line 79
    if-eqz p2, :cond_0

    .line 80
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    invoke-direct {v0, p3, p4}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;-><init>(ILjava/lang/String;)V

    .line 81
    invoke-interface {p2, v0}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;->onSubtitleError(Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;)V

    .line 83
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    return-void
.end method

.class public Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;
.super Ljava/lang/Object;
.source "DownloadResourse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;,
        Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;,
        Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static final UPDATE:I


# instance fields
.field private context:Landroid/content/Context;

.field private fileName:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;

.field private mHandler:Landroid/os/Handler;

.field private updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateList(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdownloadZip(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->downloadZip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtarZip(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->tarZip(Ljava/io/InputStream;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "DownloadResourse"

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    .line 42
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->fileName:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;

    .line 43
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    .line 42
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->fileName:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;

    .line 43
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;-><init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    .line 49
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;-><init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->fileName:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;

    .line 50
    return-void
.end method

.method private checkNetStatus()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    .line 58
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 60
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 61
    const/4 v2, 0x1

    return v2

    .line 63
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private downloadZip()V
    .locals 4

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    const-string v1, "version.txt"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 82
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v1, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName.zipVersionFile->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->fileName:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;

    iget-object v3, v3, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$FileName;->zipVersionFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nupdateList.version->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    iget v3, v3, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->version:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    iget v3, v3, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->version:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 87
    .local v1, "buffer":[B
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 89
    new-instance v2, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;-><init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V

    .line 104
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "buffer":[B
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private tarZip(Ljava/io/InputStream;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 119
    .local v3, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 120
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_4

    .line 121
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "filename":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "t":[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v5, v6

    .line 127
    .end local v4    # "filename":Ljava/lang/String;
    .local v6, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 129
    .local v7, "buffer":[B
    const/4 v8, -0x1

    .line 130
    .local v8, "count":I
    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eq v9, v10, :cond_1

    .line 131
    invoke-virtual {v4, v7, v11, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 134
    .local v9, "bytes":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 135
    iget-object v10, v1, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    const/4 v12, 0x3

    invoke-virtual {v10, v6, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 136
    .local v10, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v10, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 137
    const-string v12, "libutp"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "libletvp2p"

    .line 138
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "so"

    .line 139
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v16, v0

    goto :goto_3

    .line 140
    :cond_3
    :goto_2
    iget-object v12, v1, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    const-string v13, "libs"

    invoke-virtual {v12, v13, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    .line 141
    .local v12, "dir":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v13, "soFile":Ljava/io/File;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v14, "libFos":Ljava/io/FileOutputStream;
    invoke-virtual {v14, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 144
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 145
    iget-object v15, v1, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    const-string v11, "shenma"

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    .local v16, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v15, v11, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    sget-object v15, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->SO_NAME:Ljava/lang/String;

    invoke-interface {v11, v15, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v12    # "dir":Ljava/io/File;
    .end local v13    # "soFile":Ljava/io/File;
    .end local v14    # "libFos":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "t":[Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v7    # "buffer":[B
    .end local v8    # "count":I
    .end local v9    # "bytes":[B
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 120
    .end local v16    # "ze":Ljava/util/zip/ZipEntry;
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    :goto_4
    move-object/from16 v0, v16

    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v16    # "ze":Ljava/util/zip/ZipEntry;
    goto/16 :goto_0

    .end local v16    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_4
    move-object/from16 v16, v0

    .line 154
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    :goto_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 155
    goto :goto_6

    .line 154
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 156
    :goto_6
    return-void

    .line 154
    :goto_7
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 155
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public getStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "strUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 198
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 199
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 200
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 201
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 203
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v4

    .line 204
    const/4 v4, -0x1

    .line 205
    .local v4, "data":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 206
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "data":I
    nop

    .line 212
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    .local v1, "inStream":Ljava/io/InputStream;
    return-object v1

    .line 208
    .end local v1    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const/4 v2, 0x0

    return-object v2
.end method

.method public getStreamFromZip(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "strUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 229
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 230
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 231
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 232
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 233
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVersion()F
    .locals 7

    .line 164
    const/4 v0, 0x0

    .line 169
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    const-string v1, "http://live.lsott.com/wepower/plugs.xml"

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->getStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 170
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 172
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v2, "url"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 173
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "link"

    .line 174
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->link:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "version"

    .line 176
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->version:F

    .line 177
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "description"

    .line 178
    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->description:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2    # "nodeList":Lorg/w3c/dom/NodeList;
    goto :goto_0

    .line 179
    .end local v1    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->updateList:Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;

    iget v1, v1, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$UpdateList;->version:F

    return v1
.end method

.method public isUpdate()V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->checkNetStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;-><init>(Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;)V

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse$LoadXmlThread;->start()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/network/DownloadResourse;->context:Landroid/content/Context;

    const-string v1, "net link erro"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    :goto_0
    return-void
.end method

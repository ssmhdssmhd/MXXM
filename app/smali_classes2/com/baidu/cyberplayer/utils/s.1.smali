.class public Lcom/baidu/cyberplayer/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/utils/s$a;,
        Lcom/baidu/cyberplayer/utils/s$b;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/s$a;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/s$a;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/s;->a:Lcom/baidu/cyberplayer/utils/s$a;

    .line 41
    return-void
.end method

.method private a(ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/cyberplayer/subtitle/utils/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    invoke-direct {v0, p1, p2}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;-><init>(ILjava/lang/String;)V

    .line 212
    new-instance p1, Lcom/baidu/cyberplayer/subtitle/utils/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Lcom/baidu/cyberplayer/subtitle/utils/a;-><init>(Ljava/lang/Object;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;)V

    .line 214
    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/s;ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/utils/s;->a(ILjava/lang/String;)Lcom/baidu/cyberplayer/subtitle/utils/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/s;)Lcom/baidu/cyberplayer/utils/s$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/utils/s;->a:Lcom/baidu/cyberplayer/utils/s$a;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/s;Ljava/io/File;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/s;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/io/File;)Z
    .locals 4

    .line 187
    const-string v0, "SubtitleDownloader"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 191
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:createNewFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return v1

    .line 195
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 p1, 0x1

    return p1

    .line 198
    :catch_0
    move-exception p1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/baidu/cyberplayer/utils/s$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/cyberplayer/utils/s$b;-><init>(Lcom/baidu/cyberplayer/utils/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/s$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

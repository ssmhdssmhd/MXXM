.class final Lcom/aliyun/utils/DeviceInfoUtils$1;
.super Ljava/util/TimerTask;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/DeviceInfoUtils;->writeUUIDToFile(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uuidFile:Ljava/io/File;

.field final synthetic val$uuidValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    iput-object p2, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "writeFileDone":Z
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 163
    .local v1, "fileCorrect":Z
    :goto_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 164
    .local v2, "props":Ljava/util/Properties;
    const-string v3, "UUID"

    iget-object v4, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    if-eqz v1, :cond_2

    .line 166
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 167
    .local v3, "fileWriter":Ljava/io/FileWriter;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/4 v0, 0x1

    .line 172
    .end local v1    # "fileCorrect":Z
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    :cond_2
    goto :goto_2

    .line 171
    :catchall_0
    move-exception v1

    .line 173
    :goto_2
    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->access$008()I

    .line 174
    if-nez v0, :cond_3

    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->access$000()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 175
    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    iget-object v2, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aliyun/utils/DeviceInfoUtils;->access$100(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    :cond_3
    return-void
.end method

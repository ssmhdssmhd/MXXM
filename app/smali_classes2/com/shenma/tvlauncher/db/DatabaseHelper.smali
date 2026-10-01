.class public Lcom/shenma/tvlauncher/db/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "mikulauncher"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_APPLOVES:Ljava/lang/String; = "apploves"

.field private static mInstance:Lcom/shenma/tvlauncher/db/DatabaseHelper;


# instance fields
.field private CREATE_TABLE_APPLOVE:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/shenma/tvlauncher/db/DatabaseHelper;->mInstance:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "mikulauncher"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    const-string v0, "create table if not exists apploves (_id INTEGER PRIMARY KEY AUTOINCREMENT,packagename VARCHAR(50))"

    iput-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseHelper;->CREATE_TABLE_APPLOVE:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/shenma/tvlauncher/db/DatabaseHelper;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/db/DatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/shenma/tvlauncher/db/DatabaseHelper;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/shenma/tvlauncher/db/DatabaseHelper;->mInstance:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/shenma/tvlauncher/db/DatabaseHelper;->mInstance:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    .line 40
    :cond_0
    sget-object v1, Lcom/shenma/tvlauncher/db/DatabaseHelper;->mInstance:Lcom/shenma/tvlauncher/db/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public deleteDatabase(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const-string v0, "mikulauncher"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseHelper;->context:Landroid/content/Context;

    const-string v1, "MiKu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    iget-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseHelper;->CREATE_TABLE_APPLOVE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 58
    if-eq p2, p3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseHelper;->context:Landroid/content/Context;

    const-string v1, "MiKu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    iget-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseHelper;->CREATE_TABLE_APPLOVE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

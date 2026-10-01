.class public Lcom/shenma/tvlauncher/db/DatabaseOperator;
.super Ljava/lang/Object;
.source "DatabaseOperator.java"


# static fields
.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_CREATED:Ljava/lang/String; = "created"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

.field private sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/db/DatabaseOperator;->open()V

    .line 28
    return-void
.end method

.method private queryExistByName(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 68
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 70
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "DatabaseHelper.TABLE_APPLOVES"

    const/4 v4, 0x0

    const-string v5, "packagename=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 71
    .local v3, "c":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    return v0

    .line 76
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "c":Landroid/database/Cursor;
    :cond_0
    return v1
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 52
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/db/DatabaseOperator;->queryExistByName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "packagename"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "apploves"

    const-string v3, "_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 44
    return-void
.end method

.method public deleteApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packName"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "DatabaseHelper.TABLE_APPLOVES"

    const-string v3, "packagename=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    return-void
.end method

.method public open()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/shenma/tvlauncher/db/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/shenma/tvlauncher/db/DatabaseOperator;->databaseHelper:Lcom/shenma/tvlauncher/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 98
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "DatabaseHelper.TABLE_APPLOVES"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 99
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string v3, "packagename"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 103
    return-object v0
.end method

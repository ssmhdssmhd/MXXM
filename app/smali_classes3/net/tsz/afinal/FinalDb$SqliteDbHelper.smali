.class Lnet/tsz/afinal/FinalDb$SqliteDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteDbHelper"
.end annotation


# instance fields
.field private mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

.field final synthetic this$0:Lnet/tsz/afinal/FinalDb;


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/FinalDb;Landroid/content/Context;Ljava/lang/String;ILnet/tsz/afinal/FinalDb$DbUpdateListener;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "dbUpdateListener"    # Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .line 630
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->this$0:Lnet/tsz/afinal/FinalDb;

    .line 631
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 632
    iput-object p5, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .line 633
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 636
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 639
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    invoke-interface {v0, p1, p2, p3}, Lnet/tsz/afinal/FinalDb$DbUpdateListener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2

    .line 642
    :cond_0
    const-string v0, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 643
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 644
    nop

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 645
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 649
    .end local v0    # "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    nop

    .line 653
    :cond_3
    :goto_2
    return-void
.end method

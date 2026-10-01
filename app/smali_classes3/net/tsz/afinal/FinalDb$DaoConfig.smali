.class public Lnet/tsz/afinal/FinalDb$DaoConfig;
.super Ljava/lang/Object;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbName:Ljava/lang/String;

.field private dbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

.field private dbVersion:I

.field private debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->context:Landroid/content/Context;

    .line 588
    const-string v0, "afinal.db"

    iput-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbName:Ljava/lang/String;

    .line 589
    const/4 v0, 0x1

    iput v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbVersion:I

    .line 590
    iput-boolean v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->debug:Z

    .line 586
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 594
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbUpdateListener()Lnet/tsz/afinal/FinalDb$DbUpdateListener;
    .locals 1

    .line 618
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .line 606
    iget v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbVersion:I

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->debug:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 597
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->context:Landroid/content/Context;

    .line 598
    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .line 603
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbName:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setDbUpdateListener(Lnet/tsz/afinal/FinalDb$DbUpdateListener;)V
    .locals 0
    .param p1, "dbUpdateListener"    # Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .line 621
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .line 622
    return-void
.end method

.method public setDbVersion(I)V
    .locals 0
    .param p1, "dbVersion"    # I

    .line 609
    iput p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbVersion:I

    .line 610
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 615
    iput-boolean p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->debug:Z

    .line 616
    return-void
.end method

.class public abstract Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;
.super Lorg/apache/commons/fileupload/FileUploadException;
.source "SWFileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/SWFileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "SizeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x70cd09347e5a9e8aL


# instance fields
.field private final actual:J

.field private final permitted:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "actual"    # J
    .param p4, "permitted"    # J

    .line 984
    invoke-direct {p0, p1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    .line 985
    iput-wide p2, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;->actual:J

    .line 986
    iput-wide p4, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;->permitted:J

    .line 987
    return-void
.end method


# virtual methods
.method public getActualSize()J
    .locals 2

    .line 995
    iget-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;->actual:J

    return-wide v0
.end method

.method public getPermittedSize()J
    .locals 2

    .line 1004
    iget-wide v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;->permitted:J

    return-wide v0
.end method

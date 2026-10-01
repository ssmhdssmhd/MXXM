.class public Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;
.super Ljava/io/IOException;
.source "SWFileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/SWFileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileUploadIOException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x61ce2a48987a891aL


# instance fields
.field private final cause:Lorg/apache/commons/fileupload/FileUploadException;


# direct methods
.method public constructor <init>(Lorg/apache/commons/fileupload/FileUploadException;)V
    .locals 0
    .param p1, "pCause"    # Lorg/apache/commons/fileupload/FileUploadException;

    .line 873
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 875
    iput-object p1, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;->cause:Lorg/apache/commons/fileupload/FileUploadException;

    .line 876
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 884
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$FileUploadIOException;->cause:Lorg/apache/commons/fileupload/FileUploadException;

    return-object v0
.end method

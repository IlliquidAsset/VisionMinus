.class public Lcom/cclink/obbdownloader/common/XAPKFile;
.super Ljava/lang/Object;
.source "XAPKFile.java"


# instance fields
.field public final mFileSize:J

.field public final mFileVersion:I

.field public final mIsMain:Z


# direct methods
.method public constructor <init>(ZIJ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    .line 16
    iput p2, p0, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileVersion:I

    .line 17
    iput-wide p3, p0, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileSize:J

    return-void
.end method

.class public Lcom/cclink/obbdownloader/copy/ObbCopyHelper;
.super Ljava/lang/Object;
.source "ObbCopyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;,
        Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCopyProgressDlg:Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;

.field private mListener:Lcom/cclink/obbdownloader/copy/ObbCopyListener;

.field private xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V
    .locals 9

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getMainObbVersion()I

    move-result p1

    .line 33
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getMainObbFileSize()J

    move-result-wide v0

    .line 34
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getPatchObbVersion()I

    move-result v2

    .line 35
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getPatchObbFileSize()J

    move-result-wide v3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    if-lez v2, :cond_1

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v0, v5

    if-lez v8, :cond_0

    cmp-long v8, v3, v5

    if-lez v8, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 38
    iput-object v5, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 39
    new-instance v6, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v6, v7, p1, v0, v1}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v6, v5, p2

    .line 40
    iget-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    new-instance v0, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v0, p2, v2, v3, v4}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v0, p1, v7

    goto :goto_0

    :cond_0
    new-array v2, v7, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 42
    iput-object v2, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 43
    new-instance v3, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v3, v7, p1, v0, v1}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v3, v2, p2

    goto :goto_0

    :cond_1
    new-array p1, p2, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 46
    iput-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->mCopyProgressDlg:Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->mListener:Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    return-object p0
.end method

.method private copy([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cclink/obbdownloader/util/XAPKFileUitl;->checkXAPKs(Landroid/content/Context;[Lcom/cclink/obbdownloader/common/XAPKFile;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "APKExpansionCopy"

    const-string p2, "Copy failed, obb file check failed"

    .line 64
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 66
    invoke-interface {p3}, Lcom/cclink/obbdownloader/copy/ObbCopyListener;->onCopyFailed()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p3}, Lcom/cclink/obbdownloader/copy/ObbCopyListener;->onCopyComplete()V

    goto :goto_0

    .line 76
    :cond_1
    iput-object p3, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->mListener:Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    .line 77
    new-instance p1, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;

    iget-object p3, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {p1, p0, p3, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;-><init>(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;[Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public copyAllToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {p0, v0, p1, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->copy([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V

    return-void
.end method

.method public copyMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-static {v0}, Lcom/cclink/obbdownloader/util/XAPKFileUitl;->getMainXAPKs([Lcom/cclink/obbdownloader/common/XAPKFile;)[Lcom/cclink/obbdownloader/common/XAPKFile;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->copy([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V

    return-void
.end method

.method public copyPatchobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-static {v0}, Lcom/cclink/obbdownloader/util/XAPKFileUitl;->getPatchXAPKs([Lcom/cclink/obbdownloader/common/XAPKFile;)[Lcom/cclink/obbdownloader/common/XAPKFile;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->copy([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/copy/ObbCopyListener;)V

    return-void
.end method

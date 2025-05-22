.class public Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;
.super Ljava/lang/Object;
.source "ObbUnzipHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;,
        Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;
    }
.end annotation


# static fields
.field public static final GOOGLE_PLAY_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmOhP0lWIgb5qD6zSJl/GPxjpBFqGfK5r12rRLSUw/Hw2K2nZLjPdrH2Ry+cWll1hQ/qPSY3+fk/4AVRaSKWX0vRgzUs2XiQ95sPZLlb5RudniTmZsJ/fqrzG21G08/ap7je4wE4QZekY0zQJM/EiCDa32Uc1QRQE+RPmZeGQ6aNEDgObMDCGEWc/Pa6zcuOaKbdU7hJasKlAIE35HGGjUc62nZbNyzv/bTdJSRjhpSA5LiY3gxasA3g3NMOW0mLbSTgd7F9upNArk8RkwKcvem/p6dYiaaQmXiOe4oga1yQHViamLIjK34xgVQjcCWoRa4C1e9oLCxuWDgsDJ/Zb0wIDAQAB"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

.field private mUnzipProgressDlg:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;

.field private xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cclink/obbdownloader/ObbInfo;)V
    .locals 10

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getMainObbVersion()I

    move-result v0

    .line 36
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getMainObbFileSize()J

    move-result-wide v1

    .line 37
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getPatchObbVersion()I

    move-result v3

    .line 38
    invoke-virtual {p2}, Lcom/cclink/obbdownloader/ObbInfo;->getPatchObbFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 p2, 0x0

    const/4 v8, 0x1

    if-lez v0, :cond_1

    if-lez v3, :cond_1

    cmp-long v9, v1, v6

    if-lez v9, :cond_0

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 41
    iput-object v6, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 42
    new-instance v7, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v7, v8, v0, v1, v2}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v7, v6, p2

    .line 43
    iget-object v0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    new-instance v1, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v1, p2, v3, v4, v5}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v1, v0, v8

    goto :goto_0

    :cond_0
    new-array v3, v8, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 45
    iput-object v3, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 46
    new-instance v4, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v4, v8, v0, v1, v2}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v4, v3, p2

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    cmp-long v3, v1, v6

    if-lez v3, :cond_2

    new-array v3, v8, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 49
    iput-object v3, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 50
    new-instance v4, Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {v4, v8, v0, v1, v2}, Lcom/cclink/obbdownloader/common/XAPKFile;-><init>(ZIJ)V

    aput-object v4, v3, p2

    goto :goto_0

    :cond_2
    new-array p2, p2, [Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 52
    iput-object p2, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 55
    :goto_0
    new-instance p2, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;

    invoke-direct {p2, p0, p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;-><init>(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->mUnzipProgressDlg:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->mUnzipProgressDlg:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->mListener:Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    return-object p0
.end method

.method private unzip([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cclink/obbdownloader/util/XAPKFileUitl;->checkXAPKs(Landroid/content/Context;[Lcom/cclink/obbdownloader/common/XAPKFile;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "APKExpansionUnzip"

    const-string p2, "Unzip failed, obb file check failed"

    .line 72
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 74
    invoke-interface {p3}, Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;->onUnzipFailed()V

    goto :goto_0

    .line 79
    :cond_0
    iput-object p3, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->mListener:Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    .line 80
    new-instance p1, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;

    iget-object p3, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {p1, p0, p3, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;-><init>(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;[Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public unzipAllToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-direct {p0, v0, p1, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->unzip([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V

    return-void
.end method

.method public unzipMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-static {v0}, Lcom/cclink/obbdownloader/util/XAPKFileUitl;->getMainXAPKs([Lcom/cclink/obbdownloader/common/XAPKFile;)[Lcom/cclink/obbdownloader/common/XAPKFile;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->unzip([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V

    return-void
.end method

.method public unzipPatchobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->xAPKS:[Lcom/cclink/obbdownloader/common/XAPKFile;

    invoke-static {v0}, Lcom/cclink/obbdownloader/util/XAPKFileUitl;->getPatchXAPKs([Lcom/cclink/obbdownloader/common/XAPKFile;)[Lcom/cclink/obbdownloader/common/XAPKFile;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->unzip([Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;)V

    return-void
.end method

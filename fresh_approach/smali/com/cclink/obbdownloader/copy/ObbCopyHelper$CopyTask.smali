.class Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;
.super Landroid/os/AsyncTask;
.source "ObbCopyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cclink/obbdownloader/copy/ObbCopyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDestFolder:Ljava/lang/String;

.field private mXFiles:[Lcom/cclink/obbdownloader/common/XAPKFile;

.field final synthetic this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;


# direct methods
.method public constructor <init>(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;[Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->mXFiles:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 88
    iput-object p3, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->mDestFolder:Ljava/lang/String;

    return-void
.end method

.method private copy(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "APKExpansionCopy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Copy failed, obb file does not exist"

    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 113
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Copy failed, create dirs failed"

    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {v0}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$100(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setProgress(I)V

    const/4 v0, 0x0

    .line 126
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 127
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v4, 0x0

    const/16 v0, 0x4000

    new-array v0, v0, [B

    const/4 v6, 0x0

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4

    .line 136
    invoke-virtual {v3, v0, v2, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v4, v7

    const-wide/16 v7, 0x64

    mul-long v7, v7, v4

    .line 138
    div-long/2addr v7, p1

    long-to-int v8, v7

    const/16 v7, 0x64

    if-le v8, v7, :cond_3

    const/16 v8, 0x64

    :cond_3
    if-eq v6, v8, :cond_2

    .line 144
    iget-object v6, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {v6}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$100(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->setProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v8

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v3, v0

    :goto_2
    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v3, :cond_6

    .line 152
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 p1, 0x0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->mXFiles:[Lcom/cclink/obbdownloader/common/XAPKFile;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 95
    iget-object v4, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {v4}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$000(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, v3, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    iget v3, v3, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileVersion:I

    invoke-static {v4, v5, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {v4}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$000(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->mDestFolder:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->copy(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 104
    :catch_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "APKExpansionCopy"

    if-eqz p1, :cond_0

    const-string p1, "Copy file success"

    .line 161
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$200(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$200(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyListener;->onCopyComplete()V

    goto :goto_0

    :cond_0
    const-string p1, "Copy file failed"

    .line 166
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$200(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$200(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyListener;->onCopyFailed()V

    .line 171
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->this$0:Lcom/cclink/obbdownloader/copy/ObbCopyHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper;->access$100(Lcom/cclink/obbdownloader/copy/ObbCopyHelper;)Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyProgressDialog;->dismiss()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/copy/ObbCopyHelper$CopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.class Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;
.super Landroid/os/AsyncTask;
.source "ObbUnzipHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnzipTask"
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

.field final synthetic this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;


# direct methods
.method public constructor <init>(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;[Lcom/cclink/obbdownloader/common/XAPKFile;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->mXFiles:[Lcom/cclink/obbdownloader/common/XAPKFile;

    .line 90
    iput-object p3, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->mDestFolder:Ljava/lang/String;

    return-void
.end method

.method private unzip(Ljava/io/File;Ljava/lang/String;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 111
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "APKExpansionUnzip"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v0, "Unzip failed, obb file does not exist"

    .line 112
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 115
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "Unzip failed, create dirs failed"

    if-nez v5, :cond_1

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 123
    :cond_1
    iget-object v2, v1, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {v2}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$100(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setProgress(I)V

    .line 124
    new-instance v2, Ljava/util/zip/ZipFile;

    move-object/from16 v5, p1

    invoke-direct {v2, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    .line 128
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 130
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 131
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/zip/ZipEntry;

    .line 132
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    add-long/2addr v10, v12

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-wide v12, v8

    const/4 v9, 0x0

    move-object v8, v5

    .line 141
    :goto_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 142
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/zip/ZipEntry;

    .line 143
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 144
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 147
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_8

    .line 148
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_4

    .line 192
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v8, :cond_5

    .line 195
    :goto_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 197
    :cond_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_6
    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v0, "Unzip failed, dir conflicts"

    .line 153
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_7

    .line 192
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v8, :cond_5

    goto :goto_2

    :cond_8
    move-object/from16 v16, v3

    const/4 v15, 0x0

    goto/16 :goto_4

    .line 158
    :cond_9
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b

    .line 161
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v0, "Unzip failed, create file failed"

    .line 162
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_a

    .line 192
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v8, :cond_5

    goto :goto_2

    .line 166
    :cond_b
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, "Unzip failed, file conflicts"

    .line 167
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_c

    .line 192
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v8, :cond_5

    goto :goto_2

    .line 171
    :cond_d
    :try_start_5
    invoke-virtual {v2, v14}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 172
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v8, 0x4000

    :try_start_6
    new-array v8, v8, [B

    .line 176
    :goto_3
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_10

    const/4 v15, 0x0

    .line 177
    invoke-virtual {v4, v8, v15, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v3

    move-object/from16 p1, v4

    int-to-long v3, v14

    add-long/2addr v12, v3

    const-wide/16 v3, 0x64

    mul-long v3, v3, v12

    .line 179
    :try_start_7
    div-long/2addr v3, v10

    long-to-int v4, v3

    const/16 v3, 0x64

    if-le v4, v3, :cond_e

    const/16 v4, 0x64

    :cond_e
    if-eq v9, v4, :cond_f

    .line 185
    iget-object v3, v1, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {v3}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$100(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->setProgress(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v9, v4

    :cond_f
    move-object/from16 v4, p1

    move-object/from16 v3, v16

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_10
    move-object/from16 v16, v3

    move-object/from16 p1, v4

    const/4 v15, 0x0

    move-object/from16 v8, p1

    :goto_4
    move-object/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 p1, v4

    :goto_5
    move-object/from16 v8, p1

    goto :goto_6

    :cond_11
    if-eqz v5, :cond_12

    .line 192
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_12
    if-eqz v8, :cond_13

    .line 195
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 197
    :cond_13
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v8, v5

    :goto_6
    if-eqz v5, :cond_14

    .line 192
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_14
    if-eqz v8, :cond_15

    .line 195
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 197
    :cond_15
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 p1, 0x0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->mXFiles:[Lcom/cclink/obbdownloader/common/XAPKFile;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    iget-object v4, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {v4}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$000(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, v3, Lcom/cclink/obbdownloader/common/XAPKFile;->mIsMain:Z

    iget v3, v3, Lcom/cclink/obbdownloader/common/XAPKFile;->mFileVersion:I

    invoke-static {v4, v5, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {v4}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$000(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->mDestFolder:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->unzip(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 106
    :catch_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "APKExpansionUnzip"

    if-eqz p1, :cond_0

    const-string p1, "Unzip file success"

    .line 205
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$200(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$200(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;->onUnzipComplete()V

    goto :goto_0

    :cond_0
    const-string p1, "Unzip file failed"

    .line 210
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$200(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$200(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipListener;->onUnzipFailed()V

    .line 215
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->this$0:Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;

    invoke-static {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;->access$100(Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper;)Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipProgressDialog;->dismiss()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cclink/obbdownloader/unzip/ObbUnzipHelper$UnzipTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.class public Lcn/sharesdk/wechat/utils/WXFileObject;
.super Ljava/lang/Object;
.source "WXFileObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    .line 14
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 6

    .line 48
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    const/high16 v2, 0xa00000

    if-le v0, v2, :cond_2

    .line 54
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, fileData is too large"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 57
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 59
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, fileSize is too large"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_4
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "checkArgs fail, both arguments is null"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    const-string v1, "_wxfileobject_fileData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 35
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    const-string v1, "_wxfileobject_filePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFileData([B)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxfileobject_fileData"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->fileData:[B

    const-string v0, "_wxfileobject_filePath"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXFileObject;->filePath:Ljava/lang/String;

    return-void
.end method

.class public Lcom/mob/commons/filesys/FileUploader;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;,
        Lcom/mob/commons/filesys/FileUploader$UploadedAudio;,
        Lcom/mob/commons/filesys/FileUploader$UploadedVideo;,
        Lcom/mob/commons/filesys/FileUploader$UploadedImage;,
        Lcom/mob/commons/filesys/FileUploader$UploadedFile;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://up.sdk.mob.com"

    .line 23
    invoke-static {v0}, Lcom/mob/commons/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    const-string v1, "1234567890abcdeffedcba0987654321"

    .line 172
    invoke-static {p0, v1}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 173
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 p0, 0x7530

    .line 174
    iput p0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 p0, 0x1388

    .line 175
    iput p0, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 176
    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 177
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "status"

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "res"

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "token"

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(JJ)Ljava/lang/Throwable;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"status\": ,\"error\":\"max size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", file size: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v1, Lcom/mob/tools/network/KVPair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sign"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "product"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance p1, Lcom/mob/tools/network/KVPair;

    invoke-static {p0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "cliid"

    invoke-direct {p1, v1, p0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/mob/commons/b;->ad()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-gtz v3, :cond_2

    .line 146
    new-instance v4, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v4}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 147
    invoke-static {p0}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p4

    .line 148
    invoke-static {p0, p4}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 149
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 151
    new-instance p5, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, p4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    new-instance v7, Lcom/mob/tools/network/KVPair;

    const-string p0, "file"

    invoke-direct {v7, p0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    new-instance v9, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v9}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 p0, 0x7530

    .line 155
    iput p0, v9, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 p0, 0x1388

    .line 156
    iput p0, v9, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    move-object v5, p3

    .line 157
    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1, p0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "status"

    .line 159
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "200"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "res"

    .line 160
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0

    .line 162
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Lcom/mob/commons/filesys/FileUploader;->a(JJ)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 139
    :cond_3
    new-instance p0, Lcom/mob/commons/ForbThrowable;

    invoke-direct {p0}, Lcom/mob/commons/ForbThrowable;-><init>()V

    throw p0
.end method

.method private static a(Lcom/mob/commons/MobProduct;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 127
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "sm"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "zoomScaleWidths"

    .line 129
    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-wide/32 v4, 0xa00000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 132
    invoke-static/range {v0 .. v5}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/getToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setUploadServer(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/mob/commons/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/filesys/FileUploader;->a:Ljava/lang/String;

    return-void
.end method

.method public static uploadAudio(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z)Lcom/mob/commons/filesys/FileUploader$UploadedAudio;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 101
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "sm"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v4, 0xc800000

    .line 103
    new-instance p2, Lcom/mob/commons/filesys/FileUploader$UploadedAudio;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->d()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/mob/commons/filesys/FileUploader$UploadedAudio;-><init>(Ljava/util/HashMap;)V

    return-object p2
.end method

.method public static uploadAvatar(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 58
    invoke-static {p0, p1, v0, v1}, Lcom/mob/commons/filesys/FileUploader;->uploadAvatar(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;

    move-result-object p0

    return-object p0
.end method

.method public static varargs uploadAvatar(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 68
    array-length v1, p3

    if-lez v1, :cond_1

    .line 70
    array-length v1, p3

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, p3, v2

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p3, 0x1

    .line 74
    invoke-virtual {v3, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    new-instance p3, Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/mob/commons/filesys/FileUploader$UploadedAvatar;-><init>(Ljava/util/HashMap;)V

    return-object p3
.end method

.method public static uploadFile(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z)Lcom/mob/commons/filesys/FileUploader$UploadedFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 113
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "sm"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v4, 0x3200000

    .line 115
    new-instance p2, Lcom/mob/commons/filesys/FileUploader$UploadedFile;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->e()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/mob/commons/filesys/FileUploader$UploadedFile;-><init>(Ljava/util/HashMap;)V

    return-object p2
.end method

.method public static uploadImage(Lcom/mob/commons/MobProduct;Ljava/lang/String;)Lcom/mob/commons/filesys/FileUploader$UploadedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 33
    invoke-static {p0, p1, v0, v1}, Lcom/mob/commons/filesys/FileUploader;->uploadImage(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedImage;

    move-result-object p0

    return-object p0
.end method

.method public static varargs uploadImage(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z[I)Lcom/mob/commons/filesys/FileUploader$UploadedImage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 43
    array-length v1, p3

    if-lez v1, :cond_1

    .line 45
    array-length v1, p3

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, p3, v2

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p3, 0x1

    .line 49
    invoke-virtual {v3, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_1
    new-instance p3, Lcom/mob/commons/filesys/FileUploader$UploadedImage;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/mob/commons/filesys/FileUploader$UploadedImage;-><init>(Ljava/util/HashMap;)V

    return-object p3
.end method

.method public static uploadVideo(Lcom/mob/commons/MobProduct;Ljava/lang/String;Z)Lcom/mob/commons/filesys/FileUploader$UploadedVideo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 89
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "sm"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v4, 0xc800000

    .line 91
    new-instance p2, Lcom/mob/commons/filesys/FileUploader$UploadedVideo;

    invoke-static {}, Lcom/mob/commons/filesys/FileUploader;->c()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mob/commons/filesys/FileUploader;->a(Lcom/mob/commons/MobProduct;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/mob/commons/filesys/FileUploader$UploadedVideo;-><init>(Ljava/util/HashMap;)V

    return-object p2
.end method

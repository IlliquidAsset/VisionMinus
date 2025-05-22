.class public Lcn/sharesdk/youtube/b;
.super Lcn/sharesdk/framework/e;
.source "YoutubeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/youtube/b$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcn/sharesdk/youtube/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/b;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcn/sharesdk/framework/PlatformActionListener;

.field private l:Lcom/mob/tools/network/OnReadListener;

.field private m:Lcn/sharesdk/youtube/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;-><init>(Lcn/sharesdk/framework/Platform;)V

    const-string p1, "https://www.googleapis.com/auth/youtube"

    const-string v0, "https://www.googleapis.com/auth/youtube.upload"

    const-string v1, "https://www.googleapis.com/auth/youtube.readonly"

    const-string v2, "https://www.googleapis.com/auth/youtubepartner-channel-audit"

    const-string v3, "https://www.googleapis.com/auth/plus.me"

    .line 46
    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    .line 83
    new-instance p1, Lcn/sharesdk/youtube/b$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/sharesdk/youtube/b$a;-><init>(Lcn/sharesdk/youtube/b;Lcn/sharesdk/youtube/b$1;)V

    iput-object p1, p0, Lcn/sharesdk/youtube/b;->m:Lcn/sharesdk/youtube/b$a;

    .line 84
    invoke-static {}, Lcn/sharesdk/framework/a/b;->a()Lcn/sharesdk/framework/a/b;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/b;

    .line 85
    new-instance p1, Lcn/sharesdk/youtube/b$1;

    invoke-direct {p1, p0}, Lcn/sharesdk/youtube/b$1;-><init>(Lcn/sharesdk/youtube/b;)V

    iput-object p1, p0, Lcn/sharesdk/youtube/b;->l:Lcom/mob/tools/network/OnReadListener;

    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/youtube/b;
    .locals 2

    .line 94
    const-class v0, Lcn/sharesdk/youtube/b;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    if-nez v1, :cond_1

    .line 96
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :try_start_1
    sget-object v1, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcn/sharesdk/youtube/b;

    invoke-direct {v1, p0}, Lcn/sharesdk/youtube/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v1, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    .line 100
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 102
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    sget-object p0, Lcn/sharesdk/youtube/b;->g:Lcn/sharesdk/youtube/b;

    return-object p0

    :catchall_1
    move-exception p0

    .line 102
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method static synthetic a(Lcn/sharesdk/youtube/b;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/sharesdk/youtube/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/youtube/b;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/sharesdk/youtube/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    .line 269
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "android.intent.extra.TEXT"

    .line 270
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.TITLE"

    .line 271
    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.STREAM"

    .line 272
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 274
    invoke-virtual {v1, v0, p3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 275
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 276
    iget-object p4, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string p5, "youtube"

    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 277
    iget-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 278
    new-instance p3, Landroid/content/ComponentName;

    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p3, p4, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 280
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 284
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcn/sharesdk/youtube/b;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v0, Lcom/mob/tools/network/KVPair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/youtube/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-direct {v0, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/mob/tools/network/KVPair;

    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Upload-Content-Length"

    invoke-direct {v0, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v0, "file"

    invoke-direct {v3, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/b;

    iget-object v6, p0, Lcn/sharesdk/youtube/b;->l:Lcom/mob/tools/network/OnReadListener;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/OnReadListener;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 220
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 222
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 224
    :cond_0
    iget-object p2, p0, Lcn/sharesdk/youtube/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 v0, 0x9

    invoke-interface {p3, p2, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 158
    :try_start_0
    invoke-virtual {p0, p3, p1, p2, p4}, Lcn/sharesdk/youtube/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_0

    .line 161
    iget-object p2, p0, Lcn/sharesdk/youtube/b;->a:Lcn/sharesdk/framework/Platform;

    const/16 p3, 0x9

    invoke-interface {p4, p2, p3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v6, "public"

    const/4 v7, 0x1

    const-string v8, "youtube"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 181
    invoke-virtual/range {v0 .. v8}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v1, Lcom/mob/tools/network/KVPair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/sharesdk/youtube/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-Type"

    const-string v3, "application/json;charset=UTF-8"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "X-Upload-Content-Length"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "X-Upload-Content-Type"

    const-string v2, "video/*"

    invoke-direct {p1, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    .line 193
    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "description"

    .line 194
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "tags"

    .line 196
    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "categoryId"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "privacyStatus"

    .line 200
    invoke-virtual {p2, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "embeddable"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "license"

    .line 202
    invoke-virtual {p2, p3, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "snippet"

    .line 205
    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    .line 206
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object p1, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/b;

    const/4 p5, 0x0

    iget-object p6, p0, Lcn/sharesdk/youtube/b;->m:Lcn/sharesdk/youtube/b$a;

    const-string p2, "https://www.googleapis.com/upload/youtube/v3/videos?uploadType=resumable&part=snippet,status"

    move-object p4, v0

    invoke-virtual/range {p1 .. p6}, Lcn/sharesdk/framework/a/b;->jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    array-length v0, p1

    if-lez v0, :cond_0

    .line 128
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 3

    const/4 v0, 0x0

    .line 250
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.youtube"

    .line 251
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 252
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :catchall_0
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 170
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "10000"

    :goto_0
    move-object v2, v0

    .line 174
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->j:Ljava/lang/String;

    .line 175
    iput-object p4, p0, Lcn/sharesdk/youtube/b;->k:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v6, 0x16

    const-string v5, ""

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    .line 176
    invoke-virtual/range {v1 .. v6}, Lcn/sharesdk/youtube/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->b:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/sharesdk/youtube/b;->f:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/youtube/b;->b:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p1, Lcom/mob/tools/network/KVPair;

    iget-object v1, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    const-string v2, "redirect_uri"

    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-direct {p1, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Lcn/sharesdk/youtube/b;->h:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/youtube/b;->c()I

    move-result v1

    const-string v2, "https://accounts.google.com/o/oauth2/token"

    const-string v3, "o/oauth2/token"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 4

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/youtube/b;->b:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    const-string v3, "redirect_uri"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, p0, Lcn/sharesdk/youtube/b;->e:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 235
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, " "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "scope"

    invoke-direct {v2, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_type"

    const-string v3, "offline"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://accounts.google.com/o/oauth2/v2/auth?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/g;)Lcn/sharesdk/framework/authorize/c;
    .locals 1

    .line 138
    new-instance v0, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;

    invoke-direct {v0, p1}, Lcn/sharesdk/youtube/YoutubeAuthorizeWebviewClient;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/sharesdk/youtube/b;->c:Ljava/lang/String;

    return-object v0
.end method

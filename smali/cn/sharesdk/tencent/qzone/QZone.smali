.class public Lcn/sharesdk/tencent/qzone/QZone;
.super Lcn/sharesdk/framework/Platform;
.source "QZone.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcn/sharesdk/tencent/qzone/QZone;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method private a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    new-instance v0, Lcn/sharesdk/framework/utils/e;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/e;-><init>()V

    const-string v1, "com.qzone"

    const-string v2, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    .line 166
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1, p0}, Lcn/sharesdk/framework/utils/e;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 169
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/QZone;ILjava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/qzone/QZone;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method private b(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 5

    .line 174
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isShareTencentWeibo()Z

    move-result v2

    const/16 v3, 0x9

    .line 178
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setImagePath(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_1

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/QZone;->isAuthValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/QZone;->getPlatformActionListener()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    .line 184
    new-instance v1, Lcn/sharesdk/tencent/qzone/QZone$2;

    invoke-direct {v1, p0, v0, p1}, Lcn/sharesdk/tencent/qzone/QZone$2;-><init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 202
    invoke-virtual {p0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 203
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/QZone;->authorize()V

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 208
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "share params\' value of text is empty!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0, v0, v4}, Lcn/sharesdk/tencent/qzone/QZone;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 214
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v4

    if-eqz v2, :cond_4

    .line 217
    invoke-virtual {v4, v1, v0}, Lcn/sharesdk/tencent/qzone/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {v4, v1, v0}, Lcn/sharesdk/tencent/qzone/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    .line 222
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5

    .line 223
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    const-string v4, "response is empty"

    invoke-direct {v2, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    const-string v1, "ShareParams"

    .line 227
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_6

    .line 229
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 233
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method private c(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x9

    .line 241
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/tencent/qzone/QZone;->isClientValid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v11, v4

    goto :goto_0

    :cond_0
    move-object v11, v3

    .line 255
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSite()Ljava/lang/String;

    move-result-object v12

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v13

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v7

    .line 261
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 262
    invoke-virtual {v1, v4, v6}, Lcn/sharesdk/tencent/qzone/QZone;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    :cond_1
    move-object v10, v4

    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    invoke-virtual {v1, v3, v6}, Lcn/sharesdk/tencent/qzone/QZone;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitleUrl(Ljava/lang/String;)V

    :cond_2
    move-object v9, v3

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getQQMiniProgramAppid()Ljava/lang/String;

    move-result-object v14

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getQQMiniProgramPath()Ljava/lang/String;

    move-result-object v15

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getQQMiniProgramType()Ljava/lang/String;

    move-result-object v16

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v17

    .line 276
    invoke-static/range {p0 .. p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v6

    .line 277
    new-instance v3, Lcn/sharesdk/tencent/qzone/QZone$3;

    invoke-direct {v3, v1, v0}, Lcn/sharesdk/tencent/qzone/QZone$3;-><init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/Platform$ShareParams;)V

    move-object/from16 v18, v3

    invoke-virtual/range {v6 .. v18}, Lcn/sharesdk/tencent/qzone/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_1

    .line 249
    :cond_3
    iget-object v0, v1, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, v1, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v3, Lcn/sharesdk/tencent/qzone/QQClientNotExistException;

    invoke-direct {v3}, Lcn/sharesdk/tencent/qzone/QQClientNotExistException;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 300
    iget-object v3, v1, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v3, :cond_5

    .line 301
    iget-object v3, v1, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v3, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic k(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic l(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic m(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic n(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic o(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic p(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic q(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 4

    .line 130
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/b;->b()Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->b:Z

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    return v3

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/QZone;->isAuthValid()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/qzone/QZone;->innerAuthorize(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/b;->a(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/b;->b(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/b;->c(Ljava/lang/String;)V

    return v3
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/b;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/b;->a([Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcn/sharesdk/tencent/qzone/QZone$1;

    invoke-direct {p1, p0, v0}, Lcn/sharesdk/tencent/qzone/QZone$1;-><init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/tencent/qzone/b;)V

    .line 126
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/QZone;->isSSODisable()Z

    move-result v1

    .line 85
    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 410
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v0

    .line 411
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/tencent/qzone/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 412
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "ret"

    .line 419
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 420
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_1

    .line 421
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, p3, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    return-void

    .line 426
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    .line 428
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_3

    .line 429
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 430
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, p3, p4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void

    .line 435
    :cond_4
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_5

    .line 436
    iget-object p2, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p2, p0, p3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_5
    return-void

    .line 413
    :cond_6
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_7

    .line 414
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, p3, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 2

    .line 146
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->b:Z

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 151
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isShareTencentWeibo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->b(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/b/b/f$a;"
        }
    .end annotation

    .line 441
    new-instance v0, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 442
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 446
    iget-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "large_url"

    .line 447
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 448
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "small_url"

    .line 449
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 450
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 452
    iget-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 456
    iget-object v1, v0, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 460
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "titleUrl"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getSite()Ljava/lang/String;

    move-result-object p1

    const-string v1, "site"

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iput-object p2, v0, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 307
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v0, 0x6

    invoke-interface {p1, p0, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .locals 0

    .line 402
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x2

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 2

    const-string p1, "AppId"

    .line 33
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    const-string v0, "BypassApproval"

    .line 34
    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qzone/QZone;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->b:Z

    .line 37
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "QQ"

    .line 38
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of QQ, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method public isClientValid()Z
    .locals 2

    .line 76
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/b;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/b;->d()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 4

    const-string v0, "app_id"

    const-string v1, "AppId"

    .line 60
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/16 v2, 0x18

    .line 65
    invoke-virtual {p0, v2, v0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x6

    .line 67
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/tencent/qzone/QZone;->copyNetworkDevinfo(II)V

    .line 68
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qzone/QZone;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Try to use the dev info of QQ, this will cause Id and SortId field are always 0."

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 313
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x7

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 14

    const-string v0, "1"

    const-string v1, "is_yellow_vip"

    const-string v2, "figureurl"

    const-string v3, "figureurl_1"

    const-string v4, "figureurl_2"

    const-string v5, "figureurl_qq_1"

    const-string v6, "figureurl_qq_2"

    const-string v7, "nickname"

    const-string v8, "ret"

    const-string v9, "userTags"

    const-string v10, "gender"

    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gez v11, :cond_1

    .line 320
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v11, 0x8

    if-eqz p1, :cond_15

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gez v12, :cond_2

    goto/16 :goto_5

    .line 331
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/b;

    move-result-object v12

    .line 334
    :try_start_0
    invoke-virtual {v12, p1}, Lcn/sharesdk/tencent/qzone/b;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 335
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v13

    if-gtz v13, :cond_3

    goto/16 :goto_3

    .line 342
    :cond_3
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 343
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 344
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    return-void

    .line 349
    :cond_5
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_7

    .line 351
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_6

    .line 352
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1, v12}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 353
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v11, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    return-void

    .line 357
    :cond_7
    iget-object v8, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v8}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v8

    if-ne p1, v8, :cond_10

    .line 358
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "iconQQ"

    if-eqz p1, :cond_8

    .line 360
    :try_start_1
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_8
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 362
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_9
    :goto_0
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "icon"

    if-eqz p1, :cond_a

    .line 365
    :try_start_2
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_a
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 367
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_b
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 369
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_c
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "secretType"

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 375
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserLevel"

    const-string v2, "level"

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_d
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_gender_male"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 379
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_gender_female"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 380
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 381
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "0"

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 382
    :cond_e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 383
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 385
    :cond_f
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "2"

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_10
    :goto_2
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_14

    .line 389
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v9}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 390
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v9}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_11
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v11, v12}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_4

    .line 336
    :cond_12
    :goto_3
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_13

    .line 337
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_13
    return-void

    :catchall_0
    move-exception p1

    .line 395
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 396
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v11, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_14
    :goto_4
    return-void

    .line 324
    :cond_15
    :goto_5
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_16

    .line 325
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "qq account is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_16
    return-void
.end method

.class public Lcn/sharesdk/tencent/qq/QQ;
.super Lcn/sharesdk/framework/Platform;
.source "QQ.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcn/sharesdk/tencent/qq/QQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->b:Z

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qq/QQ;ILjava/lang/Object;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/qq/QQ;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic k(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic l(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic m(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic n(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic o(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic p(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic q(Lcn/sharesdk/tencent/qq/QQ;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 4

    .line 139
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/c;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/c;->b()Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/sharesdk/tencent/qq/QQ;->c:Z

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    return v3

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/QQ;->isAuthValid()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    instance-of v1, p2, Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 145
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->isShareTencentWeibo()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/tencent/qq/QQ;->innerAuthorize(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qq/c;->a(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qq/c;->b(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qq/c;->d(Ljava/lang/String;)V

    return v3
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 2

    .line 92
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/c;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/c;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qq/c;->a([Ljava/lang/String;)V

    .line 95
    new-instance p1, Lcn/sharesdk/tencent/qq/QQ$1;

    invoke-direct {p1, p0, v0}, Lcn/sharesdk/tencent/qq/QQ$1;-><init>(Lcn/sharesdk/tencent/qq/QQ;Lcn/sharesdk/tencent/qq/c;)V

    .line 134
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qq/QQ;->isSSODisable()Z

    move-result v1

    .line 95
    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
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

    .line 337
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 157
    invoke-static/range {p0 .. p0}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/c;

    move-result-object v2

    .line 158
    iget-boolean v3, v1, Lcn/sharesdk/tencent/qq/QQ;->c:Z

    const/16 v4, 0x9

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcn/sharesdk/tencent/qq/c;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    :try_start_0
    iget-object v3, v1, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v2, v1, v0, v3}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 162
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v2, v1, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 167
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->isShareTencentWeibo()Z

    move-result v10

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getHidden()I

    move-result v11

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getQQMiniProgramAppid()Ljava/lang/String;

    move-result-object v12

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getQQMiniProgramPath()Ljava/lang/String;

    move-result-object v13

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getQQMiniProgramType()Ljava/lang/String;

    move-result-object v14

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v15

    .line 183
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 184
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 185
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 186
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "qq share must have one param at least"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v4, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    return-void

    .line 193
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move/from16 v16, v15

    const/4 v15, 0x0

    if-nez v4, :cond_3

    .line 194
    invoke-virtual {v1, v9, v15}, Lcn/sharesdk/tencent/qq/QQ;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitleUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, v9

    .line 197
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 198
    invoke-virtual {v1, v5, v15}, Lcn/sharesdk/tencent/qq/QQ;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-virtual {v0, v5}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 202
    :cond_4
    new-instance v9, Lcn/sharesdk/tencent/qq/QQ$2;

    invoke-direct {v9, v1}, Lcn/sharesdk/tencent/qq/QQ$2;-><init>(Lcn/sharesdk/tencent/qq/QQ;)V

    move/from16 v15, v16

    .line 227
    invoke-virtual/range {v2 .. v15}, Lcn/sharesdk/tencent/qq/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_1
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
    .locals 5
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

    .line 343
    new-instance p2, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {p2}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 344
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p2, Lcn/sharesdk/framework/b/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    iput-object v1, p2, Lcn/sharesdk/framework/b/b/f$a;->a:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iput-object v1, p2, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    iget-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 356
    iget-object v4, p2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 360
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v4, "title"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 361
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imageLocalUrl"

    .line 362
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "summary"

    .line 363
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->getAppName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "appName"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iput-object v2, p2, Lcn/sharesdk/framework/b/b/f$a;->g:Ljava/util/HashMap;

    return-object p2
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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

    .line 329
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x2

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->b:Z

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 2

    const-string p1, "AppId"

    .line 37
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    const-string v0, "BypassApproval"

    .line 38
    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qq/QQ;->c:Z

    .line 40
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "QZone"

    .line 41
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 43
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qq/QQ;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of QZone, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method public isClientValid()Z
    .locals 2

    .line 86
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/c;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qq/c;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qq/c;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 4

    const-string v0, "app_id"

    const-string v1, "AppId"

    .line 70
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x6

    .line 75
    invoke-virtual {p0, v2, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x18

    .line 77
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/tencent/qq/QQ;->copyNetworkDevinfo(II)V

    .line 78
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/tencent/qq/QQ;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->a:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Try to use the dev info of QZone, this will cause Id and SortId field are always 0."

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x7

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 372
    invoke-super {p0, p1}, Lcn/sharesdk/framework/Platform;->uploadImageToFileServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gez v11, :cond_1

    .line 246
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v11, 0x8

    if-eqz p1, :cond_15

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gez v12, :cond_2

    goto/16 :goto_5

    .line 257
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/tencent/qq/c;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qq/c;

    move-result-object v12

    .line 260
    :try_start_0
    invoke-virtual {v12, p1}, Lcn/sharesdk/tencent/qq/c;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 261
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v13

    if-gtz v13, :cond_3

    goto/16 :goto_3

    .line 268
    :cond_3
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 269
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 270
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    return-void

    .line 275
    :cond_5
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_7

    .line 277
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_6

    .line 278
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1, v12}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v11, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    return-void

    .line 283
    :cond_7
    iget-object v8, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v8}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v8

    if-ne p1, v8, :cond_10

    .line 284
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "icon"

    if-eqz p1, :cond_8

    .line 286
    :try_start_1
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_8
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 288
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_9
    :goto_0
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "iconQzone"

    if-eqz p1, :cond_a

    .line 292
    :try_start_2
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 293
    :cond_a
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 294
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_b
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 296
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_c
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "secretType"

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 302
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserLevel"

    const-string v2, "level"

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_d
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_gender_male"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 306
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_gender_female"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 307
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 308
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "0"

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 309
    :cond_e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 310
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 312
    :cond_f
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "2"

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_10
    :goto_2
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_14

    .line 316
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v9}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 317
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v9}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_11
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v11, v12}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_4

    .line 262
    :cond_12
    :goto_3
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_13

    .line 263
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_13
    return-void

    :catchall_0
    move-exception p1

    .line 322
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 323
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v11, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_14
    :goto_4
    return-void

    .line 250
    :cond_15
    :goto_5
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_16

    .line 251
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/QQ;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "qq account is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_16
    return-void
.end method

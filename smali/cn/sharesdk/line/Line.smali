.class public Lcn/sharesdk/line/Line;
.super Lcn/sharesdk/framework/Platform;
.source "Line.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private a:Lcn/sharesdk/line/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcn/sharesdk/line/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcn/sharesdk/line/Line;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/line/Line;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 28
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    .line 29
    new-instance v0, Lcn/sharesdk/line/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/line/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    iput-object v0, p0, Lcn/sharesdk/line/Line;->e:Lcn/sharesdk/line/b;

    .line 30
    iget-object v1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/line/b;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/line/Line;ILjava/lang/Object;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/line/Line;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/line/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/line/c;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->e:Lcn/sharesdk/line/b;

    invoke-virtual {v0, v1}, Lcn/sharesdk/line/c;->b(Lcn/sharesdk/line/b;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/line/Line;)Lcn/sharesdk/line/c;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/line/Line;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->isClientValid()Z

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 111
    iget-object p2, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_0

    .line 112
    iget-object p2, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Lcn/sharesdk/line/LineClientNotExistException;

    invoke-direct {v0}, Lcn/sharesdk/line/LineClientNotExistException;-><init>()V

    invoke-interface {p2, p0, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v1, :cond_2

    return v0

    .line 121
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object v3, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v3}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/sharesdk/line/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/line/Line;->innerAuthorize(ILjava/lang/Object;)V

    return v2

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->isAuthValid()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcn/sharesdk/line/Line;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/line/Line;->innerAuthorize(ILjava/lang/Object;)V

    return v2

    .line 127
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object p2, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcn/sharesdk/line/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object p2, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/sharesdk/line/c;->a(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object p2, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/sharesdk/line/c;->d(Ljava/lang/String;)V

    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object v0, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/line/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    iget-object v0, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/sharesdk/line/c;->a(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    new-instance v0, Lcn/sharesdk/line/Line$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/line/Line$1;-><init>(Lcn/sharesdk/line/Line;)V

    .line 96
    invoke-virtual {p0}, Lcn/sharesdk/line/Line;->isSSODisable()Z

    move-result v1

    .line 60
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/line/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

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

    .line 256
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcn/sharesdk/line/Line;->e:Lcn/sharesdk/line/b;

    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/line/b;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 145
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ShareParams"

    const/16 v3, 0x9

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 148
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/line/Line;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/line/c;->e(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 157
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :try_start_1
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/line/c;->f(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 172
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 180
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    :try_start_3
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/line/c;->f(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 197
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_3

    .line 203
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "both text and image are null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void

    :catchall_3
    move-exception p1

    .line 182
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
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
    .locals 1
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

    .line 262
    new-instance p2, Lcn/sharesdk/framework/b/b/f$a;

    invoke-direct {p2}, Lcn/sharesdk/framework/b/b/f$a;-><init>()V

    .line 263
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/sharesdk/framework/b/b/f$a;->b:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object p1, p2, Lcn/sharesdk/framework/b/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 270
    iget-object v0, p2, Lcn/sharesdk/framework/b/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p2
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

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

    .line 248
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x2

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcn/sharesdk/line/Line;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 0

    const-string p1, "ChannelID"

    .line 34
    invoke-virtual {p0, p1}, Lcn/sharesdk/line/Line;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/line/Line;->b:Ljava/lang/String;

    const-string p1, "ChannelSecret"

    .line 35
    invoke-virtual {p0, p1}, Lcn/sharesdk/line/Line;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/line/Line;->c:Ljava/lang/String;

    const-string p1, "RedirectUri"

    .line 36
    invoke-virtual {p0, p1}, Lcn/sharesdk/line/Line;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/line/Line;->d:Ljava/lang/String;

    return-void
.end method

.method public isClientValid()Z
    .locals 1

    .line 139
    invoke-static {}, Lcn/sharesdk/line/c;->a()Lcn/sharesdk/line/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/line/c;->e()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 0

    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x7

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 4

    const/16 p1, 0x8

    .line 224
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/line/Line;->a:Lcn/sharesdk/line/c;

    invoke-virtual {v0}, Lcn/sharesdk/line/c;->d()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, p0, p1, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "userId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "nickname"

    const-string v3, "displayName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcn/sharesdk/line/Line;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "icon"

    const-string v3, "pictureUrl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 240
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 241
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcn/sharesdk/line/Line;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v1, p0, p1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

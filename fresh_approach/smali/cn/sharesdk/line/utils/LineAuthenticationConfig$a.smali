.class public Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;
.super Ljava/lang/Object;
.source "LineAuthenticationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/line/utils/LineAuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Landroid/net/Uri;

.field private d:Landroid/net/Uri;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->a:Ljava/lang/String;

    const-string p1, "https://api.line.me/"

    .line 172
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->c:Landroid/net/Uri;

    const-string p1, "https://access.line.me/oauth2/v2.1/login"

    .line 173
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->d:Landroid/net/Uri;

    return-void

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "channelId is empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Landroid/net/Uri;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Landroid/net/Uri;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->c:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Landroid/net/Uri;
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->d:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->e:Z

    return p0
.end method

.method static synthetic f(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->f:Z

    return p0
.end method


# virtual methods
.method public a()Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;
    .locals 1

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->e:Z

    return-object p0
.end method

.method a(Landroid/net/Uri;)Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;
    .locals 1

    const-string v0, "https://access.line.me/.well-known/openid-configuration"

    .line 179
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    invoke-static {p1, v0}, Lcn/sharesdk/line/utils/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method b(Landroid/net/Uri;)Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;
    .locals 1

    const-string v0, "https://api.line.me/"

    .line 185
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 184
    invoke-static {p1, v0}, Lcn/sharesdk/line/utils/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public b()Lcn/sharesdk/line/utils/LineAuthenticationConfig;
    .locals 2

    .line 206
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig;-><init>(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;)V

    return-object v0
.end method

.method c(Landroid/net/Uri;)Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;
    .locals 1

    const-string v0, "https://access.line.me/oauth2/v2.1/login"

    .line 191
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    invoke-static {p1, v0}, Lcn/sharesdk/line/utils/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->d:Landroid/net/Uri;

    return-object p0
.end method

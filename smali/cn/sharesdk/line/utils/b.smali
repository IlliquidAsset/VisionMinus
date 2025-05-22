.class public final Lcn/sharesdk/line/utils/b;
.super Ljava/lang/Object;
.source "LineAuthenticationTestConfigFactory.java"


# direct methods
.method public static a(Ljava/lang/String;Z)Lcn/sharesdk/line/utils/LineAuthenticationConfig;
    .locals 1

    .line 16
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;

    invoke-direct {v0, p0}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;-><init>(Ljava/lang/String;)V

    const-string p0, "https://access.line.me/.well-known/openid-configuration"

    .line 18
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->a(Landroid/net/Uri;)Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;

    move-result-object p0

    const-string v0, "https://api.line.me/"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->b(Landroid/net/Uri;)Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;

    move-result-object p0

    const-string v0, "https://access.line.me/oauth2/v2.1/login"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->c(Landroid/net/Uri;)Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->a()Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->b()Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    move-result-object p0

    return-object p0
.end method

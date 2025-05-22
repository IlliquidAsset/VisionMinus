.class public Lcn/sharesdk/line/utils/f;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final a:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcn/sharesdk/line/utils/f;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 23
    new-array p0, p0, [B

    .line 24
    sget-object v0, Lcn/sharesdk/line/utils/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0xb

    .line 25
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/powervision/base/router/RouterUtil$Login;
.super Ljava/lang/Object;
.source "RouterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/router/RouterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Login"
.end annotation


# static fields
.field public static final CREATE_LOGIN_ACTIVITY_PATH:Ljava/lang/String; = "/login/createLoginActivity"

.field public static final SELECT_COUNTRY_ACTIVITY_PATH:Ljava/lang/String; = "/login/selectCountryActivity"

.field public static final SERVICE_AGREEMENT_ACTIVITY_PATH:Ljava/lang/String; = "/login/serviceAgreementActivity"

.field public static final VERIFY_CODE_ACTIVITY_PATH:Ljava/lang/String; = "/login/inputVerifyCodeActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

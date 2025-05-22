.class public Lcom/powervision/base/resources/GoogleObbResParseUtil;
.super Ljava/lang/Object;
.source "GoogleObbResParseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObbResParseDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/powervision/resources/ObbResourcesUtil;->getObbParseDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

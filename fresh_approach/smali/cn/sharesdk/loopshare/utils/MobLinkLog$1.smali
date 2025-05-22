.class Lcn/sharesdk/loopshare/utils/MobLinkLog$1;
.super Lcom/mob/commons/logcollector/LogsCollector;
.source "MobLinkLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/loopshare/utils/f;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/f;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/MobLinkLog$1;->a:Lcn/sharesdk/loopshare/utils/f;

    invoke-direct {p0}, Lcom/mob/commons/logcollector/LogsCollector;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSDKVersion()I
    .locals 1

    .line 16
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkVersion()I

    move-result v0

    return v0
.end method

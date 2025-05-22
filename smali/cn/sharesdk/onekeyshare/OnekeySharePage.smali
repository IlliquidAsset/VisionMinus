.class public Lcn/sharesdk/onekeyshare/OnekeySharePage;
.super Lcom/mob/tools/FakeActivity;
.source "OnekeySharePage.java"


# instance fields
.field private impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    return-void
.end method


# virtual methods
.method protected final formateShareData(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method protected final getCustomerLogos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customerLogos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method protected final getHiddenPlatforms()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final getShareParamsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final isDialogMode()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->dialogMode:Z

    return v0
.end method

.method protected final isDisableSSO()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    return v0
.end method

.method protected final isSilent()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    return v0
.end method

.method protected final isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z

    move-result p1

    return p1
.end method

.method protected final shareSilently(Lcn/sharesdk/framework/Platform;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeySharePage;->impl:Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareSilently(Lcn/sharesdk/framework/Platform;)V

    return-void
.end method

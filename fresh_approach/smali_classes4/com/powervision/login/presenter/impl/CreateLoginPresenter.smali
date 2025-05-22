.class public Lcom/powervision/login/presenter/impl/CreateLoginPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "CreateLoginPresenter.java"

# interfaces
.implements Lcom/powervision/login/presenter/ICreateLoginPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/login/ui/view/ICreateLoginView;",
        "Lcom/powervision/login/model/ILoginModel;",
        ">;",
        "Lcom/powervision/login/presenter/ICreateLoginPresenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateLoginPresenter"


# instance fields
.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    .line 213
    new-instance v0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$4;

    invoke-direct {v0, p0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$4;-><init>(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)V

    iput-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Lcom/powervision/base/base/BaseView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Landroid/location/LocationListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)Landroid/location/LocationManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static getCountryZipCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 142
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendEmailValidation(Ljava/lang/String;)V
    .locals 4

    .line 176
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$3;

    invoke-direct {v2, p0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$3;-><init>(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)V

    const-string v3, "1"

    invoke-virtual {v0, v3, v1, p1, v2}, Lcom/powervision/base/net/retrofit/Api;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method

.method private sendPhoneValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 155
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    new-instance v1, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$2;

    invoke-direct {v1, p0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$2;-><init>(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/powervision/base/net/retrofit/Api;->sendValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method


# virtual methods
.method public getCountryCode(DD)V
    .locals 6

    .line 199
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 201
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 204
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CreateLoginPresenter"

    .line 205
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getCountryCode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p2, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast p2, Lcom/powervision/login/ui/view/ICreateLoginView;

    invoke-interface {p2, p1}, Lcom/powervision/login/ui/view/ICreateLoginView;->onCountryCodeResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCountryList()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/powervision/base/net/retrofit/Api;->get()Lcom/powervision/base/net/retrofit/Api;

    move-result-object v0

    new-instance v1, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$1;

    invoke-direct {v1, p0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter$1;-><init>(Lcom/powervision/login/presenter/impl/CreateLoginPresenter;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/net/retrofit/Api;->countryList(Lcom/powervision/base/net/retrofit/SimpleObserver;)V

    return-void
.end method

.method public getVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    .line 47
    invoke-static {v0, p1}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->sendEmailValidation(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->sendPhoneValidation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStartLocation(Landroid/content/Context;)V
    .locals 9

    .line 74
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    .line 78
    :cond_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 85
    iget-object v2, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 91
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 92
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BP_PHONE_LATITUDE"

    invoke-virtual {p1, v7, v5}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BP_PHONE_LONGITUDE"

    invoke-virtual {p1, v6, v5}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->getCountryCode(DD)V

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {p1}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->getCountryZipCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->mMvpView:Lcom/powervision/base/base/BaseView;

    check-cast v0, Lcom/powervision/login/ui/view/ICreateLoginView;

    invoke-interface {v0, p1}, Lcom/powervision/login/ui/view/ICreateLoginView;->onCountryCodeResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStopLocation()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.class public Lcom/powervision/login/model/entity/CountryListEntity;
.super Ljava/lang/Object;
.source "CountryListEntity.java"


# instance fields
.field public countryCode:Ljava/lang/String;

.field public defaultCountry:I

.field public enName:Ljava/lang/String;

.field public phoneCode:Ljava/lang/String;

.field public zhName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/powervision/login/model/entity/CountryListEntity;->countryCode:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/powervision/login/model/entity/CountryListEntity;->phoneCode:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/powervision/login/model/entity/CountryListEntity;->enName:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/powervision/login/model/entity/CountryListEntity;->zhName:Ljava/lang/String;

    .line 17
    iput p5, p0, Lcom/powervision/login/model/entity/CountryListEntity;->defaultCountry:I

    return-void
.end method

.method public static getDefaultCountry(Lcom/powervision/base/model/net/CountryListModel;)Lcom/powervision/login/model/entity/CountryListEntity;
    .locals 7

    .line 31
    new-instance v6, Lcom/powervision/login/model/entity/CountryListEntity;

    iget-object v1, p0, Lcom/powervision/base/model/net/CountryListModel;->countryCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/base/model/net/CountryListModel;->phoneCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/powervision/base/model/net/CountryListModel;->enName:Ljava/lang/String;

    iget-object v4, p0, Lcom/powervision/base/model/net/CountryListModel;->zhName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/powervision/login/model/entity/CountryListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public static getLocationCountry(Lcom/powervision/base/model/net/CountryListModel;)Lcom/powervision/login/model/entity/CountryListEntity;
    .locals 7

    .line 41
    new-instance v6, Lcom/powervision/login/model/entity/CountryListEntity;

    iget-object v1, p0, Lcom/powervision/base/model/net/CountryListModel;->countryCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/base/model/net/CountryListModel;->phoneCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/powervision/base/model/net/CountryListModel;->enName:Ljava/lang/String;

    iget-object v4, p0, Lcom/powervision/base/model/net/CountryListModel;->zhName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/powervision/login/model/entity/CountryListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method


# virtual methods
.method public isDefaultCountry()Z
    .locals 1

    .line 21
    iget v0, p0, Lcom/powervision/login/model/entity/CountryListEntity;->defaultCountry:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

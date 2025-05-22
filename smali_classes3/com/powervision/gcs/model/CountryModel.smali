.class public Lcom/powervision/gcs/model/CountryModel;
.super Ljava/lang/Object;
.source "CountryModel.java"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private countryPinyin:Ljava/lang/String;

.field private phoneCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/model/CountryModel;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/powervision/gcs/model/CountryModel;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryPinyin()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/gcs/model/CountryModel;->countryPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/model/CountryModel;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/gcs/model/CountryModel;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/powervision/gcs/model/CountryModel;->countryName:Ljava/lang/String;

    return-void
.end method

.method public setCountryPinyin(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/model/CountryModel;->countryPinyin:Ljava/lang/String;

    return-void
.end method

.method public setPhoneCode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/model/CountryModel;->phoneCode:Ljava/lang/String;

    return-void
.end method

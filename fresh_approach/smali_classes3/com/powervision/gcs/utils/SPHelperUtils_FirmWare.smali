.class public Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;
.super Ljava/lang/Object;
.source "SPHelperUtils_FirmWare.java"


# static fields
.field private static final SHIP_ROCK_MODE:Ljava/lang/String; = "ship_rock_mode"

.field private static spHelper:Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;


# instance fields
.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FIRM_WARE_INFO"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;
    .locals 1

    .line 29
    sget-object v0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->spHelper:Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->spHelper:Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    .line 32
    :cond_0
    sget-object p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->spHelper:Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    return-object p0
.end method


# virtual methods
.method public getBodyDl01()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodydl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyFC()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodywifi"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyMc()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodymcu"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyMergeVersion()Ljava/lang/String;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4bodymer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectionType()Ljava/lang/String;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastType"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteWifi()Ljava/lang/String;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote_Awifi"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemote_A_Dl01()Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote_Adl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemote_A_Mcu()Ljava/lang/String;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote_Amcu"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemote_A_MergeVersion()Ljava/lang/String;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote_A"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemote_B_Dl01()Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote_Bdl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemote_B_Mcu()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote_Bmcu"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemote_B_MergeVersion()Ljava/lang/String;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "w4remote_B"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveBodyDl01(Ljava/lang/String;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sp! saveBodyDl01:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4Firm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodydl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBodyFc(Ljava/lang/String;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodywifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBodyMc(Ljava/lang/String;)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sp! saveBodyMcu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4Firm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodymcu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBodyMergeVersion(Ljava/lang/String;)V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sp! save body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4Firm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4bodymer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveConnectionType(I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "lastType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemoteWifi(Ljava/lang/String;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote_Awifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemote_A_Dl01(Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote_Adl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemote_A_Mcu(Ljava/lang/String;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote_Amcu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemote_A_MergeVersion(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote_A"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemote_B_Dl01(Ljava/lang/String;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote_Bdl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemote_B_Mcu(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote_Bmcu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveRemote_B_MergeVersion(Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "w4remote_B"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

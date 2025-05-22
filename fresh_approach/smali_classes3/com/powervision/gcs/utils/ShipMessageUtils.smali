.class public Lcom/powervision/gcs/utils/ShipMessageUtils;
.super Ljava/lang/Object;
.source "ShipMessageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipMessageUtils"

.field private static utils:Lcom/powervision/gcs/utils/ShipMessageUtils;


# instance fields
.field private changeModeError:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private selfError:Ljava/lang/String;

.field private statusError:Ljava/lang/String;

.field private sysError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    return-void
.end method

.method private getChangeModeError()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->changeModeError:Ljava/lang/String;

    return-object v0
.end method

.method private getDolphinChangeModeError()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->dolphin_changeMode_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getChangeModeError()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDolphinSelfError()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->dolphin_self_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getSelfError()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDolphinStatusError()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->dolphin_status_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getStatusError()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDolphinSysError()Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->dolphin_sys_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getSysError()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/ShipMessageUtils;
    .locals 1

    .line 22
    sget-object v0, Lcom/powervision/gcs/utils/ShipMessageUtils;->utils:Lcom/powervision/gcs/utils/ShipMessageUtils;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/powervision/gcs/utils/ShipMessageUtils;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/gcs/utils/ShipMessageUtils;->utils:Lcom/powervision/gcs/utils/ShipMessageUtils;

    .line 25
    :cond_0
    sget-object p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->utils:Lcom/powervision/gcs/utils/ShipMessageUtils;

    return-object p0
.end method

.method private getMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    .line 84
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 85
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 86
    aget-char v2, p1, v0

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 87
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    aget-object p1, p2, v0

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getStatusError()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->statusError:Ljava/lang/String;

    return-object v0
.end method

.method private getSysError()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->sysError:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getModeErrorMsg()Lcom/powervision/gcs/model/ship/ShipWarning;
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinSelfError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/powervision/gcs/model/ship/ShipWarning;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinSelfError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinChangeModeError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/powervision/gcs/model/ship/ShipWarning;

    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinChangeModeError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinSysError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    new-instance v0, Lcom/powervision/gcs/model/ship/ShipWarning;

    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinSysError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelfError()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->selfError:Ljava/lang/String;

    return-object v0
.end method

.method public setChangeModeError(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->changeModeError:Ljava/lang/String;

    return-void
.end method

.method public setSelfError(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->selfError:Ljava/lang/String;

    return-void
.end method

.method public setStatusError(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->statusError:Ljava/lang/String;

    return-void
.end method

.method public setSysError(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->sysError:Ljava/lang/String;

    return-void
.end method

.method public showChangeModeError()Lcom/powervision/gcs/model/ship/ShipWarning;
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->dolphin_changeMode_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getChangeModeError()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    .line 241
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 242
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 243
    aget-char v3, v1, v2

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    .line 245
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    const/4 v3, 0x2

    aget-object v0, v0, v2

    invoke-direct {v1, v3, v0}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public showSelfError()Lcom/powervision/gcs/model/ship/ShipWarning;
    .locals 6

    .line 217
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getSelfError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$array;->dolphin_self_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getSelfError()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    .line 223
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 224
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 225
    aget-char v4, v2, v3

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2

    .line 227
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    const/4 v2, 0x3

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public showStatusError()Lcom/powervision/gcs/model/ship/ShipWarning;
    .locals 3

    .line 212
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinStatusError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v0, Lcom/powervision/gcs/model/ship/ShipWarning;

    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getDolphinStatusError()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public showSysError()Lcom/powervision/gcs/model/ship/ShipWarning;
    .locals 6

    .line 157
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getSysError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/ShipMessageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$array;->dolphin_sys_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getSysError()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    .line 175
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 176
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 177
    aget-char v4, v2, v3

    const/16 v5, 0x31

    if-ne v4, v5, :cond_4

    .line 179
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-eq v3, v1, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    .line 195
    new-instance v4, Lcom/powervision/gcs/model/ship/ShipWarning;

    aget-object v5, v0, v3

    invoke-direct {v4, v1, v5}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    move-object v1, v4

    goto :goto_1

    .line 192
    :cond_2
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    aget-object v4, v0, v3

    const/4 v5, 0x1

    invoke-direct {v1, v5, v4}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_3
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipWarning;

    const/4 v4, 0x3

    aget-object v5, v0, v3

    invoke-direct {v1, v4, v5}, Lcom/powervision/gcs/model/ship/ShipWarning;-><init>(ILjava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

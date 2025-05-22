.class public Lcom/powervision/gcs/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mToast:Landroid/widget/Toast;

.field private static toast:Landroid/widget/Toast;

.field private static view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultToast()Landroid/widget/Toast;
    .locals 3

    .line 56
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 57
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    sget v1, Lcom/powervision/gcs/R$drawable;->toast_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v1, 0x3c

    const/16 v2, 0x1e

    .line 61
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    sget-object v1, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 64
    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private static getToast(Landroid/content/Context;)V
    .locals 2

    .line 69
    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/gcs/utils/ToastUtil;->toast:Landroid/widget/Toast;

    .line 72
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->view:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, ""

    .line 73
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    sput-object p0, Lcom/powervision/gcs/utils/ToastUtil;->view:Landroid/view/View;

    const v0, 0x102000b

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, -0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->view:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$drawable;->toast_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->view:Landroid/view/View;

    const/16 v0, 0x3c

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    :cond_1
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->toast:Landroid/widget/Toast;

    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method public static longToast(Landroid/content/Context;I)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 97
    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static longToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static shortToast(Landroid/content/Context;I)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static shortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, v0}, Lcom/powervision/gcs/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showDefaultToast(I)V
    .locals 1

    .line 47
    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/powervision/gcs/utils/ToastUtil;->getDefaultToast()Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 51
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    .line 52
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showDefaultToast(Ljava/lang/CharSequence;)V
    .locals 1

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 33
    invoke-static {}, Lcom/powervision/gcs/utils/ToastUtil;->getDefaultToast()Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 36
    :cond_1
    sget-object v0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/powervision/gcs/utils/ToastUtil;->getToast(Landroid/content/Context;)V

    .line 106
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 108
    sget-object p0, Lcom/powervision/gcs/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

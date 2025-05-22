.class public final Lcom/powervision/base/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static centerShortToast(I)V
    .locals 4

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    sget-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 165
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 167
    :cond_1
    sget-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setText(I)V

    .line 168
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 169
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_2

    .line 172
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_2
    return-void
.end method

.method public static centerShortToast(Ljava/lang/String;)V
    .locals 4

    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    sget-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 139
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 141
    :cond_1
    sget-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 143
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_2

    .line 146
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_2
    return-void
.end method

.method public static shortToast(I)V
    .locals 4

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    sget-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 78
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 79
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setText(I)V

    .line 83
    :goto_1
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_2
    return-void
.end method

.method public static shortToast(Ljava/lang/String;)V
    .locals 4

    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    sget-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 51
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_1
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_2
    return-void
.end method

.method public static showDefaultToast(I)V
    .locals 3

    .line 204
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    invoke-static {v2, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_1

    .line 213
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_1
    return-void
.end method

.method public static showDefaultToast(Ljava/lang/String;)V
    .locals 3

    .line 183
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    invoke-static {v2, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_1
    return-void
.end method

.method public static topShortToast(Ljava/lang/String;)V
    .locals 5

    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    sget-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 105
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 106
    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x102000b

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    .line 109
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x11

    .line 110
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p0, 0x14

    const/16 v4, 0xa

    .line 111
    invoke-virtual {v3, p0, v4, p0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string p0, "#FF4040"

    .line 112
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p0, 0x64

    .line 113
    invoke-virtual {v2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 114
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 116
    :cond_1
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    const/16 v2, 0x37

    invoke-virtual {p0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 117
    sget-object p0, Lcom/powervision/base/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_2

    .line 120
    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_2
    return-void
.end method

.class public Lcom/powervision/aircraft/utils/SettingUtils;
.super Ljava/lang/Object;
.source "SettingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getGeneralSettingsView()Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getGeneralSettingsView()Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->addSecondaryFragmentByIndex(ILandroidx/fragment/app/Fragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkValuesArea(F)F
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v4, 0x2e

    .line 75
    invoke-virtual {v3, v4}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 76
    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    if-eqz v1, :cond_1

    neg-float v0, v0

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expfragment:formatResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expfragment error ...   checkValuesArea()... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_2

    const v0, 0x3f7d70a4    # 0.99f

    goto :goto_2

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_3

    const v0, -0x40828f5c    # -0.99f

    :cond_3
    :goto_2
    return v0
.end method

.method public static closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getGeneralSettingsView()Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->setOnCloseClickListener(Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;Lcom/powervision/aircraft/ui/views/GeneralSettingsView;)V

    return-void
.end method

.method public static closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getGeneralSettingsView()Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getGeneralSettingsView()Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->setOnCloseClickListener(Lcom/powervision/aircraft/ui/views/GeneralSettingsView$OnCloseClickListener;Lcom/powervision/aircraft/ui/views/GeneralSettingsView;)V

    :cond_0
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getGeneralSettingsView()Lcom/powervision/aircraft/ui/views/GeneralSettingsView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/GeneralSettingsView;->backToLastFragment(I)V

    return-void
.end method

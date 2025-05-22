.class Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$4;
.super Ljava/lang/Object;
.source "FirmwareDownloadActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;->sort(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/powervision/upgrade/model/entity/FirmwareInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$4;->this$0:Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/powervision/upgrade/model/entity/FirmwareInfo;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)I
    .locals 0

    .line 337
    invoke-virtual {p1}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_model()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/powervision/upgrade/model/entity/FirmwareInfo;->getHardware_model()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 334
    check-cast p1, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    check-cast p2, Lcn/powervision/upgrade/model/entity/FirmwareInfo;

    invoke-virtual {p0, p1, p2}, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity$4;->compare(Lcn/powervision/upgrade/model/entity/FirmwareInfo;Lcn/powervision/upgrade/model/entity/FirmwareInfo;)I

    move-result p1

    return p1
.end method
